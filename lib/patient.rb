class Patient

  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |d|
      d.patient == self
    end
  end

  def doctors
    appointments.map do |a|
      a.doctor
    end
  end 

end
