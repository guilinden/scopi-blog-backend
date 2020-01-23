class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :text, presence: true
  belongs_to :comment, optional: true
  has_many :comments, :dependent => :destroy


  def all_info
    {
      id: self.id,
      text: self.text,
      user: self.user,
      linked_comments: self.comment_info
    }
  end

  def comment_info
      recursive_list = []
      linked_comments = Comment.all.where("comment_id = #{self.id}")
      linked_comments.each do |c|
        c = c.all_info
        recursive_list.push(c)
      end
      recursive_list
	end
end