require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/categories_controller.rb')
require_relative('controllers/items_controller.rb')
require_relative('controllers/vendors_controller.rb')

get '/' do
  erb( :index )
end
