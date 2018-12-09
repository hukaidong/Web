class Mysql < ActiveRecord::Base
  establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "temp_user_for_course",
  :password => "temp_pass_for_course",
  :database => "instacart"
)

end
