require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe 'should return last events for organizations' do

    let(:org1) { Organization.create!(name: 'Organization1') }
    let(:org2) { Organization.create!(name: 'Organization2') }

    let!(:events) {
      Event.create!(
          [
              {organization: org1, hostname: 'abc.example.org'},
              {organization: org1, hostname: 'bcd.example.org'},
              {organization: org2, hostname: 'def.example.org'},
              {organization: org2, hostname: 'fgh.example.org'},
          ]
      )
    }


    it 'should return most recent events for organization with limit' do
      assert org1.last_n_events_for_organization(1).size == 1
    end

    it 'should return most recent events for organization with limit and hostname' do
      assert org1.last_n_events_host_organization(1, "bcd.example.org").size == 1
    end


  end

end
