require 'rubygems'
require 'em-http'
 
HOST, PORT = '0.0.0.0', 8000
 
EventMachine.run do
 
    puts '='*80, "Connecting to websockets server at ws://#{HOST}:#{PORT}", '='*80
     
    http = EventMachine::HttpRequest.new("ws://#{HOST}:#{PORT}/websocket").get :timeout => 0
     
    http.errback do
        puts "oops, error"
    end
     
    http.callback do
        puts "#{Time.now.strftime('%H:%M:%S')} : Connected to server"
    end
     
    http.stream do |msg|
        puts "Recieved: #{msg}"
    end
     
    http.disconnect do
        puts "Oops, dropped connection?"
    end
 
end
