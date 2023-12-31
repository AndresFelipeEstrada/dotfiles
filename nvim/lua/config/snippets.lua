local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets(nil, {
  all = {
    snip({
      trig = "log",
      name = "console.log",
      dscr = "console.log snippet",
    }, {
      text("console.log("),
      insert(1),
      text(")"),
    }),
  },
})
