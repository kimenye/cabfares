class Cab < ActiveRecord::Base
  attr_accessible :company, :name, :phone_number, :reg, :verified
end
