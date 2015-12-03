require 'bundler' #require the bundler
Bundler.require #bundle stuff


# establishing connection to postgresql db
ActiveRecord::Base.establish_connection(
  :database => 'bee_crypt_bzz',
  :adapter => 'postgresql'
)

# basic template routes

get '/' do
  # get some resource
  return {:hello => 'world'}.to_json
end
