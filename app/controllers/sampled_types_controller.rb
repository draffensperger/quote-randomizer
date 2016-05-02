class SampledTypesController < ApplicationController
  def show
    render json: JSON.pretty_generate(TypeTracer::TypeSampler.sampled_type_info)
  end
end
