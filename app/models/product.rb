class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :variations, dependent: :destroy
  has_many :color,through: :variations
  has_many :size,through: :variations
  has_many :order_items
  has_many :orders, through: :order_items

  def self.stock_items
    b = []
    a = Product.all
    a.each do |x|
      x.variations.each do |y|
        if y.stock > 0
        b.push(y)
        end
      end
     
  end
  return b
  end

end
