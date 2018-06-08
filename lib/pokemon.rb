class Pokemon
  attr_accessor :name, :id, :type, :db
  
  def initialize(name, id = nil)
    @name = name
    @id = id
    @type = type
    @db = db
  end

end
