require 'swagger_helper'

RSpec.describe 'doctors', type: :request do
  path '/doctors/create' do

    post 'Create a doctor' do
      tags 'api/doctors'
      consumes 'application/json', 'application/xml'
      parameter name: :doctor, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          city: { type: :string },
          image: { type: :string },
          description: { type: :string },
          speciality: { type: :string },
        },
        required: [ 'name', 'city', 'image', 'description', 'speciality' ]
      }

      response '201', 'doctor created' do
        let(:doctor) { { name: 'Dr.Ahmed', city: 'NYC',image: 'imagesdoctorsdoctor-1.jpg',description: 'RBSP', speciality: 'Dentist'   } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:doctor) { { name: 'Dr.Ahmed' } }
        run_test!
      end
    end
  end

end