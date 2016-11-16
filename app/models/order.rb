class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  before_validation :set_order_status
  before_save :update_subtotal, :update_tax, :update_shipping, :update_total

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price.to_f) : 0 }.sum
  end

  def shipping
    subtotal * 0.15
  end

  def tax
    subtotal * 0.21
  end

  def total
    subtotal + tax + shipping
  end


private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
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
