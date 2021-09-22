https://morning-springs-54794.herokuapp.com/ 


-6.- Explicar en el readme los scopes para que solo aparezca una variante del producto y si tiene scope
Para que el product aparezca en el index esta de tener stock > 0, se creo un array de objetos que cumplan con esa regla.

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

-Como crear un cupon de redes sociales - Solo Readme
desde consola|| Coupon.create(discount:'50%',code:'BLXW-ZZ',kind:'personal',amount:50)
-Como crear un cupon personal - Solo Readme
desde consola|| Coupon.create(discount:'50%',code:'BLXW-ZZ',kind:'personal',amount:50,user_id:1)