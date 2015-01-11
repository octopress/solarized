# Octopress Solarized

Style your code blocks using Ethan Schoonover's solarized theme (with tweaks) on Jekyll and Octopress sites.

## Installation

Add this line to your application's Gemfile:

    gem 'octopress-solarized'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-solarized

Next add it to your gems list in Jekyll's `_config.yml`

    gems:
      - octopress-solarized

If you're using a standard Jekyll theme add `{% css_asset_tag %}` to your site layout.

If you're using an Octopress Ink Theme, stylesheets should be automatically added when you generate your site.

## Contributing

1. Fork it ( https://github.com/octopress/solarized/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
