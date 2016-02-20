module Shop
  class Checkout
    def initialize(rules)
      @basket = Hash.new {|h,k| h[k] = 0 }
      @rules = rules
    end

    def scan(item)
      @basket[item] += 1
    end

    def total
      calculate_total
    end

    private

    def calculate_total
      @basket.map{ |item, count|
        calculate_price(item, count)
      }.reduce(0, :+)
    end

    def calculate_price(item, count)
      product = @rules[item.to_sym]

      return 0 if product.nil?
      if product[:buy_one_get_one]
        buy_one_get_one_price(product[:price], count)
      elsif product[:promo_count] > 0 && count >= product[:promo_count]
        product[:special_price] * count
      else
        product[:price]
      end
    end

    def buy_one_get_one_price(price, count)
      count.fdiv(2).ceil * price
    end
  end
end