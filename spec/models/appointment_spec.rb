require 'rails_helper'

RSpec.describe Appointment, type: :model do
  before(:each) do
    @user = User.create!(name: 'omar', email: 'omar@gmail.com', password:'121212')
    @doctor = Doctor.create!(name: 'abid', city: 'kabul', description: 'good doctor', image: 'image', speciality: 'dentist')
    @appointment = Appointment.create!(disease: 'cancer', city: 'NY', user_id: @user.id, doctor_id: @doctor.id, appointment_date: '2021-05-12',  appointment_time: '12:00')
  end

  it 'should have a disease' do
    expect(@appointment.disease).to eq(@appointment.disease)
  end

  it 'should have a city' do
    expect(@appointment.city).to eq(@appointment.city)
  end

  it 'should have a user_id' do
    expect(@appointment.user_id).to eq(@user.id)
  end

  it 'should have a doctor_id' do
    expect(@appointment.doctor_id).to eq(@doctor.id)
  end

  it 'should have an appointment_date' do
    expect(@appointment.appointment_date).to eq(@appointment.appointment_date)
  end

  it 'should have an appointment_time' do
    expect(@appointment.appointment_time).to eq(@appointment.appointment_time)
  end
end
