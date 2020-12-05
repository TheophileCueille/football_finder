class Compet < ApplicationRecord
    extend Geocoder::Model::ActiveRecord
    validates :address, uniqueness: true
    geocoded_by :address
    after_validation :geocode
end
