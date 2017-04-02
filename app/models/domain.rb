require 'whois'

class Domain < ApplicationRecord
	validates_format_of :name, :with => /\A(([a-zA-Z]{1})|([a-zA-Z]{1}[a-zA-Z]{1})|([a-zA-Z]{1}[0-9]{1})|([0-9]{1}[a-zA-Z]{1})|([a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]))\.([a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3})$\Z/

  def populate
  	name =  self.name
  	record = Whois.whois(name)
  	self.whois_response = record
  end
end	