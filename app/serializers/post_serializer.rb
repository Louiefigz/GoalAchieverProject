class PostSerializer < ActiveModel::Serializer
  has_one :user, serializer:UserPostSerializer
  attributes :id, :name, :content
  has_many :kids

  def kids
    kids = []
    post = Post.find(self.id)
    kids = post.comments.where.not(parent_id:  nil).pluck(:id)
    kids
  end
end
