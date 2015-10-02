# Think About Time

I opened and read all the time management technique resources listed above, but spent the most time delving into the meditation-based techniques. My mother has been suggesting for years that I try meditating, and just a few weeks ago she told me about the same app (Headspace) that is suggested in the Buffersocial blog, so I’ll take that as a sign that I should go ahead and give it a try. I’ll be happy to share my experiences with the group, if anyone is interested.

I was also intrigued by time-boxing/the Pomodoro technique, which I’ve used in various forms for previous jobs and tasks. Although I wasn’t aware that there was a bunch of research that had been done on the idea of breaking tasks up into time-blocks and mapping/assessing productivity in these blocks, it isn’t surprising to learn that it’s been studied and broken down to optimize productivity, e.g. the Pomodoro technique. I’ve found time boxing techniques very useful, particularly in my last job, which was basically a highly-specialized form of data entry. I really got into mapping my performance over time, and figuring out how efficiently I was working at various components of the job. My wife thinks I’m strange when she looks at the spreadsheets I made mapping my productivity.

My overall plan for Phase 0 time management is to employ time-boxing where appropriate, e.g. in exercises where the objective is not based on working in a pair or group to solve problems. My wife is a yoga instructor and I’ve been going to her classes for almost a year, so I’m looking forward to the benefits of keeping a yoga routine as part of my DBC time management plan. And ditto for the meditation. And of course I'm open to adapting my plan if I find something that works better.

# The Command Line

## 1. What is a shell? what is a bash?

My syntax is probably wrong, but as I understand it, a shell is the command line interface (CLI), run with the Terminal application in Mac, and the PowerShell program in Windows. “bash” is the program running in the terminal/PowerShell.

## 2. What was the most challenging for you in going through this material?

After working through the crash course and watching the video, I feel comfortable with the basic concepts of creating files and directories, opening them, moving them around, and deleting them. I found the concept of the environment variable ($PATH) to be challenging, however, and at this point I would say that I only have a rudimentary understanding of what it is and how to use it effectively and safely. I looked up Path in the manual, searched it on the internet, and everything just seemed to lead to terminology rabbit holes that I could spend hours in (bin, daemon, etc).

Speaking generally, the manual entries sometimes left me more confused about a term or concept than before I looked at the manual. The basic ones (e.g. mkdir) make sense to me, but I feel like I still have a pretty basic comprehension level of most of the more complex terms (e.g. Path, sudo, daemon, bin) at this point. I look forward to getting better at it though, and hopefully repetitive use of CLI will help to familiarize me with the more complex terms and concepts.

## 3. Were you able to successfully use all the commands?

I haven’t used xargs for anything yet, so I guess my answer should be no. And I stayed away from sudo, since I definitely don’t feel like a superuser. I also didn’t use chmod or chown. I guess I still have work to do! :(

## 4. In your opinion, what are the most important commands and arguments to know?

I have a hunch that at this point I’m not even aware of the most important commands, arguments and capabilities of CLI. grep seems like a powerful command. maybe pushd and popd.

## 5. scout’s honor, these are off the top of my head!

pwd = print working directory

ls = list contents of current directory

mv = move file or directory

cd = change directory. just typing cd and hitting return moves you to your home directory.

../ = move up one level in the ‘stack’

touch = make a file

mkdir = make a directory

less = show the contents of a file

rmdir = remove a directory

rm = remove a file from the current directory

help = open a page in the manual (you have to enter a term after help, or man + term in mac)

# Forking and Cloning

**If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?**

To create a new repo in GitHub, go to the ‘+’ icon in the upper right corner, and select ’New repository’ from the dropdown menu.

To fork a repo, go to the desired repo, press the ‘Fork’ tab just below the ‘+’ icon in the upper right corner. Select the desired location to fork the repo at the prompt.

To clone a repo, enter your CLI (Command Line Interface, Terminal for mac), and create a directory where you will store your local version of the GitHub repo. In GitHub, go to the repo that you want to clone, and in the lower right corner of the screen copy the URL beneath the phrase ‘HTTPS clone URL’ to your clipboard. In your CLI, Navigate to that directory in your CLI, and type ‘git clone URL_THAT_YOU_COPIED’ (i.e., paste the URL after git clone). Hit enter, and you should see the repo from GitHub get cloned onto your CLI in the form of a folder in the location you designated.

You would fork a repository instead of creating a new one so that you could grab all the work that had been done before you fork it, and not change the original when you make changes to your forked version.

**What struggles did you have setting up git and GitHub? What did you learn in the process?**

For better or worse, I actually didn’t have much struggle setting up git and GitHub. Becoming familiar with the terminology took some time, and hopefully repetitive use will quickly lead to memorization of the basic processes and commands (branching, cloning, add, commits, push, pull requests, etc).

I learned the basic procedures of what I’m assuming is the most convenient and efficient way for multiple developers to collaborate on projects. Although I don’t know much about what was in use before git and GitHub, I can definitely see the utility and convenience of the Git/GitHub system. Looking forward to pushing more commits soon!

