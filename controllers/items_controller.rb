require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative("../models/category.rb")
require_relative("../models/item.rb")
require_relative("../models/vendor.rb")


# the index
get "/items" do
  @items = Item.all()
  erb(:index)
end

# # new
# get "/items/new" do
#   erb(:new)
# end
# #
# # # show - i.e. an individual item
# get "/items/:id" do
#   @items = Item.find(params[:id] )
#   erb(:show)
# end
#
# # create
# post "/items" do
#   item = Item.new(params)
#   item.save()
#   redirect to "/items"
# end
# #
# # # edit
# get "/sitems/:id/edit" do
# @itemss = Item.find(params[:id])
# erb(:edit)
# end
#
# # update
# post "/items/:id/edit" do
# updated_item= Item.new(params)
# updated_item.update
# redirect to "items/#{updated_item.id}"
# end
#
# # destroy
# post "/items/:id/delete" do
#   item = Student.find(params[:id] )
#   item.delete()
#   redirect to "/items"
# end
