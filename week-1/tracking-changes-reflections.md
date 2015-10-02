# How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes developers' lives easier because the organization of the GitHub/CLI system is logical and easy to use. Once developers are familiar with the system, everyone can easily view the history and development of a project, and no one can overwrite someone else's work.

# What is a commit?

A commit is a command to take a ‘snapshot’ of code (or files) before they are added to the repository. Commit is basically a ‘save this version’ command. A commit is accompanied by a message, in quotations, describing what you did in the commit (e.g., git commit -m “description of commit”)

# What are the best practices for commit messages?

The first line starts with a capitalized word, and is short (50 characters or less).

It is followed by blank line, then a more detailed explanatory text, if necessary. Think about the subject and body of an email for a comparison.

# What does the HEAD^ argument mean?

This refers to the last commit. HEAD refers to the commit that you are currently in.

# What are the 3 stages of a git change and how do you move a file from one stage to the other?

3 stages of a git add:
* git add
* git commit
* git push

A file is moved from one stage to another via the CLI.

# Write a handy cheatsheet of the commands you need to commit your changes?

git add
git commit -m "your message here"
git push origin branch_name
git checkout master

# What is a pull request and how do you create and merge one?

A pull request is a summary of the changes made in your local workspace compared to the version on GitHub. You create a pull request by first pushing your branch file up to GitHub. Then, in GitHub, look at your fork, and you should see the branch you uploaded. Click on it. Then click on the 'pull request' tab on the right side of the screen.

Make sure that your are comparing your fork master and branch, and not devbootcamp's (or wherever you forked the master from).

Click the green 'create pull request' button.

Click the green 'merge pull request' button. In normal working conditions, it's not good practice to merge your own pull requests, but rather to have someone else check over your work and do it.

# Why are pull requests preferred when working with teams?

It promotes accountability and double-checking work, which will hopefully help reduce bugs, typos, and make the entire group's workflow more efficient.