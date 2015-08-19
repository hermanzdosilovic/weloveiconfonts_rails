# weloveiconfonts_rails [![Gem Version](https://badge.fury.io/rb/weloveiconfonts_rails.svg)](http://badge.fury.io/rb/weloveiconfonts_rails)

`weloveiconfonts_rails` uses [WeLoveIconFonts](http://weloveiconfonts.com/) as a Rails engine for use with the asset pipeline.

## Installation

Add this to your Gemfile:

    gem 'weloveiconfonts_rails'

and run `bundle install`.

## Basic Usage

1. In your `application.css` include the scss file:

        /*
         *= require weloveiconfonts_rails
         */

2. In your `application.js` include the javascript file:

        //= require weloveiconfonts_rails

3. From weloveiconfonts_rails [webpage](http://weloveiconfontsrails.hermanzdosilovic.me/), choose icon you would like to use.

4. In your view call method `iconfont` and pass it the name of your icon.

        <%= iconfont 'brandico-github' %>

## Advanced Usage

You can pass different parameters to `iconfont` method. Here are all available parameters and their defaults:

* `:size` - specify width and height of icon in pixels
    * **default:** `100`
    * **example:**

            <%= iconfont 'entypo-check', size: 20 %>

* `:link` - make your icon act as a link to the given page
    * **default:** If `:link` is blank or not given your icon will not behave as link.
    * **example:**

            <%= iconfont 'brandico-facebook', link: 'https://facebook.com' %>

* `:hoverable` - make your icon hoverable. Icon will change its color on hover.
    * **default:** icons that behave as links are hoverable by default. If icon doesn't behave as a link then hoverable is disabled.
    * **example:**

            <%= iconfont 'entypo-search', hoverable: true %>

* `:shade` - define shade of your icon. This shade will be applied when icon is hovered if hoverable property is enabled.
    * **default:** `:bright`
    * **example:**

            <%= iconfont 'entypo-twitter', link: 'https://twitter.com', shade: :dark %>

* `:background` - define background of your icon
    * **default:** *none*
    * **example:**

            <%= iconfont 'entypo-plus-squared', background: '#00FF00' %>

* `:foreground` - define foreground of your icon
    * **default:** `#000000`
    * **example:**

            <%= iconfont 'entypo-rss', foreground: '#FF9933' %>

* `:input_html` - define your custom html options
    * **default:** *none*
    * **example:**

            <%= iconfont 'zocial-quora', link: 'https://quora.com', input_html: { target: '_blank' } %>

## Helper Methods

There are custom helper methods you can use in your views. Their purpose is to predefine properties of commonly used icons (usually social icons).

Here is the list of all available helper methods and their default properties:

* `iconfont_facebook`
    * `background: '#4b70ab'`
    * `foreground: '#ffffff'`

* `iconfont_linkedin`
    * `background: '#0087be'`
    * `foreground: '#ffffff'`

* `iconfont_github`
    * `background: '#333333'`
    * `foreground: '#ffffff'`

* `iconfont_bitbucket`
    * `background: '#205081'`
    * `foreground: '#ffffff'`

* `iconfont_mail`
    * `background: '#dd4b39'`
    * `foreground: '#ffffff'`

* `iconfont_document`
    * `background: '#fb7629'`
    * `foreground: '#ffffff'`

More helper methods will be added soon.

### Example Usage

Basic usage:

    <%= iconfont_facebook link: 'https://facebook.com' %>

Although some properties are predefined, you can always override them:

    <%= iconfont_facebook link: 'https://facebook.com', background: '#FF0066' %>

### Writing Your Own Helper Methods

[See](https://github.com/hermanzdosilovic/weloveiconfonts_rails/blob/master/app/helpers/we_love_icon_fonts_helper.rb) how helper methods are writen in this gem.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
