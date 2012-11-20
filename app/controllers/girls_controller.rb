class GirlsController < ApplicationController
  def show
    @girl = Girl.includes(:works).find(params[:id])
  end
end
