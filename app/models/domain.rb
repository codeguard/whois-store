require 'whois'

class Domain < ApplicationRecord
  def populate
  	name =  self.name
  	record = Whois.whois(name)
  	self.whois_response = record
  end
end	