class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :question_id
      t.boolean :correct
      t.integer :participant_id

      t.timestamps null: false
    end
  end
end
