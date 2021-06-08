# frozen_string_literal: true

require 'cucumber'
require 'httparty'
require 'test-unit'

class ReqresPage

  def initialize
    @uri = 'https://reqres.in/api/users'
    @page = '2'
  end

  def request
    @res = HTTParty.get(@uri,
                        query: { page: @page },
                        headers: {
                          'Content-Type' => 'application/json'
                        })
  end

  def body
    @res.body
  end

  def message
    @res.message
  end

  def code
    @res.code
  end
end
