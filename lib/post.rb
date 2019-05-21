class Post 
attr_accessor :name, :author
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if @author
      @author.name
    end
  end
end