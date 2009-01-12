require File.dirname(__FILE__) + '/helper'
roll_call = File.dirname(__FILE__) + '/responses/roll_call.xml'

Expectations do  
  rc = Congredi::RollCall.new(roll_call)

  expect Congredi::RollCall do
    rc.class
  end

  expect 'Yes' do
    rc.d_majority_position
  end

  expect '0' do
    rc.d_no
  end

  expect '45' do
    rc.d_yes
  end

  expect '0' do
    rc.d_present
  end

  expect '4' do
    rc.d_not_voting
  end

  expect 'Yes' do
    rc.r_majority_position
  end
  
  expect '8' do
    rc.r_no
  end
  
  expect '36' do
    rc.r_yes
  end
  
  expect '1' do
    rc.r_present
  end
  
  expect '4' do
    rc.r_not_voting
  end
  
  expect '0' do
    rc.i_no
  end
  
  expect '2' do
    rc.i_yes
  end
  
  expect '0' do
    rc.i_present
  end
  
  expect '0' do
    rc.i_not_voting
  end
  
  expect 'Agreed to' do
    rc.result
  end
  
  expect '20:26:00' do
    rc.time
  end
  
  expect '194' do
    rc.roll_call
  end
  
  expect '110' do
    rc.congress
  end
  
  expect '2008-07-31' do
    rc.date
  end
  
  expect 'H.R.4137' do
    rc.bill_number
  end
  
  expect 'H.R. 4137 Conference Report; College Opportunity and Affordability Act of 2008' do
    rc.description
  end
  
  expect 'On the Conference Report' do
    rc.question
  end
  
end
