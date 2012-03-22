class User < ActiveRecord::Base
  has_many :study_reminders

  def add_study_reminder(topic)
    study_reminders.create!(:topic => topic)
  end

  def studying_topics
    StudyReminder.where('user_id = ?', id).collect(&:topic)
  end
end
