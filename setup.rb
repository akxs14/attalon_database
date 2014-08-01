#! /usr/bin/env ruby
require 'rubygems'
require 'mysql2'

client  = Mysql2::Client.new(:host     => "localhost",
                             :username => "root", 
                             :password => "",
                             :flags    => Mysql2::Client::MULTI_STATEMENTS)

client.query("DROP DATABASE IF EXISTS attalon_production;")
client.query("CREATE DATABASE attalon_production;")

client.query("USE attalon_production;")

['create_schema.sql', 'seed_db.sql'].each do |file|
  statements = File.read(file).split(';')

  statements.each do |statement|
    puts statement
    result = client.query(statement + ";")
    puts result
  end
end

client.close
