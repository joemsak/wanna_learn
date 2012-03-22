require 'spec_helper'

describe User do
  describe "#studying_topics" do
    it "returns topics the user wants to learn" do
      user = User.create!
      user.add_study_reminder('spanish')
      user.studying_topics.should include('spanish')
    end
  end
end
