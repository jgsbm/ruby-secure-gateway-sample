# coding: utf-8
require 'benchmark'
require 'bundler'
Bundler.require

get '/' do
  host = ENV["CLOUD_HOST"]
  port = ENV["CLOUD_PORT"]
  if host == nil || port == nil
    host = "localhost"
    port = 3306
  end
  logger.info("Database is conencted as #{host}:#{port}")
  @result = Benchmark.realtime do
    client = Mysql2::Client.new(
  		:host => ENV["CLOUD_HOST"],
		  :port => ENV["CLOUD_PORT"],
		  :username => "root",
		  :password => "password",
		  :database => "sgtest")
    @data = client.query("select * from sample;")
  end
  erb :index
end
