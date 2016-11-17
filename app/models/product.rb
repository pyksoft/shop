class Product < ApplicationRecord
has_many :photos
has_many :order_items
validates :name, presence: true
validates :price, presence: true


  def self.search(search)
    if search
      where('name ILIKE :search', search: "%#{search}%")
    else
      order(sort_column + ' ' + sort_direction)
    end
  end



   def self.order_by_name
       order(:name)
   end

end
