class Pokemon
  attr_accessor :name, :id, :type, :db

  def initialize(name, id = nil, type = nil, db = nil)
    @name = name
    @id = id
    @type = type
    @db = db
  end

  def self.save(name, type, db)

  end

end
