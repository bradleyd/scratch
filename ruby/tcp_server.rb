require 'socket'               # Get sockets from stdlib


server = TCPServer.new 2000
loop do
  Thread.start(server.accept) do |client|
    client.puts "Hello !"
    puts client.read
    client.close
  end
end
