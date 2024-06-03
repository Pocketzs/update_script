require 'time'
require 'securerandom'

# Array of commit messages with emojis and descriptions
commit_messages = [
  "✨ Add new feature",
  "🐛 Fix bug",
  "📚 Update documentation",
  "💄 Improve UI",
  "🔧 Update configuration",
  "📝 Update comments",
  "🔒 Enhance security",
  "🚀 Improve performance",
  "🎨 Refactor code",
  "✅ Add tests"
]

# Select a random commit message from the array
commit_message = commit_messages.sample

# Get the current date and time
current_time = Time.now

# Generate a unique identifier for this update
unique_id = SecureRandom.uuid

# File path for the update file
update_file_path = 'update.md'

# Create update.md file if it doesn't exist
unless File.exist?(update_file_path)
  File.open(update_file_path, 'w') do |file|
    file.puts "# Updates"
  end
  `git add #{update_file_path}`
end

# Append the last update timestamp and unique identifier to the update.md file
File.open(update_file_path, 'a') do |file|
  file.puts "1. Last update: #{current_time} (ID: #{unique_id})"
end

# # Configure local Git user information
# git_username = 'YourUsername' # Replace with your Git username
# git_email = 'youremail@example.com' # Replace with your Git email

# `git config user.name "#{git_username}"`
# `git config user.email "#{git_email}"`

# Stage the changes
`git add #{update_file_path}`

# Commit the changes with a random commit message and current timestamp
commit_message_with_time = "#{commit_message} - #{current_time}"
`git commit -m "#{commit_message_with_time}"`

# Pull the latest changes from the remote repository to ensure the local repository is up to date
`git pull origin main`

# Push the changes to the remote repository
`git push origin main`

puts "Changes committed with message: #{commit_message_with_time} (ID: #{unique_id})"