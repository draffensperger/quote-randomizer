require 'type_tracer'

TypeTracer.config do |config|
  config.attribute_methods_definer = proc do
    # initialize all of the active record models so that they will define their
    # attribute methods.
    ActiveRecord::Base.descendants.each(&:new)
  end

  # Sample method types on every request
  config.sample_types_for_requests do |_rack_env|
    # If you wanted to sample only certain requests you can do this:
    # rand() > 0.5

    # Sample types in non-test environments (dev and prod)
    !Rails.env.test?
  end

  config.type_sampler_root_path = Rails.root.join('app')
end
