# Test Markdown Formatting

This is a test document to verify our mdformat + stylua integration.

## Unordered List
* Item 1
* Item 2
  * Sub-item 2.1
  * Sub-item 2.2

## Ordered List
3. First item
2. Second item
7. Third item

## Code Examples

Here's some Python code:

```python
def hello(name):
    return f"Hello, {name}!"
```

And here's some Lua code that should be formatted by stylua:

```lua
local   function   test(a,b,c)
  local result={
    first=a,
        second   =   b,
    third=c
  }
      return   result
end

local M   =   {}

M.toggle   =function()
vim.wo.relativenumber   =    not vim.wo.relativenumber
    print("Toggle complete")
  end

return   M
```

## Shell Script

```bash
#!/bin/bash
echo   "Hello"
  for i in 1 2 3; do
echo   "Number: $i"
 done
```

That's all!
