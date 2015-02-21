# _rackhtml.rb

# simple ruby rack server i use to test my htmls
# (when opening in browser is prolemeatic for paths and such)
# specify path to html relative to script as parameter

require 'rack'

if !ARGV[0] 
  puts "Provide path as argument pls"
  exit
end

puts "Loading #{ARGV[0]}..."

app = Proc.new do |env|
  ['200', {'Content-Type' => 'text/html'}, File.open(ARGV[0], File::RDONLY)]
end

Rack::Handler::WEBrick.run app
