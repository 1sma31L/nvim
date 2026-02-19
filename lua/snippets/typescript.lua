local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('clg', {
    t 'console.log(',
    i(1, 'value'),
    t ');',
  }),
  s(
    'fn',
    fmt('const {} = ({}) => {{\n  {}\n}};', {
      i(1, 'name'),
      i(2, 'args'),
      i(3),
    })
  ),

  s(
    'afn',
    fmt(
      [[
const {} = async ({}) => {{
  try {{
    {}
  }} catch (error) {{
    console.error(error);
  }}
}};]],
      {
        i(1, 'name'),
        i(2, 'args'),
        i(3),
      }
    )
  ),

  s(
    'imp',
    fmt('import {} from "{}";', {
      i(1, 'name'),
      i(2, 'module'),
    })
  ),

  s(
    'rfc',
    fmt(
      [[
import React from "react";

const {} = () => {{
  return (
    <div>
      {}
    </div>
  );
}};

export default {};]],
      {
        i(1, 'ComponentName'),
        i(2),
        i(1),
      }
    )
  ),

  s(
    'us',
    fmt('const [{}, set{}] = React.useState({});', {
      i(1, 'state'),
      i(2, 'State'),
      i(3, 'initialValue'),
    })
  ),
}
