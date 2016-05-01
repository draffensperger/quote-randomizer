require 'type_tracer'
TypeTracer.config do |config|
  config.attribute_methods_definer = proc do
    # initialize all of the active record models so that they will define their
    # attribute methods.
    ActiveRecord::Base.descendants.each(&:new)
  end
end
