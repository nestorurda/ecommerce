class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :discount
      t.string :code
      t.string :kind
      t.integer :amount
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
