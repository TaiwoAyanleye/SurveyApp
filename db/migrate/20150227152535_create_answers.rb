class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true
      t.references :participant, index: true
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :answers, :questions
    add_foreign_key :answers, :participants
  end
end
