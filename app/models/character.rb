# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id")
  belongs_to(:actor)
  # class_name can be ommitted and we will get the same output because its assumes to match the method(movie)
  # we can also just do belongs_to(:movie)

  
  # def movie
  #   key = self.movie_id

  #   matching_set = Movie.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end

  # def actor
  #   key = self.actor_id

  #   matching_set = Actor.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
end
