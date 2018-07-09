require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
     Show.where("rating > ?", 5).first
    # binding.pry
    # show = Show.where("rating = ?", maximum)
    #
    # show.name
  end

  def self.lowest_rating
   Show.minimum(:rating)
  end

  def self.least_popular_show
   Show.where("rating < ?", 5).first
  end

  def self.popular_shows
   Show.where("rating > ?", 5)
  end

  def self.ratings_sum
   Show.sum(:rating)
  end

  def self.shows_by_alphabetical_order

   Show.order(name: :asc)
   # binding.pry
  end

end
