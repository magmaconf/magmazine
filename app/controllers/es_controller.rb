class EsController < ApplicationController
  before_filter :env_var

  def editorial
  end

  def conferencias
  end

  def galeria
  end

  def infografia
  end

  def patrocinadores
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
