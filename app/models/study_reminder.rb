class StudyReminder < ActiveRecord::Base
  class << self
    def set_for(topic)
      create!(:topic => topic)
    end
  end
end
