class Appointment

  @@all = []

  attr_accessor :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
