$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

APIKEY = "32cba725aa2f8bad440a7d428f3ef23f:11:57686948"

require 'rubygems'
require 'open-uri'
require 'hpricot'
require 'congredi/bio'
require 'congredi/members'
require 'congredi/member'
require 'congredi/roll_call'
require 'congredi/votes'
require 'congredi/role'
