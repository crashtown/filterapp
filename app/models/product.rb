class Product < ApplicationRecord
  scope(:product_name, -> (prod_name) { where("LOWER(name) like ?", "%#{prod_name.downcase}%")})
  scope(:description, -> (descript) { where("LOWER(description) like ?", "%#{descript.downcase}%")})
  scope(:price, -> (price) { where price: price })
end
