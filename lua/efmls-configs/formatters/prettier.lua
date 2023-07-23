local fs = require('efmls-configs.fs')

local formatter = 'prettier'
local command = string.format(
  '%s --stdin --stdin-filepath ${INPUT} ${--range-start:charStart} '
    .. '${--range-end:charEnd} ${--tab-width:tabSize} ${--use-tabs:!insertSpaces}',
  fs.executable(formatter, fs.Scope.NODE)
)
local root_markers = {
  ".prettierrc",
  ".prettierrc.json",
  ".prettierrc.js",
  ".prettierrc.yml",
  ".prettierrc.yaml",
  ".prettierrc.json5",
  ".prettierrc.mjs",
  ".prettierrc.cjs",
  ".prettierrc.toml",
}

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = root_markers,
}
