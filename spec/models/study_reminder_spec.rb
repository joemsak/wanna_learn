require 'spec_helper'

describe StudyReminder do
  it "sets reminders for topics" do
    StudyReminder.set_for('spanish')
    StudyReminder.where('topic = ?', 'spanish').should_not be_empty
  end
end
