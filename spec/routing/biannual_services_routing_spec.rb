require 'rails_helper'

RSpec.describe BiannualServicesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/biannual_services').to route_to('biannual_services#index')
    end

    it 'routes to #show' do
      expect(get: '/biannual_services/1').to route_to('biannual_services#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/biannual_services').to route_to('biannual_services#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/biannual_services/1').to route_to('biannual_services#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/biannual_services/1').to route_to('biannual_services#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/biannual_services/1').to route_to('biannual_services#destroy', id: '1')
    end
  end
end
