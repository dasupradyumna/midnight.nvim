---------------------------------- DEFAULT TREESITTER HIGHLIGHTS -----------------------------------

return {
  -- default
  ['@error'] = { link = 'Error' },
  ['@field'] = { link = 'Field' },
  ['@variable'] = { link = 'Identifier' },

  -- json
  ['@label.json'] = { link = 'Parameter' },
}
