require 'rails_helper'

RSpec.describe YearlyServicesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/yearly_services').to route_to('yearly_services#index')
    end

    it 'routes to #show' do
      expect(get: '/yearly_services/1').to route_to('yearly_services#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/yearly_services').to route_to('yearly_services#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/yearly_services/1').to route_to('yearly_services#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/yearly_services/1').to route_to('yearly_services#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/yearly_services/1').to route_to('yearly_services#destroy', id: '1')
    end
  end
end
