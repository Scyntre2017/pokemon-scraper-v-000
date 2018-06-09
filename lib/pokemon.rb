require "pry"

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

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    pokemon_from_db = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    binding.pry
    Pokemon.new(pokemon_from_db[])
  end

end
