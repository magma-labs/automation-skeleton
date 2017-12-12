require 'spec_helper'

RSpec.describe 'Google' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_new" do
    @driver.get "https://www.google.com.mx/?gfe_rd=cr&dcr=0&ei=KMUpWsvZMu_Z8gfqm7jIDw"
    @driver.find_element(:id, "lst-ib").click
    @driver.find_element(:id, "lst-ib").clear
    @driver.find_element(:id, "lst-ib").send_keys "firefox"
    @driver.find_element(:xpath, "//div[@id='rso']/div/div/div/div/div/h3").click
    (@driver.find_element(:xpath, "//div[@id='outer-wrapper']/main/div/div[2]/div[2]/div/header/h1").text).should == "El nuevo Firefox"
  end
end
