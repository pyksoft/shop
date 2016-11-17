class Order < ApplicationRecord
  belongs_to :order_status
  has_one :cart
  before_validation :set_order_status
  before_save :update_subtotal, :update_tax, :update_shipping, :update_total

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

  def update_subtotal
    self[:subtotal] = cart.subtotal
  end

  def update_shipping
    self[:shipping] = shipping
  end

  def update_tax
    self[:tax] = tax
  end

  def update_total
    self[:total] = total
  end

end
