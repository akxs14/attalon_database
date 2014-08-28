#! /usr/bin/env ruby
require 'rubygems'
require 'mysql2'

database = "cdb_aed9a5130e"

client  = Mysql2::Client.new(:host     => "eu-cdbr-azure-west-a.cloudapp.net", #"localhost",
                             :username => "bc90fbb14b922e",# "root", 
                             :password => "ec4774d0", #""
                             :flags    => Mysql2::Client::MULTI_STATEMENTS)

# client.query("DROP DATABASE IF EXISTS #{database};")
# client.query("CREATE DATABASE #{database};")

client.query("USE #{database};")

['create_schema.sql', 'seed_db.sql'].each do |file|
  statements = File.read(file).split(';')

  statements.each do |statement|
    puts statement
    result = client.query(statement + ";")
    puts result
  end
end

client.close
