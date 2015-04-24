class Listing < ActiveRecord::Base
  has_many :bookings

  def self.available_listings(inquiry_start, inquiry_end)

    # determine how many spots per listing are booked during this timeframe
    spots_taken_per_listing = Hash.new 0
    Booking.listings_booked_during_timeframe(inquiry_start, inquiry_end).each do |listing|
      spots_taken_per_listing[listing] += 1
    end

     #collect available listings.  start with those not booked during this timeframe
    available_listings = Listing.where.not(:id => spots_taken_per_listing.keys).to_a

    #for those listings that are booked during this timeframe determine if there is room and add to available listings
    Listing.where(:id => spots_taken_per_listing.keys).each do |listing|
      if spots_taken_per_listing[listing.id] < listing.available
        available_listings << listing
      end
    end
    available_listings
  end


end




