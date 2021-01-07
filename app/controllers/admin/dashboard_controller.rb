class Admin::DashboardController < ApplicationController
  def show
    @product_num = Product.all.length
    @product_category = Category.all.length
  end

  


end
