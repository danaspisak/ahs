class AddInterviewIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :interview_id, :integer
  end
end
