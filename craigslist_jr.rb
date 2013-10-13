require 'sinatra'
require 'active_record'
# require 'sinatra/activerecord'

set :database, "sqlite3:///db/item.db"

class Item < ActiveRecord::Base
end

class Item_O
  attr_accessor :title, :description, :price
  def title
    @title = title
  end
end
