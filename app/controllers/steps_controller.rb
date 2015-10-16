class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  private

  def step
    StepRepository.find(params[:id])
  end

  def steps
    StepRepository.all
  end

  def step_params
    params.require(:step)
  end

  def current_step
    params[:current_step] || 100
  end

  helper_method :step, :steps
end
