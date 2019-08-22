class DesignersController < ApplicationController
  before_action :set_designer, only: [:show, :edit, :update, :destroy]
  # GET / designers
  def index
    @pagy, @designers = pagy(Designer.order(name: :asc))
  end

  # GET / designers/1
  def show
  end

  # GET /designers/new
  def new
    @designer = Designer.new
  end


  # GET /designers/1/edit
  def edit
  end

  # POST /designers
  def create
    @designer = Designer.new(designer_params)

    if @designer.save
      redirect_to @designer, notice: "#{@designer.name} was successfully created."
    else
      render :new
    end
  end
  
  

  def update
    if @designer.update(designer_params)
      redirect_to @designer, notice: "#{@designer.name} was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /designers/1
  def destroy
    @designer.destroy
    redirect_to designers_url, notice: "#{@designer.name} was successfully destroyed."
  end

  private

  def set_designer
    @designer = Designer.find(params[:id])
  end

  def designer_params
    params.require(:designer).permit(:name, :photo, :biography)
  end


end