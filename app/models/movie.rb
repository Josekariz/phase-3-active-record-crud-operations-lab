class Movie < ActiveRecord::Base

  def self.create_with_title(title)
    self.create(title: title)
  end
  
  def self.first_movie
    self.all.first
  end

  def self.last_movie
    self.all.last
  end

  def self.movie_count
    self.all.count
  end
  
  def self.find_movie_with_id(id)
    self.all.find(id)
  end
  
  def self.find_movie_with_attributes(attributes)
    self.all.find_by(attributes)
  end

  def self.find_movies_after_2002
    self.where('release_date > 2002')
  end

  def update_with_attributes(att)
    self.update(att)
  end
  
  def self.update_all_titles(title)
    Movie.update(title: title)
  end
  def self.delete_by_id(id)
    self.delete(id)
  end
  def self.delete_all_movies
    self.all.destroy_all
  end
end