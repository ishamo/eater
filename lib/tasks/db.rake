namespace :db do
  desc "TODO"
  task del: :environment do
    Emc.delete_all 
    Anyshare.delete_all
    Bigdatum.delete_all
    
  end

end
