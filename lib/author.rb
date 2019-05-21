class Author 
  attr_accessor :name, :posts
  @@all_posts = []
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(arg)
    @posts << arg
    @@all_posts << song
    post.author = self
  end
  
  def add_post_by_title(name)
    add_post(Post.new(name))
  end
  
  def self.post_count
    @@all_posts.count 
  end
    
end 