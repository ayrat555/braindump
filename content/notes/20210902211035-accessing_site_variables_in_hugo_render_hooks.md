+++
title = "Accessing site variables in Hugo render hooks"
author = ["Бадыков Айрат"]
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

<https://discourse.gohugo.io/t/render-hook-templates-and-site-variables/33128>
