Juno::Blog::Engine.routes.draw do
  root :to => 'juno/blog/posts#index'

  match '/:slug(.:format)' => 'juno/blog/posts#show', :defaults => { :format => 'html' }, :as => :post
end
