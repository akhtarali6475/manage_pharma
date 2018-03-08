class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  before_create :set_order_status
  before_save :update_subtotal
  enum status: [:ongoing, :placed, :completed]

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

	private
  def set_order_status
    self.status = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
