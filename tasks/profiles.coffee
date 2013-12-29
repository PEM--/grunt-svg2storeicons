###
# grunt-svg2storeicons
# https://github.com/PEM--/grunt-svg2storeicons
#
# Copyright (c) 2013 Pierre-Eric Marchandet (PEM-- <pemarchandet@gmail.com>)
# Licensed under the MIT licence.
###

'use strict'

###
# All profiles for every app stores covered by PhoneGap are stored hereafter
# The name of the icon is used as the final name under rendered icon.
# The size represents a squared icon and is provided as-is to avoid name
#  as the naming conventions from PhoneGap may vary and produce weird
#  resolution schemes.
###
module.exports = {
  # Default
  'default':
    dir: '',
    icons: [
      { name: 'icon.png', size: 128 }
    ]
  # iOS (Retina and legacy resolutions)
  'ios':
    dir: 'Resources/icon/'
    icons: [
      { name: 'icon-40.png', size: 40 }
      { name: 'icon-40@2x.png', size: 80 }
      { name: 'icon-50.png', size: 50 }
      { name: 'icon-50@2x.png', size: 100 }
      { name: 'icon-57.png', size: 57 }
      { name: 'icon-57@2x.png', size: 114 }
      { name: 'icon-60.png', size: 60 }
      { name: 'icon-60@2x.png', size: 120 }
      { name: 'icon-72.png', size: 72 }
      { name: 'icon-72@2x.png', size: 144 }
      { name: 'icon-76.png', size: 76 }
      { name: 'icon-76@2x.png', size: 152 }
    ]
  # Android
  'android':
    dir: 'res/icon/android/'
    icons: [
      { name: 'icon-36-ldpi.png', size: 36 }
      { name: 'icon-48-mdpi.png', size: 48 }
      { name: 'icon-72-hdpi.png', size: 72 }
      { name: 'icon-96-xhdpi.png', size: 96 }
    ]
  # Windows Phone, Tablets and Desktop (Windows 8)
  'windows-phone':
    dir: 'res/icon/windows-phone/'
    icons: [
      { name: 'icon-48.png', size: 48 }
      { name: 'icon-62-tile.png', size: 62 }
      { name: 'icon-173-tile.png', size: 173 }
    ]
  # Blackberry
  'blackberry':
    dir: 'res/icon/blackberry/'
    icons: [
      { name: 'icon-80.png', size: 80 }
    ]
  # WebOS
  'webos':
    dir: 'res/icon/webos/'
    icons: [
      { name: 'icon-64.png', size: 64 }
    ]
  # All Bada's icon's sets
  'bada':
    dir: 'res/icon/bada/'
    icons: [
      { name: 'icon-128.png', size: 128 }
      { name: 'icon-48-type5.png', size: 48 }
      { name: 'icon-50-type3.png', size: 50 }
      { name: 'icon-80-type4.png', size: 80 }
    ]
  # Tizen
  'tizen':
    dir: 'res/icon/tizen/'
    icons: [
      { name: 'icon-128.png', size: 128 }
    ]
}
