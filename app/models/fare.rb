class Fare < ActiveRecord::Base
  belongs_to :cab
  belongs_to :query
  attr_accessible :phone_number, :reporter, :verified, :cab_id, :query_id

  monetize :price_cents
end
