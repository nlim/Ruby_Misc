require './setup'

WebMock.stub_request(:post, 'www.example.com').
  with(:body => 'abc')

uri = URI.parse("http://www.example.com/")
req = Net::HTTP::Post.new(uri.path)
req['Content-Length'] = 3
Net::HTTP.start(uri.host, uri.port) {|http|
  http.request(req, "abc")
}
