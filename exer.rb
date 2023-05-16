require 'HTTParty'
class Exercicio
    include HTTParty
    base_uri 'https://jsonplaceholder.typicode.com/users'

    def initialize()
        @options = {}
    end
    
    def nomesemordem
        self.class.get('/users', @options)
    end
end

registro = Exercicio.new
puts registro.nomesemordem
