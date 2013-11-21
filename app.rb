require 'sinatra'
require 'sinatra/json'
require 'metainspector'

set :show_exceptions, false

get '/scrape' do
  inspector = MetaInspector.new(params[:url], allow_redirections: :all, warn_level: :warn)
  data      = inspector.to_hash

  if inspector.ok?
    json data
  else
    status 500
    json :errors => inspector.exceptions.uniq {|e| e.to_s}
  end
end
