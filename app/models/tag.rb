class Tag < ApplicationRecord
	validates :name, presence: true, length: {maximum: 20}, uniqueness: true
	has_and_belongs_to_many :posts

	def index_info
		{
			name: self.name,
			id: self.id
		}
	end

	def self.list 
		Tag.all.map do |tag|
			tag.index_info
		end
	end

end
