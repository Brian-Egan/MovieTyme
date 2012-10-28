# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  genre        :string(255)
#  release_date :date
#  photo        :string(255)
#  actors       :string(255)
#  director     :string(255)
#  running_time :integer
#  rating       :string(255)
#  youtube      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Movie < ActiveRecord::Base
   attr_accessible :actors, :director, :genre, :name, :photo, :rating, :release_date, :running_time, :youtube, :user_id
  belongs_to :user
  mount_uploader :photo, PosterUploader
end
