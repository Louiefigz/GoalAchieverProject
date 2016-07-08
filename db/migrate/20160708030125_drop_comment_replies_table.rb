class DropCommentRepliesTable < ActiveRecord::Migration
  def up
      drop_table :comment_replies
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
