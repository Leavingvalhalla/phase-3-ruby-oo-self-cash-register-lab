class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end

    def add_item(title, price, quantity=1)
        quantity.times {self.items.push(title)}
        self.total += price * quantity
        self.last_item_price = price * quantity
    end

    def apply_discount
        if self.discount != 0
            parsed_discount = ((100.to_f - self.discount.to_f) / 100.to_f)
            self.total *= parsed_discount
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_item_price
    end

end

cash = CashRegister.new(20)
cash.add_item('thing', 50)
cash.apply_discount
puts cash.total