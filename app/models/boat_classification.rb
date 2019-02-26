class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.first_five
    all.limit(5)
  end

  def self.dinghy
    where(length < 20)
  end

  def self.ship
    where(length > 20)
  end

  def self.last_three_alphabetically
    all.order(name: :desc).limit(3)
  end

end
