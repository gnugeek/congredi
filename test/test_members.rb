require File.dirname(__FILE__) + '/helper'
members = File.dirname(__FILE__) + '/responses/members.xml'

Expectations do  
  rc = Congredi::Members.new(members)

  expect Congredi::Members do
    rc.class
  end
  
  expect Congredi::Member do
    rc.members.first.class
  end
  
  expect 'A000069' do
    rc.members.first.member_id
  end
  
  expect 'Daniel Akaka' do
    rc.members.first.name
  end
  
  expect 'D' do
    rc.members.first.party
  end
  
  expect 'HI' do
    rc.members.first.state
  end
  
end