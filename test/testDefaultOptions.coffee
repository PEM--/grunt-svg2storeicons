###
# grunt-svg2storeicons
# https://github.com/PEM--/grunt-svg2storeicons
#
# Copyright (c) 2013 Pierre-Eric Marchandet (PEM-- <pemarchandet@gmail.com>)
# Licensed under the MIT licence.
###

'use strict'

assert = require 'assert'
fs = require 'fs'
path = require 'path'
PROFILES = require '../tasks/profiles.coffee'

EXPECTED_DEST = path.join 'tmp', 'default_options'

EXPECTED_FILES = []
for key of PROFILES
  dir = PROFILES[key].dir
  for icon in PROFILES[key].icons
    EXPECTED_FILES.push path.join EXPECTED_DEST, dir, icon.name

describe 'Default options', ->
  it 'should create all icons for each default profiles', ->
    for file in EXPECTED_FILES
      assert.equal true, (fs.statSync file).isFile()
