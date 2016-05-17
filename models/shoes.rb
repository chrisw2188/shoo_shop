require 'pg'
require_relative '../db/sqlrunner'
class Shoo

attr_reader :name, :address, :quantity, :size

def initialize(options)
  @name = options['name']
  @address = options['address']
  @quantity = options['quantity'].to_i
  @size = options['size'].to_i
end

def save
  sql = "INSERT INTO shoos (
    name, address, quantity, size)
    VALUES (
    '#{name}',
    '#{address}',
    #{quantity},
    #{size}
    )"
    SqlRunner.run(sql)
end

def self.all
  sql = "SELECT * FROM shoos"
  shoos = SqlRunner.run(sql)
  result = shoos.map{ |shoo| Shoo.new(shoo) }
  return result
end 

end