#! /usr/bin/env ruby
require 'rubygems'
require 'mysql2'

client  = Mysql2::Client.new(:host     => "localhost",
                             :username => "root", 
                             :password => "",
                             :flags    => Mysql2::Client::MULTI_STATEMENTS)

