require 'gserver'

class LoggingServer < GServer
	def initialize
		super(12345)
	end
	
	def serve(client)
		client.puts response
	end
	
	def response
		"Hello world!"
	end
	
end

ls = LoggingServer.new
ls.start.join