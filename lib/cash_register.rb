require 'pry'

class CashRegister

  attr_accessor :total, :discount, :quantity, :items, :price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(item, price, quantity = 1)
   @last_item = price*quantity
   self.total+=@last_item
   quantity.times do
     items.push(item)
   end
 end

  def apply_discount
    self.total = total * ((100 - discount) * 0.01)
    if self.discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
     @last_item_discounted = @last_item - @last_item*(@discount/100.0)
     self.total -= @last_item_discounted
  end






end
