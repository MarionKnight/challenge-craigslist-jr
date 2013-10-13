$LOAD_PATH.unshift(File.expand_path('.'))
require 'capybara/rspec'
require 'craigslist_jr'
require 'shoulda-matchers'

Capybara.app = Sinatra::Application
Capybara.app_host = 'http://127.0.0.1:9393'

# The below are copied from our thundercats
# capybara setup but complain that the ActiveRecord
# Connection is not established
# RSpec.configure do |config|
#   config.before do
#     Item.destroy_all
#     # User.destroy_all
#     # Comment.destroy_all
#   end
# end

include Rack::Test::Methods

def app
  Sinatra::Application
end

# RSPEC TESTS:: TEST CODE VS APP CODE

# I think that this test checks to be sure that the 
# required ruby programs include a get '/'. In this case,
# craigslist_jr.rb; shotgun doesn't even have to be 
# running for it to pass
describe 'Rspec tests for route code' do
  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end
end

# CAPYBARA TEST:: TEST CODE VS SERVER

# This test also doesn't require the / page to exist on the server
feature 'User data entry and basic page text' do
  scenario "Home page contains Craigslist Jr" do
    visit '/'

    expect(page).to have_content("Craigslist Jr")
  end
end
