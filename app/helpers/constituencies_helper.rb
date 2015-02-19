module ConstituenciesHelper
	def selectVoivod
		Voivodeship.all.each do |voi|
			voids = voi.name
		end
	end
end
