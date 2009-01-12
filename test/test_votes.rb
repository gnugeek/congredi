require File.dirname(__FILE__) + '/helper'
votes = File.dirname(__FILE__) + '/responses/votes.xml'

Expectations do
  
  vt = Congredi::Votes.new(votes)

  expect Congredi::Votes do
    vt.class
  end
  
  expect '2008-12-11' do
    vt.votes.first.date
  end
  
  expect '22:42:00' do
    vt.votes.first.time
  end
  
  expect 'Yes' do 
    vt.votes.first.position
  end
  
  expect 'Senate' do
    vt.votes.first.chamber
  end
  
  expect '110' do
    vt.votes.first.congress
  end
  
  expect '2' do
    vt.votes.first.session
  end
  
  expect '215' do
    vt.votes.first.roll_call
  end
  
end