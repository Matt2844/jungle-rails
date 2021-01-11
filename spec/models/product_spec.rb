require 'rails_helper'

class Product
  attr_accessor :product_name, :product_price, :product_quantity, :product_category

  def initialize(product_name, product_price, product_quantity, product_category)
    @product_name = product_name
    @product_price = product_price
    @product_quantity = product_quantity
    @product_category = product_category
  end
end

RSpec.describe Product, type: :model do
 
  describe 'Validations' do
    before do 
      @product = Product.new(nil, 'price', 'quantity', 'category')
    end
    it 'ensures name is present' do
      expect(@product.product_name).to eq(nil)    
    end
    it 'ensures the price is present' do 
      expect(@product.product_price).to eq('price')
    end
    it 'ensures the quantity  is present' do
      expect(@product.product_quantity).to eq('quantity')
    end
    it 'ensures the category is present' do
      expect(@product.product_category).to eq('category')
    end
  end
end
