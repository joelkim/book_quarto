return {
  ['mdsample'] = function(filename)
    local template_str = [[
::: {layout-ncol=2}

```{.markdown filename="%s 코드"}
{{< include ../%s >}}
```

::: {.markdown-render}
:::: {.markdown-render-header}
%s 변환결과
::::
:::: {.markdown-render-container}
{{< include ../%s >}}
::::
:::

:::
    ]]

    local filename_str = pandoc.utils.stringify(filename)
    local result = template_str:format(filename_str, filename_str, filename_str, filename_str)
    local md = pandoc.Para(result)

    return md
  end
}
