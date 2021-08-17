# tcp_server.rb
require 'socket'
server = TCPServer.new 5678

while session = server.accept
  session.puts "HTTP/1.1 200\r\nContent-Type: text/html\r\n\r\n\Hello world! This time is #{Time.now}"
  session.close
end
