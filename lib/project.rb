class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end

=begin

def add_backer(backer)              #accepts a Backer as an argument and stores it in a backers array
    @backers << backer
    backer.backed_projects << self  #also adds the project to th backer's backed_projects array
                                    #Is backed_projects array being called on backer argument then added to the instance of the class project class?
end
                                    #value of self  the type of method it's in, (class or instance). In an instance method it refers to an instance of the class.
                                    #inside of a class method, self refers to the class itself.

=end