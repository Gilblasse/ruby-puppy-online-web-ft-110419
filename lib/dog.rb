class Dog 
  attr_reader :name
  @@all = []
  
  def self.all
    @@all
  end
  
   def self.clear_all
    # @@all = []
    @@all.splice(0,@@all.lenght)
  end
  
  def self.print_all
    @@all.each {|dog| dog.name}
  end
  

  def initialize(name)
    @name = name
    @all << self
  end
  
end