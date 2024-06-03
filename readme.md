# Update Script for GitHub Repository

This repository contains a Ruby script and a GitHub Actions workflow that automatically updates the `update.md` file with a timestamp and a unique identifier every hour. The script also commits and pushes these updates to the repository with a random commit message.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [GitHub Actions Workflow](#github-actions-workflow)
- [Contributing](#contributing)
- [License](#license)

## Overview

The purpose of this project is to automate the updating of the `update.md` file in the repository. The Ruby script appends the current timestamp and a unique identifier to the file, commits the changes, and pushes them to the remote repository.

## Features

- Generates random commit messages with emojis.
- Appends the current date, time, and a unique identifier to `update.md`.
- Automatically commits and pushes changes to the repository.
- Runs every hour using GitHub Actions.

## Prerequisites

- Ruby (version 3.2.2 or higher)
- Git
- GitHub repository with appropriate permissions to create and manage secrets

## Setup

1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
   ```

2. **Add Secrets to GitHub**:
   - Go to your GitHub repository settings.
   - Navigate to "Secrets and variables" > "Actions".
   - Add `GIT_USERNAME` and `GIT_EMAIL` as secrets with your Git username and email respectively.

## GitHub Actions Workflow

The GitHub Actions workflow is set up to run the `update_script.rb` script every hour. It checks out the repository, sets up Ruby, and runs the script to update `update.md`, commit the changes, and push them to the remote repository.

### Environment Variables

- `GITHUB_TOKEN`: Automatically provided by GitHub Actions for authentication.
- `GIT_USERNAME`: Your GitHub username (stored as a secret).
- `GIT_EMAIL`: Your GitHub email (stored as a secret).

### `update_script.rb`

This Ruby script appends the current timestamp and a unique identifier to `update.md`, commits the changes, and pushes them to the remote repository with a random commit message.


### `.github/workflows/update.yml`

The workflow file that triggers the `update_script.rb` script every hour,


## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request. We welcome all improvements, suggestions, and bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
