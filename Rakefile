# require 'active_record'
# require 'sinatra'
require 'sinatra/activerecord' # Required to db:migrate
require 'sinatra/activerecord/rake' # This require gives 
# us the db:create_migration, db:mmigrate, db:rollback, 
#       db:schema:dump and db:schema:load.
#       It comes from <ruby>/<gems>/sinatra-activerecord-
#       1.2.3/lib/sinatra/activerecord/rake.rb
#       For more information about using active record 
#       without sinatra, google ActiveRecord Without 
#       Rails nolan. Love this tutorial: 
#       http://www.danneu.com/posts/15-a-simple-blog-
#       with-sinatra-and-active-record-some-useful-tools/
require './craigslist_jr.rb' # Behind the scenes name 
# matching occurs between this and db:migrate  

task :tdd_it do
  Rake::Task[:tdd_it].clear
  sh "rspec spec/*"
end

