class Article < ActiveRecord::Base
	extend FriendlyId
#	friendly_id :title, use: :slugged
	friendly_id :slug_candidates, use: :slugged

	def duplicates_count
	  Article.where(title: self.title).count + 1 # Model is whatever the model is
	end

	def slug_candidates
    [
      :title,
      [:title, :duplicates_count]
    ]
  	end

end
