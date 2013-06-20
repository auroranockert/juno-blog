module Juno
  module Blog
    class PostsController < ApplicationController
      # GET /posts
      # GET /posts.json
      # GET /posts.atom
      def index
        @posts = Post.published

        respond_to do |format|
          format.html
          format.json { render json: @posts }
          format.atom
        end
      end

      # GET /posts/1
      # GET /posts/1.json
      def show
        @post = Post.published.find_by_slug(params[:id])

        respond_to do |format|
          format.html
          format.json { render json: @post }
        end
      end
    end
  end
end
