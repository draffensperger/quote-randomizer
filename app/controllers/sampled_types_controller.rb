class SampledTypesController < ApplicationController
  def show
    type_info = TypeTracer::TypeSampler.sampled_type_info
    render json: JSON.pretty_generate(type_info)
  end
end
