class Mysql < ActiveRecord::Base
  establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "kaidong",
  :password => "mypass",
  :database => "testdb"
)

end
