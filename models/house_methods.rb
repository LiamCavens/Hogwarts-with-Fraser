require_relative('../db/sql_runner')

class House

    attr_reader :id, :house_name

    def initialize(options)
        @id = options["id"].to_i
        @house_name = options["house_name"]
        
    end

    def save()
        sql = "INSERT INTO houses
         (house_name)
          VALUES
           ($1) 
            RETURNING *"
        values = [@house_name]
        house_info = SqlRunner.run(sql, values)
        @id = house_info.first()["id"].to_i
    end

    def self.all()
        sql = "SELECT * FROM houses"
        houses = SqlRunner.run(sql)
        result = houses.map {|house| House.new(house)}
        return result
    end

    def self.find(id)
        sql = "SELECT * FROM houses WHERE id = $1"
        values = [@id]
        house = SqlRunner.run(sql, values)
        return result = House.new(house.first)
    end

    def self.delete_all()
        sql = "DELETE FROM houses"
        SqlRunner.run(sql)
    end

    def delete()
        sql = "DELETE FROM houses WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end
    
end