class PagesController < ApplicationController
   #layout 'internal', except: [:inicio]
   include SessionsHelper
  def inicio
  end

  def nosotros
  end

  def servicios
  end

  def contactenos
  end
end
