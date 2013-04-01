exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test[\\/](?!vendor)/
        'test/javascripts/test-vendor.js': /^test[\\/](?=vendor)/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.9.1.js',
          'vendor/scripts/lodash-1.1.1.js',
          'vendor/scripts/backbone-1.0.0.js',
          'vendor/scripts/chaplin-0.8.0.js'
          'vendor/scripts/handlebars-1.0.10.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/normalize-2.1.0.css']
        after: ['styles/base.css']

    templates:
      joinTo: 'javascripts/app.js'
