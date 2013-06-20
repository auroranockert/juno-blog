require 'redcarpet'
require 'rouge/plugins/redcarpet'

module Juno
  module Blog
    class HTMLWithRouge < Redcarpet::Render::HTML
      include Rouge::Plugins::Redcarpet
    end

    class Post < ActiveRecord::Base
      set_table_name "juno_blog_posts"

      attr_accessible :title, :body, :author, :author_id, :published_at, :tags, :slug, :legacy_link

      validates_presence_of :body, :title

      belongs_to :author, :class_name => "User"

      has_many :comments, :class_name => "Juno::Blog::Comment"

      scope :published, where("published_at <= ?", Time.now)

      def author_name
        self.author.try(:name) or 'Unknown'
      end

      def content
        Redcarpet::Markdown.new(HTMLWithRouge, {
          :fenced_code_blocks => true,
          :tables => true,
          :autolink => true,
          :underline => true
        }).render(self.body)
      end

      def to_param
        self.slug
      end
    end
  end
end