class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.integer :contact_id
      t.time :interview_time
      t.date :interview_date
      t.string :zone
      t.integer :user_id
      t.integer :survey_id

      t.timestamps null: false
    end
  end
end
