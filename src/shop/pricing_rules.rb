module Shop
  PRICING_RULES = {
    FR1: {
      name: 'Fruit tea',
      price: 3.11,
      special_price: nil,
      buy_one_get_one: true,
      promo_count: 0
    },
    AP1: {
      name: 'Apple',
      price: 5.00,
      special_price: 4.50,
      buy_one_get_one: false,
      promo_count: 3
    },
    CF1: {
      name: 'Coffee',
      price: 11.23,
      special_price: nil,
      buy_one_get_one: false,
      promo_count: 0
    }
  }
end
