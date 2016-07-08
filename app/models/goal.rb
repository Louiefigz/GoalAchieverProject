class Goal < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal_categories
  belongs_to :parent,  class_name: "Goal"
  has_many :subgoals, class_name: "Goal", foreign_key: :parent_id, dependent: :destroy




end
