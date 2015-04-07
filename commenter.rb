require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/commenter.db")

class Note
include DataMapper::Resource
  property :id, Serial
  property :content, Text, :required => true
  property :complete, Boolean, :required => true, :default => false
  property :created_at, DateTime
  property :updated_at, DateTime
end

DataMapper.finalize.auto_upgrade!

# get '/' do
#   @notes = Note.all :order => :id.desc
#   @title = 'All Notes'
#   erb :home
# end


# get '/hello/:name' do
#   "Hello there, #{params[:name]}."
# end
# get '/' do
#   "Sup, World!"
# end
#
# get '/about' do
#   'A little about me.'
# end
#
# get '/form' do
#   erb :form
# end
#
#
# post '/form' do
#   "You said '#{params[:message]}'"
# end
