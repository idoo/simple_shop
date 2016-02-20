require 'spec_helper'
# require_relative 'shop/pricing_rules'
# require_relative 'shop/checkout'

describe 'Shop' do
  let(:co) { Shop::Checkout.new(Shop::PRICING_RULES) }
  let(:items1) { ['FR1', 'AP1', 'FR1', 'CF1'] }
  let(:items2) { ['FR1', 'FR1'] }
  let(:items3) { ['AP1', 'AP1', 'FR1', 'AP1'] }

  it 'should calculate correct' do
    items1.each { |item| co.scan(item) }
    expect(co.total).to eql(19.34)
  end

  it 'should calculate correct' do
    items2.each { |item| co.scan(item) }
    expect(co.total).to eql(3.11)
  end

  it 'should calculate correct' do
    items3.each { |item| co.scan(item) }
    expect(co.total).to eql(16.61)
  end
end
