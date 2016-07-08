# class PostCommentSerializer < ActiveModel::Serializer
#   attributes  :kids
#
#
#   def kids
#     kids = []
#     loop = Comment.all
#     kids = loop.where(parent_id:  nil).pluck(:id)
#     kids
#   end
#
# end
