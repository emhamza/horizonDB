require 'rails_helper'

RSpec.describe QuarterlyServicesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/quarterly_services').to route_to('quarterly_services#index')
    end

    it 'routes to #show' do
      expect(get: '/quarterly_services/1').to route_to('quarterly_services#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/quarterly_services').to route_to('quarterly_services#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/quarterly_services/1').to route_to('quarterly_services#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/quarterly_services/1').to route_to('quarterly_services#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/quarterly_services/1').to route_to('quarterly_services#destroy', id: '1')
    end
  end
end
