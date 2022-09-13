class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMINNAME"], password: ENV["ADMINPASSWORD"]
  def show
    @productCount = Product.count
    @productCategoryCount = Category.count
  end
end
