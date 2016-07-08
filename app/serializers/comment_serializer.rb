class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :post_id, :author_id, :author, :kids, :parent_id, 

  def kids

    kids = []
    comment = Comment.find(self.id)
    kids = comment.replies.where.not(parent_id:  nil).pluck(:id)
    kids
  end

  def author

    author = {}
    display_author = User.find(self.author_id)
    author[:name] = display_author.name
    author[:email]= display_author.email
    author
  end
  # has_one :post
end
