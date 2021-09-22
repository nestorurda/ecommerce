require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'La Categoria no puede tener 2 padres' do
    category1 = Category.create(id:13,name: 'Walkie Talk3')
    category2 = Category.create(id:14,name: 'Walkie Talk2')
    category3 = Category.create(id:1,name: 'Walkie Talk',category_id:13)
    # category4 = Category.create(id:1,name: 'Walkie Talk',category_id:14)
    expect(category4).to_not be false
  end

end
