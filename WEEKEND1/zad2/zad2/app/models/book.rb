class Book < ActiveRecord::Base
	validates :isbn,   :isbn_format => true
	validates :title, presence: true
	belongs_to :author
end

