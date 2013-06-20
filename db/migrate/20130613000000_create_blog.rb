class CreateBlog < ActiveRecord::Migration
  def change
    create_table "juno_blog_posts" do |t|
      t.string   :title
      t.text     :body
      t.text     :html
      t.integer  :author_id

      t.datetime :published_at
      t.string   :tags
      t.string   :slug
      t.string   :legacy_link

      t.timestamps
    end
  end
end
