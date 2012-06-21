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

  def galeria
  end

  def infografia
  end

  def crowdint
  end

  def rubycentral
  end

  def github
  end

  def heroku
  end

  def ey
  end

  def allies
  end

  def nearsoft
  end

  def aietic
  end

  def comunidad
  end

  protected

  def env_var
    @language = "es"
    @nav = true
    @logo = true
  end
end
