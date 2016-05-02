class SampledTypesController < ApplicationController
  def show
    render json: JSON.pretty_generate(TypeTracer::TypeSampler.types_hash)
  end
end
