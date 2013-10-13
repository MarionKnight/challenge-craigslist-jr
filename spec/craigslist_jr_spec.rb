require 'rspec'
require_relative '../craigslist_jr.rb'

describe "craigslist_jr data structures" do
  it "can have posts with items for sale" do
    item = Item_O.new
  end
  it "can have an item with a title" do
    item = Item_O.new
    item.title = "Flying horse for sale"
  end
  it "can have an item with a description" do
    item = Item_O.new
    item.description = "Direct lineage traceable to pegasus"
  end
  it "can have an item with a price" do
    item = Item_O.new
    item.price = "$10"
  end
end



