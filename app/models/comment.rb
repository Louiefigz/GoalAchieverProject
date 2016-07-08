class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :author, class_name: "User", foreign_key: :author_id
  belongs_to :parent,  class_name: "Comment" #-> requires "parent_id" column
  has_many   :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy


  def comment=(attributes)
     Comment.create(attributes)
  end

  def reply=(attributes)

    Comment.create(attributes)
  end


end
