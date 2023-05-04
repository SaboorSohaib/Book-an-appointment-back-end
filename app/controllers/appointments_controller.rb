class AppointmentsController < ApplicationController
  def index
    @user = User.find_by_id(params[:user_id])
    @appointments = @user.appointments.all
    render json: @appointments
  end

  def create
    @user = User.find_by_id(params[:user_id])
    @appointment = @user.appointments.new(appointment_params)
    if @appointment.save
      render json: @appointment
    else
      render :new
    end
  end

  def new
    @appointment = Appointment.new
  end

  def destroy
    @user = User.find_by_id(params[:user_id])
    @appointment = @user.appointments.find_by_id(params[:id])
    @appointment.destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:disease, :city, :appointment_date, :appointment_time, :user_id, :doctor_id)
  end
end
