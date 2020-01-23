class Post < ApplicationRecord
	has_many :comments, :dependent => :delete_all
	has_and_belongs_to_many :tags, :dependent => :delete_all
	belongs_to :user

	validates :title, length: {within: 1..255}, uniqueness: true
	validates :description, length: {minimum: 10}

	def index_info
			{
				id: self.id,
				title: self.title,
				description: self.description,
				user: self.user,
				comments: info(),
				tags: self.tags,
				created_at: self.created_at,
				updated_at: self.updated_at,
			}
	end
	
	def self.list 
		Post.all().preload(:comments,:tags).map do |post|
			post.index_info
		end
	end

	def info
		all_comments = []
		self.comments.each do |comment| 
			if comment.comment_id == nil
				comment_formated = comment.all_info 
				all_comments.push(comment_formated)
			end
		end
		all_comments
	end

end