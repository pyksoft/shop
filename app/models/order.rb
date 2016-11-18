class Order < ApplicationRecord
  # belongs_to :order_status
  has_one :cart
  has_many :order_items

  def self.search(search)
    if search
      where('name ILIKE :search', search: "%#{search}%")
    else
      order(sort_column + ' ' + sort_direction)
    end
  end

private
  def set_order_status
    self.order_status_id = 1
  end


end
