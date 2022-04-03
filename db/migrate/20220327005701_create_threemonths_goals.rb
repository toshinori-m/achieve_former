class CreateThreemonthsGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :threemonths_goals do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
    add_index :threemonths_goals, [:user_id, :created_at]
    add_foreign_key :threemonths_goals, :users, column: :sender_id
    add_foreign_key :threemonths_goals, :users, column: :recipient_id
  end
end
