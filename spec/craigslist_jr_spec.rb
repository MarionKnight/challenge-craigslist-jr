require 'rspec'
require_relative '../CraiglistJR.rb'

describe "CraiglistJR data structures" do
  it "can have posts with items for sale" do
    item = Item.new
  end
  it "can have an item with a title" do
    item = Item.new
    item.title = "Flying horse for sale"
  end
  it "can have an item with a description" do
    item = Item.new
    item.description = "Direct lineage traceable to pegasus"
  end
  it "can have an item with a price" do
    item = Item.new
    item.price = "$10"
  end
end



