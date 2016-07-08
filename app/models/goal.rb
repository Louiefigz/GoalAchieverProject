class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :subgoals, class_name: "Goal", foreign_key: :parent_id, dependent: :destroy
end
