# coding: UTF-8

class Friend < ActiveRecord::Base
  
  #VALIDATIONS
  validates_uniqueness_of :lat, :scope => :long, :message => "já preenchida para esta longitude"
  validates_presence_of :name, :lat, :long
  
  #SCOPES
  #calcula a distancia pela lat e long passadas, orderna pela menor distancia
  scope :near_of, lambda{|lat, long|
    {:select => "*, sqrt( power(lat - #{lat.to_f}, 2) + power(long - #{long.to_f}, 2) ) distance", :order => "distance"}
  }
  
end
