$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

APIKEY = ""

require 'rubygems'
require 'open-uri'
require 'hpricot'
require 'congredi/bio'
require 'congredi/members'
require 'congredi/member'
require 'congredi/roll_call'
require 'congredi/votes'
require 'congredi/role'
