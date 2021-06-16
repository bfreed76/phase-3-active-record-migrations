require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require

# put the code to connect to the database here

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3", #what time of sql is this type of db?
    database: "db/artists.sqlite" #will create db if not found
)

require_relative "../artist.rb"
