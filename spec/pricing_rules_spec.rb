require 'spec_helper'

describe 'Shop' do
  it 'have pricing rules' do
    expect { Shop::PRICING_RULES }.to_not raise_error
  end
end
