class CreateStudyReminders < ActiveRecord::Migration
  def change
    create_table :study_reminders do |t|
      t.string :topic

      t.timestamps
    end
  end
end
