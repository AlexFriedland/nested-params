class User < ApplicationRecord
  has_many :addresses
  belongs_to :team

  def addresses_attributes=(addresses_attributes)
    addresses_attributes.each do |address_attributes|
      #create address for user w these attributes
      self.addresses.build(address_attributes)
    end
  end
end
