###
# grunt-svg2storeicons
# https://github.com/pem--/grunt-svg2storeicons
#
# copyright (c) 2013 pierre-eric marchandet (pem-- <pemarchandet@gmail.com>)
# licensed under the mit licence.
###

'use strict'

assert = require 'assert'
fs = require 'fs'
path = require 'path'

EXPECTED_DEST = path.join 'tmp', 'default_options'
PROFILES = (require '../lib/profiles') prjName: 'Test'

EXPECTED_FILES = []
for key of PROFILES
  dir = PROFILES[key].dir
  for icon in PROFILES[key].icons
    EXPECTED_FILES.push path.join EXPECTED_DEST, dir, icon.name

describe 'Default options', ->
  it 'should create all icons for each default profiles', ->
    for file in EXPECTED_FILES
      assert.equal true, (fs.statSync file).isFile()
