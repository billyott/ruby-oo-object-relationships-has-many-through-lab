class Doctor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def self.all
        @@all
    end

    def patients
        patients = []
        all_appts = appointments
        all_appts.each {|appt| patients << appt.patient}
        patients
    end

end

