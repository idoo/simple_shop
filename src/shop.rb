#!/usr/bin/env ruby

require_relative 'shop/pricing_rules'
require_relative 'shop/checkout'

co = Shop::Checkout.new(Shop::PRICING_RULES)
# items = ['AP1', 'AP1', 'FR1', 'AP1']
# items.each { |item| co.scan(item) }
# price = co.total
# puts price