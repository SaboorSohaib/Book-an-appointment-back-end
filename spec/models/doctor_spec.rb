require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject { Doctor.create!(name: 'abid', city: 'kabul', description: 'good doctor', image: 'image', speciality: 'dentist') }
  before { subject.save }

  it 'should have a name' do
    expect(subject.name).to eq('abid')
  end

  it 'should have a city' do
    expect(subject.city).to eq('kabul')
  end

  it 'should have a description' do
    expect(subject.description).to eq('good doctor')
  end

  it 'should have an image' do
    expect(subject.image).to eq('image')
  end

  it 'should have a speciality' do
    expect(subject.speciality).to eq('dentist')
  end

end
