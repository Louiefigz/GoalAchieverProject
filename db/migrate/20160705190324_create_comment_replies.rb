class CreateCommentReplies < ActiveRecord::Migration
  def change
    create_table :comment_replies do |t|
      t.string :content
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
