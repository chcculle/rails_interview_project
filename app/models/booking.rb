class Booking < ActiveRecord::Base
  belongs_to :listing

  def self.listings_booked_during_timeframe(inquiry_start, inquiry_end)
    Booking.where.not('time_start >= ? OR  time_end <= ?', inquiry_end, inquiry_start).pluck(:listing_id)
  end

end
