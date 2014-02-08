# angular-stellar
> Distributed via

[![Gem Version](https://badge.fury.io/rb/angular-stellar.png)](http://badge.fury.io/rb/angular-stellar) [![Bower version](https://badge.fury.io/bo/angular-stellar.png)](http://badge.fury.io/bo/angular-stellar) [![NPM version](https://badge.fury.io/js/angular-stellar.png)](http://badge.fury.io/js/angular-stellar)

> Stellar.js directives for AngularJS  ( without jQuery dependency )

[![Build Status](https://secure.travis-ci.org/tomchentw/angular-stellar.png)](http://travis-ci.org/tomchentw/angular-stellar) [![Coverage Status](https://coveralls.io/repos/tomchentw/angular-stellar/badge.png)](https://coveralls.io/r/tomchentw/angular-stellar) [![Code Climate](https://codeclimate.com/github/tomchentw/angular-stellar.png)](https://codeclimate.com/github/tomchentw/angular-stellar)  [![Dependency Status](https://gemnasium.com/tomchentw/angular-stellar.png)](https://gemnasium.com/tomchentw/angular-stellar)

## Project philosophy

### Develop in LiveScript
[LiveScript](http://livescript.net/) is a compile-to-js language, which provides us more robust way to write JavaScript.  
It also has great readibility and lots of syntax sugar just like you're writting python/ruby.

### Native, lightweight directives
`Stellar.js` provides the same interface with angular `directives`.  
We use the similarity between them and provides seamless intergration with `Stellar.js`.  


## Installation

This project follows **DRY** principle and has two dependencies, which are `angularjs` and `ui.bootstrap.position`.

### Just use it

* Download and include [`position.js`](https://github.com/angular-ui/bootstrap/blob/master/src/position/position.js).
* Download and include [`angular-stellar.js`](https://github.com/tomchentw/angular-stellar/blob/master/angular-stellar.js) OR [`angular-stellar.min.js`](https://github.com/tomchentw/angular-stellar/blob/master/angular-stellar.min.js).  

Then include them through script tag in your HTML.

### **Rails** projects (Only support 3.1+)
Add this line to your application's Gemfile:
```ruby
gem 'angular-stellar'
```

And then execute:

    $ bundle

If you are NOT using [`angular-ui/bootstrap`](https://github.com/angular-ui/bootstrap), you have to download
[`position.js`](https://github.com/angular-ui/bootstrap/blob/master/src/position/position.js) and put it in  `vendor/assets/javascripts/`

Then add these lines to the top of your `app/assets/javascripts/application.js` file:

```javascript
//= require angular
//= require ui-bootstrap-tpls
(`//= require position` instead if you aren't using boostrap)
//= require angular-stellar
```

And include in your `angular` module definition:
    
    /* 'angular.stellar' DO depend on 'ui.bootstrap.position' module.
     */    
    var module = angular.module('my-awesome-project', [/* 'bootstrap', */ 'angular.stellar']).


## Usage

### "stellar-ratio": Make the element has parallax effect on front

### "stellar-background-ratio": Make the element has parallax effect on background

### "stellarConfig": constant for configuration

#### scrollProperty
_default_ to: 'scroll'

Available options are 'position', 'margin', 'transform', or you can define it yourself.

#### positionProperty
_default_ to: 'position'

Available options are 'transform', or you can define it yourself.

#### horizontalScrolling
_default_ to: true

Whether or not to enable scrolling in horizontal, only apply to `stellar-ratio` elements.

#### verticalScrolling
_default_ to: true

Whether or not to enable scrolling in vertical, only apply to `stellar-ratio` elements.

#### horizontalOffset
_default_ to: 0

Global offset added to each element.

#### verticalOffset
_default_ to: 0

Global offset added to each element.

#### hideDistantElements
_default_ to: true

When `stellar-ratio` elements are scrolled outside of visible area, hide them.

#### hideElement
_default_ to: `function(it){ it.addClass('ng-hide'); }`

You can have your implementation on your own.

#### showElement
_default_ to: `function(it){ it.removeClass('ng-hide'); }`

You can have your implementation on your own.

#### isElementHidden
_default_ to: `function(it){ return it.hasClass('ng-hide'); }`

You can have your implementation on your own.


## Contributing

[![devDependency Status](https://david-dm.org/tomchentw/angular-stellar/dev-status.png?branch=master)](https://david-dm.org/tomchentw/angular-stellar#info=devDependencies)

1. Fork it ( http://github.com/tomchentw/angular-stellar/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
