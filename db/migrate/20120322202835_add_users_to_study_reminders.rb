class AddUsersToStudyReminders < ActiveRecord::Migration
  def change
    add_column :study_reminders, :user_id, :integer

  end
end
