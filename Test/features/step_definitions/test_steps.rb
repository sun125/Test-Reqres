# frozen_string_literal: true

require 'test/unit/assertions'
require 'cucumber'
require 'httparty'
require "#{File.dirname(__FILE__)}/../../features/support/pages/reqres"

Given(/^I set the params and headers for Get User Details$/) do
  @api = ReqresPage.new
end

When(/^I send GET HTTP requests for User$/) do
  @api.request
end

Then(/^I should get the user details in the body$/) do
  p @api.body
end

And(/^I should get response message as "([^"]*)"$/) do |message|
  @api.assert_equal(message, @api.message)
end

And(/^I should have response code as "([^"]*)"$/) do |code|
  @api.assert_equal(code, @api.code)
end