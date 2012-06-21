class EsController < ApplicationController
  before_filter :env_var

  def editorial
  end

  def conferencias
    @speakers = {
      scott: ['scott1.jpg','scott2.jpg','scott3.jpg','scott4.jpg'],
      aaron: ['aaron1.jpg','aaron2.jpg','aaron3.jpg','aaron4.jpg'],
      nic: ['nic1.jpg','nic2.jpg','nic3.jpg','nic4.jpg']
    }
  end

  protected

  def env_var
    @language = "es"
    @nav = true
    @logo = true
  end
end
