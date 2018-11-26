module CitiesHelper

  def region_pairs
  	#region_names = []
  	@regions.map do |region|
  		[region.name.to_s, region.id.to_i]
  		# region_names += [region.name.to_s, region.id]
    end
	#return region_names
  end

  def region_select (rid)
  	@regions.map do |region|
  		if region.id == rid
  			return region.name.to_s
  		end
    end
  end  

end
