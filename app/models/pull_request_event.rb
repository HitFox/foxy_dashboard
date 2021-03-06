class PullRequestEvent < GithubEvent
  def branch
    @data[:payload][:pull_request][:title]
  end

  def body
    @data[:payload][:pull_request][:body]
  end

  def commits
    @data[:payload][:pull_request][:commits]
  end

  def deletions
    @data[:payload][:pull_request][:deletions]
  end

  def additions
    @data[:payload][:pull_request][:additions]
  end

  def changed_files
    @data[:payload][:pull_request][:changed_files]
  end

  def pr_number
    @data[:payload][:pull_request][:number]
  end

  def json
    super.merge(
      {
        branch: branch,
        body: body,
        commits: commits,
        deletions: deletions,
        additions: additions,
        changed_files: changed_files,
        pr_number: pr_number
      }
    )
  end
end
