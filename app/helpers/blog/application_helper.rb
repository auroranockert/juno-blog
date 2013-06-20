module Blog
  module ApplicationHelper
    def juno_blog_post_url(*args)
      juno_blog_engine.post_url(*args)
    end
    
    def juno_blog_post_path(*args)
      juno_blog_engine.post_path(*args)
    end
  end
end
