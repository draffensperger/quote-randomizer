require 'type_tracer'

TypeTracer.config do |config|
  config.attribute_methods_definer = proc do
    # initialize all of the active record models so that they will define their
    # attribute methods.
    ActiveRecord::Base.descendants.each(&:new)
  end

  # Sample method types on every request
  config.sample_types_for_requests do |_rack_env|
    # If you wanted to sample only a percentage of certain requests:
    # rand() > 0.5

    # You can also sample requests based on the passed in rack env

    # For now just sample types in non-test environments (dev and prod)
    !Rails.env.test?
  end

  config.type_check_root_path = Rails.root
  config.type_check_path_regex = %r{\A(app|lib)/}
  config.sampled_types_url = 'https://quote-randomizer.herokuapp.com/sampled_types'

  # On Heroku this will give the git commit. Knowing the git commit will let us
  # do better inference using the production traced types.
  # This requires https://github.com/ianpurvis/heroku-buildpack-version
  config.git_commit = ENV['SOURCE_VERSION']
end
