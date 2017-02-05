require 'middleman-core'
require 'ember-tutorial/helpers'

# Extension namespace
class EmberTutorial < ::Middleman::Extension
  option :my_option, 'default', 'An example option'

  def initialize(app, options_hash={}, &block)
    app.helpers Helpers
    super
  end

  def after_configuration
    page '/', layout: '/'
    @section = data.tutorial
  end

end

Middleman::Extensions.register(:ember_tutorial)
