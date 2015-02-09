class Assembly < ActiveRecord::Base
	has_and_belongs_to_many :parts,
		before_add: :check_part_number

		def check_part_number(part)
			if part.part_number.to_i > 100
				part.part_number = 200
			end
		end
end
