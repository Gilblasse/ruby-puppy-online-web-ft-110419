class Dog 
  attr_reader :name
  @@all = []
  
  def self.all
    @@all
  end
  
   def self.clear_all
    # @@all = []
    @@all.splice(0,@@all.length)
  end
  
  def self.print_all
    @@all.each {|dog| puts dog.name}
  end
  

  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
end