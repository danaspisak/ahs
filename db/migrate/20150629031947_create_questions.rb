class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.integer :order
      t.integer :suborder
      t.text :content
      t.string :response_type

      t.timestamps null: false
    end
  end
end
