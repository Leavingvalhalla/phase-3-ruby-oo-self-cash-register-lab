class CashRegister
    attr_accessor :total, :discount
    def initialize(discount=0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        self.total = price * quantity
    end

    def apply_discount
        puts self.discount
        parsed_discount = ((100 - self.discount) / 100)
        puts parsed_discount
        self.total *= parsed_discount
    end



end

cash = CashRegister.new(20)
cash.add_item('thing', 50)
cash.apply_discount
# puts cash.total