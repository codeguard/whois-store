require 'test_helper'

class DomainTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "populate should return something" do
    domain = Domain.new(name: "foo.com", whois_response: "WHOIS DATA")
    assert_not_nil domain.populate 
  end
end
