class WelcomeController < ApplicationController
  def about
  end
  def index
	@emcs_count = Emc.count
	@bigdata_count = Bigdatum.count
	@anyshare_count = Anyshare.count
  end
end
