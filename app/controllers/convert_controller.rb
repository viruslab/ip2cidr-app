class ConvertController < ApplicationController
  def index
  	if params[:startaddress] and params[:endaddress]
  		startaddr = params[:startaddress]
  		endaddr = params[:endaddress]
  		@cidr = IPToCIDR.solveCIDR(startaddr, endaddr)
  	end

  end

  

end
