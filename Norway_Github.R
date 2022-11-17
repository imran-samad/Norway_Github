# important packages
# quarto: advanced R Markdown
# janitor: data wrangling
# dplyr::glimpse: better than summary()
# skimr::skim: better than summary()
# nwniar::vis_miss: visualise missing data
# pivot longer/wider: short vs long format like melt and dcast
# stylr: to style code
# lintr: to check consistency with tidyverse style
# Hint: Keep various scripts in a project for different taasts

#https://biostats-r.github.io/biostats/github/1_Git_Tutorial.html#connect-rstudio-and-github
library(usethis)

use_git_config(
  user.name = "imran-samad", 
  user.email = "imransamad7@gmail.com"
) # do this only once

usethis::create_github_token() # use this when your token expires. If you save the token in this script, it will be invalidated by git after pushing
gitcreds::gitcreds_set()# use this when you have generated a new token. A token provides temporary access (30 days) to your account

git_vaccinate()# use this only once. This command creates a list of extensions that are never committed

usethis::use_git()# initialises a Git repository and adds important files to .gitignore. If user consents, it also makes an initial commit.

use_github()# this copies the local repo to your main github profile

git_default_branch_rename() # use this only the first time to change the 'master' branch to 'main' branch
git_default_branch_configure(name = "main") # this will ensure all following repos have the primary branch named as 'main'
# NEVER upload data to github
# Keep commits simple. Commits are local and can be pushed all at once.
# files >100MB are not committable to git
# if something is screwed in the local repo, clone it and burn down the main repo. Not elegant, but works always
# Branches help secure main code and allow you to experiment with the copied code (branch)
# git branch -d new_test_branch Do this on terminal

# Forking repo from others to work on their code i.e., collaboration
library(usethis)
create_from_github("jaumeabb/Finse", fork=T, destdir = "C:/Users/imran/My Drive/Conferences_Presentations_Courses/Bergen 2022 Data Science/Course")

# If you have deleted a file accidentally, don't commit your deletion!
# Committed changes however can be uncommitted using undo last commit 'git reset HEAD-1', where 1 is the number fo commits (without pull)

# REPRODUCIBLE WORKFLOWS

# targets package: pipelining tool useful for codes with large runtimes
library(usethis)
use_course("biostats-r/targets_workflow_svalbard", destdir = "C:/Users/imran/My Drive/Conferences_Presentations_Courses/Bergen 2022 Data Science/Course")

# Tips and tricks for writing neat code
create_from_github("DrMattG/LNOpenLab", fork=T, destdir = "C:/Users/imran/My Drive/Conferences_Presentations_Courses/Bergen 2022 Data Science/Course")

# Best practices for reporting scientific results
