require 'rails_helper'

RSpec.describe MonthlyServicesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/monthly_services').to route_to('monthly_services#index')
    end

    it 'routes to #show' do
      expect(get: '/monthly_services/1').to route_to('monthly_services#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/monthly_services').to route_to('monthly_services#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/monthly_services/1').to route_to('monthly_services#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/monthly_services/1').to route_to('monthly_services#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/monthly_services/1').to route_to('monthly_services#destroy', id: '1')
    end
  end
end
