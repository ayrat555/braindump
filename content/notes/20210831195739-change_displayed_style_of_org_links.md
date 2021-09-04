+++
title = "Changing displayed style of org links"
author = ["Бадыков Айрат"]
draft = false
+++

```elisp
(org-link-set-parameters "id"
                         :face 'org-roam-header-line)
```

In the code snippet above replace **id** with a type of link that you want to change (for example, **http**), instead of **'org-roam-header-line** you can set any face.

You can see all available links with **M-x list-faces-display**


## The Problem {#the-problem}

I spent a couple of hours trying to solve this problem with **font-lock-add-keywords** function.

The initial problem I was solving is setting a custom style for my org roam links. Because they're not distinguishable from other types of links.

The stackoverflow answer that saved me is [customize-color-of-internal-links-orgmode](https://stackoverflow.com/questions/19057881/customize-color-of-internal-links-orgmode)
