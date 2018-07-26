class CrewsController < ApplicationController
  # before running anything authenticate user to check he's logged in
  before_action :authenticate_user!


  def index
    @crews = Crew.all
  end

  def show
    @crew = Crew.find(params[:id])
  end

  def edit
    @crew = Crew.find(params[:id])
  end

  def new
    @crew = Crew.new
  end

  def create
    @crew = Crew.new(crew_params)
    if @crew.save
      redirect_to @crew
    else
      render 'new'
    end
  end

  def update
    @crew = Crew.find(params[:id])

    if @crew.update(crew_params)
      redirect_to @crew
    else
      render 'edit'
    end
  end


  def destroy
    @crew = Crew.find(params[:id])
    @crew.destroy

    redirect_to crews_path
  end

  private
    def crew_params
      params.require(:crew).permit(:name, :location)
    end
end
