class Pokemon
  attr_accessor :name, :id, :type, :db

  @@all = []

  def initialize(name, id = nil, type = nil, db = nil)
    @name = name
    @id = id
    @type = type
    @db = db
    @@all << self
  end

  def self.save(id, name, type)
    self.new(name, id, type)
  end

end
