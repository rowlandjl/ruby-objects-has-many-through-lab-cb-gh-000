class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 

end
