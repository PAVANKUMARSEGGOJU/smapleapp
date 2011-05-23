
class User
	attr_accessor :person1, :person2, :person3

	def initialize (attributes={})
	@person1 = attributes[:person1]
	@person2 = attributes[:person2]
	@person3 = attributes[:person3]

end

	def formatted_person2
	"#{@person1} <#{@person2}> #{@person3}"
end

end
