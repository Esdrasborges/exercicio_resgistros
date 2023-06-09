
require 'httparty'
require 'json'
class Exercise
    include HTTParty
    base_uri 'https://jsonplaceholder.typicode.com/users'
    
    def names
        response = HTTParty.get('https://jsonplaceholder.typicode.com/users') 
        name = JSON.parse(response.body) 
            name.each do |value|  
                puts value
            end
    end

    
end

record = Exercise.new
puts record.names
