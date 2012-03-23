require 'spec_no_rails_helper'
require 'study_reminder'

describe StudyReminder do
  it "sets reminders for topics" do
    StudyReminder.set_for('spanish')
    StudyReminder.where('topic = ?', 'spanish').should_not be_empty
  end
end
