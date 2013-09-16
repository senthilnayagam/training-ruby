ENV['RACK_ENV'] = 'test'

require '/home/nithya/training-ruby/nithya/16sep/hello'
require 'test/unit'
require 'rack/test'

class HelloTest < Test::Unit::TestCase

  def test_it_says_hello_world
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get '/hi'
    assert browser.last_response.ok?
    assert_equal 'Hello World!', browser.last_response.body
  end
	
	  def test_it_says_hello_to_a_person
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get '/hello', :name => 'nithya'
    assert browser.last_response.body.include?('nithya')
  end

def test_it_result
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get '/result'
    assert browser.last_response.ok?
		end

end
