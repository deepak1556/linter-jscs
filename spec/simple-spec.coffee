atom.packages.enablePackage('linter')
console.log atom.packages.getLoadedPackages()

LinterJscs = require '../lib/linter-jscs'

describe 'LinterJscs', ->
  [editor] = []

  beforeEach ->
    editor = atom.workspace.openSync 'simple-spec.coffee'
    atom.config.set 'linter-jscs.jscsExecutablePath', '../node_modules/jscs/bin'

  it 'constructs with an atom editor', ->
    console.log atom
    linterJscs = new LinterJscs(editor)
