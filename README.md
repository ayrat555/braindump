# Ayrat's braindump [![Build](https://github.com/ayrat555/braindump/actions/workflows/gh-pages.yml/badge.svg)](https://github.com/ayrat555/braindump/actions/workflows/gh-pages.yml)

This is my personal collection of notes. Check it out at [Ayrat's Braindump](https://braindump.badykov.com/).

[cortex-dark](https://github.com/ayrat555/cortex-dark) theme is used for this static site generated with [Hugo](https://gohugo.io/).

## How it works
The [notes](notes/) folder contains [Org mode](https://orgmode.org) files that use [Org-roam](https://www.orgroam.com) to link to each other. I edit them locally using Emacs. On push Emacs is installed on CI, [ox-hugo](https://ox-hugo.scripter.co) generates hugo pages from the org files.
