require "http/server"

target_ip = ENV["TARGET_IP"]?
raise "TARGET_IP env var not set" unless target_ip
command = "ping -c2 -w5 #{target_ip}"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  if system(command)
    context.response.print "UP"
  else
    context.response.print "DOWN"
  end
end

puts "Pinging #{target_ip} with command `#{command}`"
server.bind_tcp "0.0.0.0", 8080
server.listen
