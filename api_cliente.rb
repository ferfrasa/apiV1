#puts "Ingrese su nombre"
puts "Ingrese el cuerpo de la publicacion"
#name =  gets.chomp 
post =  gets.chomp 
require 'faraday' 

client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('55365018690302f1436702b3eb96b484')
end

response = client.post do |req|
    req.url '/api/v1/posts'#url para pasar el dato
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"user":{"body": "post"}}' #pasa parametros
end 
=begin
response = client.post do |req|
    req.url '/api/v1/users'#url para pasar el dato
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"user":{"name": "'+name+'"}}' #pasa parametros
end 
=end

require 'oj'
puts Oj.load(response.body)  #imprima la respuesta de body
puts response.status

#55365018690302f1436702b3eb96b484