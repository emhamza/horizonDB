require 'rails_helper'

RSpec.describe CommissionedsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/commissioneds').to route_to('commissioneds#index')
    end

    it 'routes to #show' do
      expect(get: '/commissioneds/1').to route_to('commissioneds#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/commissioneds').to route_to('commissioneds#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/commissioneds/1').to route_to('commissioneds#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/commissioneds/1').to route_to('commissioneds#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/commissioneds/1').to route_to('commissioneds#destroy', id: '1')
    end
  end
end
