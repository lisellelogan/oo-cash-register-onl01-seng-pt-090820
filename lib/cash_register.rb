require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, additional_quantity=1)
    total_added_items = price * additional_quantity
    self.total += total_added_items
    additional_quantity.times do
      self.items << item
    end
    self.last_transaction = price * additional_quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = (self.total * ((100 - self.discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
