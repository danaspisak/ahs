class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :contact_id
      t.integer :question_id
      t.integer :selection
      t.integer :followup_truth
      t.integer :followup_number
      t.text :followup_text
      t.text :content
      t.string :type

      t.timestamps null: false
    end
  end
end
