class DoctorsController < ApplicationController
  before_action :authenticate_user!
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctor = Doctor.find_by_id(params[:id])
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(params[:doctor_params])
    if @doctor.save
      render json: @doctor
    else
      render :new
    end
  end

  def new
    @doctors = Doctor.new
  end

  def destroy
    @doctor = Doctor.find_by_id(params[:id])
    @doctor.destroy
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :specialty, :description, :city, :image)
  end
end
