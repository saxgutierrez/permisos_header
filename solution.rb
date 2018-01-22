require 'sinatra'
#require 'sinatra/json'

get '/' do 

@solicitud = request.env["HTTP_PERMISO"].to_s

	if @solicitud && @solicitud == "soy-un-token-secreto" 
	@mensaje = "Si lo logramos!"
	else
	@mensaje = "Sin Permiso"
	end

erb :index

#puts "#{@solicitud}" #cuando se utiliza esto no permite imprimir los demás
#content_type :text
#return JSON.pretty_generate(request.env) #con esto si deja mostrar la consulta en la consola curl y el localhost, sale en la consola 
#[HTTP_PERMISO]="soy-un-token-secreto"

end




#curl -XGET -H "permiso: soy-un-token-secreto" "http://localhost:4567/" 
#se hace copia ese código desde la carpeta curl en CMD
