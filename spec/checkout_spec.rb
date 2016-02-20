require 'spec_helper'

describe 'Checkout' do

  let(:co) { Shop::Checkout.new(Shop::PRICING_RULES) }

  describe '#scan' do
    it 'should have #scan' do
      expect(co).to respond_to(:scan)
    end
  end

  describe '#total' do
    it 'should have #total calculator' do
      expect(co).to respond_to(:total)
    end
  end
end
