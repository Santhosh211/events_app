class Organization < ApplicationRecord

  has_many :events, dependent: :destroy


  #* the last N events for an org
  def last_n_events_for_organization(n)
    events.order(created_at: :desc).limit(n)
  end


  #* the last N events for a specific host within an org
  def last_n_events_host_organization(n,hostname)
    events.where(hostname: hostname).order(created_at: :desc).limit(n)
  end



end
