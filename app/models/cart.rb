class Cart < ApplicationRecord


    def self.add_product(product_id, quantity)
        # cli = Order.find_by(user_id:current_user)
        logger.info (current_user.id)
        product = Product.find(product_id)
        if product && (product.variations[0][:stock] > 0)
          OrderItem.create(Orderproduct_id: product.variations[0][:id], quantity: quantity, price: product.variations[0][:price])
        end
    end

    
    
   
    
  
end
