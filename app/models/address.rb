class Address
  attr_accessor :line1, :line2, :city, :state, :zipcode

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def attributes=(attributes)
    @line1 = attributes[:address]
    @city = attributes[:city]
    @state = attributes[:state]
    @zipcode = attributes[:zipcode]
  end

  def persisted?
    false
  end

  def has_zipcode?
    zipcode && !zipcode.empty?
  end

  def is_valid?
    one_line != ''
  end

  def one_line
    "#{@line1} #{@city} #{@state} #{@zipcode}".strip
  end
end
