class Doctor

  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |a|
      a.doctor == self
    end
  end

  def patients
    appointments.map do |app|
      app.patient
    end
  end

end
