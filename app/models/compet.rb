class Compet < ApplicationRecord
    geocoded_by :address, latitude: :lat, longitude: :lon
    after_validation :geocode

end
