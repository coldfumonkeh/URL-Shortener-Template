require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require File.join(File.dirname(__FILE__), 'environment')

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
  DataMapper.finalize
end

# Add the configure development block here


error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error - ' + env['sinatra.error'].message
end

helpers do  
    include Rack::Utils  
    alias_method :h, :escape_html
       
    # Add helper methods here
       
end


# Add your routes here