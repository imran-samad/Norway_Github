#https://biostats-r.github.io/biostats/github/1_Git_Tutorial.html#connect-rstudio-and-github
library(usethis)
use_git_config(
  user.name = "imran-samad", 
  user.email = "imransamad7@gmail.com"
)
usethis::create_github_token()
gitcreds::gitcreds_set()
#cb4a382e6b09fca4959f392d59194d8485dfaa11
#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
git_vaccinate()

usethis::use_git()

use_github()
