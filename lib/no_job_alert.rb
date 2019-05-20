# slack notify
require 'slack/incoming/webhooks'
# github contribution_count
require 'contribution_count'
message = 'work!!!'
# your_github_name
github_name = "emono"
# judge contribution
if !ContributionCount.new(github_name).contribution_today?
  # slack notify
  Slack::Incoming::Webhooks.new(ENV['SLACK_WEBHOOK_URL']).post(message)
end