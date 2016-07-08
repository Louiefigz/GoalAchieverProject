class GoalSerializer < ActiveModel::Serializer
  attributes :id, :content, :completed, :goal_category_id, :parent_id, :kids
  has_one :user

  def kids

    kids = []
    comment = Goal.find(self.id)
    kids = comment.subgoals.where.not(parent_id:  nil).pluck(:id)
    kids
  end

end
