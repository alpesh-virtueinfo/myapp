require 'rubygems'
require 'em-websocket'
 
HOST, PORT = '0.0.0.0', 8000
 
EventMachine.run do
 
    puts '='*80, "Starting websockets server at socket://#{HOST}:#{PORT}", '='*80
     
    EventMachine::WebSocket.start(:host => HOST, :port => PORT) do |socket|
     
        socket.onopen do
            puts "#{Time.now.strftime('%H:%M:%S')} : Client connected", '-'*80
            socket.send "Hello client!"
            EventMachine.add_periodic_timer(1) { socket.send '.' } # Tick...
        end
         
        socket.onclose do
            puts "#{Time.now.strftime('%H:%M:%S')} : Client disconnected", '-'*80
        end
         
        socket.onmessage do |msg|
            puts "Recieved message: #{msg}"
            socket.send "Pong: #{msg}"
        end
     
    end
 
end
