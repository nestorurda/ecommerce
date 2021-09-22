class Category < ApplicationRecord
  has_and_belongs_to_many :products
  
  def self.main_category
      where(category_id:nil)
  end

  def self.sub_category
    where.not(category_id:nil)
  end

  def self.all_categories
     self.all()
  end

  


end
