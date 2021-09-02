+++
title = "Accessing site variables in Hugo render hooks"
author = ["Бадыков Айрат"]
lastmod = 2021-09-02T21:46:27+03:00
draft = false
+++

To access site variables inside of a [Hugo render hook](https://gohugo.io/getting-started/configuration-markup#markdown-render-hooks) it should be prepended with **.Page**.

For example to access **BaseURL** instead of

```nil
{{ .Site.BaseURL }}
```

you shoud use

```nil
{{ .Page.Site.BaseURL }}
```
