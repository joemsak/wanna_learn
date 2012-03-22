When /^I wanna learn (.*)$/ do |topic|
  @user = User.create!(:email => 'joe@joesak.com')
  @user.study_reminders.create!(:topic => topic)
end

Then /^the I should have a reminder to learn spanish$/ do
  @user.study_reminders.collect(&:topic).should include('spanish')
end
