require 'shoulda-matchers'
require 'active_record'
require 'rspec'
require_relative '../craigslist_jr.rb'

# Todo: rewrite this test to make it general for any DB adapter and database location
describe "items table exists for sqlite3 adapter" do
  it "items table exists for sqlite3 adapter" do
    ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./db/item.db")
    class Items < ActiveRecord::Base; end
    Items.table_exists?.should == true
  end
end

# Ideally would like to test schema here too... 

