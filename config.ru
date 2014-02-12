ENV['RACK_ENV'] ||= 'development'

require 'rubygems'

if ENV['RACK_ENV'] == 'production'
  require 'newrelic_rpm'
end

use Rack::Static,
  :urls => ["/img", "/js", "/css"],
  :root => "public"

app = lambda do |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
end

run app
