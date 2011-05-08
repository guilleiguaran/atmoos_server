class Subscription < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :station_id
  validates_uniqueness_of :email, :scope => [:station_id]
end
