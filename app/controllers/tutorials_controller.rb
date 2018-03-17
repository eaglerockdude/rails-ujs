class TutorialsController < ApplicationController

  def index
    @tutorials = Tutorial.all
  end
  def new
    @tutorial = Tutorial.new
  end
  def create
    @tutorial = Tutorial.new(tut_params)
    if @tutorial.save
      render partial: "tutorial", locals:{tutorial: @tutorial}
    end
  end
  private
  def tut_params
    params.require(:tutorial).permit(:title, :url)
  end
end
