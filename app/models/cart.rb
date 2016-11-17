class Cart < ApplicationRecord
  has_many :order_items
  before_save :update_subtotal, :update_tax, :update_shipping, :update_total

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price.to_f) : 0 }.sum
  end

  def shipping
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price * 0.15).round(2) : 0 }.sum
  end

  def tax
    (subtotal * 0.21).round(2)
  end

  def total
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price * 1.15 * 1.21).round(0) : 0 }.sum
  end


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
