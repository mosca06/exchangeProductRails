class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def products
    @user = User.find(params[:id])
    @products_with_suppliers = ::FetchUsersProductsQuery.call
  end
end