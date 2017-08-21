class RecommendationController < ApplicationController
  def new
  	@recommendation = Recommendation.new
  end
end