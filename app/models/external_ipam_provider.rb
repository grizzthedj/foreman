class ExternalIpamProvider < ApplicationRecord
  has_many :subnets
end