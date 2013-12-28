# grunt-svg2storeicons

[![Available on NPM](https://nodei.co/npm/grunt-svg2storeicons.png?compact=true)](https://npmjs.org/package/grunt-svg2storeicons/)

[![Build Status](https://secure.travis-ci.org/PEM--/grunt-svg2storeicons.png)](http://travis-ci.org/PEM--/grunt-svg2storeicons)
[![Dependencies status](https://david-dm.org/PEM--/grunt-svg2storeicons.png)](https://david-dm.org/PEM--/grunt-svg2storeicons)
[![Dev dependencies status](https://david-dm.org/PEM--/grunt-svg2storeicons/dev-status.png)](https://david-dm.org/PEM--/grunt-svg2storeicons/#info=devDependencies)
[![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)

Create icons for mobile and tablet applications for all stores from a simple squared SVG.

![Build flow](https://raw.github.com/PEM--/grunt-svg2storeicons/master/doc/flowchart.png "Build flow")

> In bold, the chart represents the user provided options. Normal texts are the generated sub file paths.

## Getting Started
### GraphicsMagick
This plugin requires GraphicsMagick.

If you are on OSX, use HomeBrew:
```
brew install graphicsmagick
```

If you are on Ubuntu:
```
sudo apt-get install graphicsmagick
```

### Grunt
This plugin requires Grunt `~0.4.2`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-svg2storeicons --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-svg2storeicons');
```

## The "svg2storeicons" task
### Overview
In your project's Gruntfile, add a section named `svg2storeicons` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  svg2storeicons: {
    your_target: {
      // Source file: the SVG.
      src: 'app/res/icon.svg',
      // Destination directory where are stored all app icons
      dest: 'www/',
      // Optionnal, it produces icons for every stores if not specified
      options: {
        // A  list of stores
        profiles: ['windows-phone', 'android']
      }
    },
  },
});
```

### Options
#### options.profiles
Type: `Array of String`
Default value: `['default', 'android', 'bada', 'blackberry', 'ios', 'tizen', 'webos', 'windows-phone']`

Specify the stores that you target. The full list is provided as default. The default target produce a single `icon.png` at the root of the specified destination directory.

### Usage Examples
#### Default Options
In this example, the default options are used. Icons for all sizes of phones are being produced for each stores. The `src` contains the access to an squared SVG file. The `dest` contains the directory in which the icons are produced.
```js
grunt.initConfig({
  svg2storeicons: {
    all_stores: {
      src: 'app/res/icon.svg',
      dest: 'www/'
    }
  }
});
```

#### Custom Options
In this example, custom options are used to create the default icon and only target Android and iOS.
```js
grunt.initConfig({
  svg2storeicons: {
    google_play_and_app_store: {
      src: 'app/res/icon.svg',
      dest: 'www/',
      options: {
        profiles: ['default', 'android', 'ios']
      }
    }
  }
});
```

## Contributing
The main plugin is written and its tests are written in CoffeeScript. In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/). Feel free to contribute.

## Release History
* 0.1.9: 12/28/2013: Typos: [PEM--](https://github.com/PEM--)
* 0.1.8: 12/27/2013: Dependency checking: [PEM--](https://github.com/PEM--)
* 0.1.7: 12/26/2013: Add an NPM badge for easing access: [PEM--](https://github.com/PEM--)
* 0.1.6: 12/26/2013: Travis-CI integration: [PEM--](https://github.com/PEM--)
* 0.1.5: 12/26/2013: Default icon and better tests: [PEM--](https://github.com/PEM--)
* 0.1.3 & 0.1.4: 12/26/2013: Better doc support for npmjs.org [PEM--](https://github.com/PEM--)
* 0.1.2: 12/25/2013: Minor typo and better antialiasing flow chart [PEM--](https://github.com/PEM--)
* 0.1.1: 12/25/2013: PR on node-gm for transparent background: [PEM--](https://github.com/PEM--)
* 0.1.0: 12/24/2013: Initial commit: [PEM--]( https://github.com/PEM-- )

## Known issue
* SVG containing gradient failed to be converted by GraphicsMagick (same thing for ImageMagick).
* SVG containing DataURI with Base64 encoding on JPEG or PNG failed to be converted by GraphicsMagick (same thing for ImageMagick).
