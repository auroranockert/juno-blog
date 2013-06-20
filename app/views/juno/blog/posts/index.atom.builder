atom_feed do |feed|
  feed.title "Aventine"
  feed.updated @posts.first.updated_at

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title post.title
      entry.content post.html, :type => 'html'

      entry.author do |author|
        author.name 'Jens Nockert'
      end
    end
  end
end