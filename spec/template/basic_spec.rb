require 'spec_helper'

RSpec.describe 'Super Test' do
  it "test_new" do
    # Generated code goes here
    @driver.get "https://www.google.com.mx"
    expect(true).to be_truthy
  end
end
