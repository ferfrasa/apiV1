require 'faraday' 

client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
end

response = client.post do |req|
    req.url '/api/v1/users'#url para pasar el dato
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"user":{"name": "testuser"}}' #pasa parametros
end 

require 'oj'
puts Oj.load(response.body)  #imprima la respuesta de body
puts response.status