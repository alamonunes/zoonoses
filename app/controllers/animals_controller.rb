class AnimalsController < ApplicationController
  before_action :authenticate_cuidador!
  before_action :set_cuidador
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET cuidadors/1/animals
  def index
    @animals = @cuidador.animals
  end

  # GET cuidadors/1/animals/1
  def show
  end

  # GET cuidadors/1/animals/new
  def new
    @animal = @cuidador.animals.build
  end

  # GET cuidadors/1/animals/1/edit
  def edit
  end

  # POST cuidadors/1/animals
  def create
    @animal = @cuidador.animals.build(animal_params)

    if @animal.save
      redirect_to([@animal.cuidador, @animal], notice: 'Animal was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT cuidadors/1/animals/1
  def update
    if @animal.update_attributes(animal_params)
      redirect_to([@animal.cuidador, @animal], notice: 'Animal was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE cuidadors/1/animals/1
  def destroy
    @animal.destroy

    redirect_to cuidadors_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuidador
      @cuidador = Cuidador.find(params[:cuidador_id])
    end

    def set_animal
      @animal = @cuidador.animals.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_params
      params.require(:animal).permit(:nome, :sexo, :raca, :tipo, :idade, :peso)
    end
end
