require 'rest-client'

search = ARGV[0]
response = RestClient.get 'http://bing.com/search', {params: {q: search}}

puts "Response Code: #{response.code}"

puts "Response Cookies:"
puts "#{response.cookies}"

puts "Response Headers:"
puts "#{response.headers}"

puts "Response Body:"
puts "#{response.body}"