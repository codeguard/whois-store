require 'test_helper'

class DomainTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "populate should return something" do
    domain = Domain.new(name: "foo.com", whois_response: "WHOIS DATA")
    assert_not_nil domain.populate 
  end

  # incorrect domain name raises error
  test "populate with invalid domain name sholud raise error" do
  	domain = Domain.new(name: "foocom", whois_response: "WHOIS DATA")
  	assert_raise do
  		domain.populate
  	end
  end

  # This test is intended to fail to indicate that future work is needed to treat these domains equally
  test "These domains should be treated equally" do
  	domain = Domain.new(name: "foo.com", whois_response: "WHOIS DATA")
  	domain2 = Domain.new(name: "www.foo.com", whois_response: "WHOIS DATA")
  	assert_equal(domain.name,domain2.name)
  end

  # check regex if valid domain name is given 
  test "invalid domain name is entered" do
  	domain = Domain.new(name: "foocom", whois_response: "WHOIS DATA")
  	assert_no_match("/^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,}$/", domain.name, "Incorrect format for domain name")
  end
end
