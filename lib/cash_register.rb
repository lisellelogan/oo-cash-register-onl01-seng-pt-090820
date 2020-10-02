require 'pry'

class CashRegister
  attr_accessor :total

  def initialize(total=0)
    @total = total
  end

  def discount
    @total
  end

  def add_item(item, price, additional_item_price=0)
    total_added_items = price + additional_item_price
    @total += total_added_items
  end

end
