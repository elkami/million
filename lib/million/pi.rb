module Million
  class Pi
    include ::Million::Digits

    def self.file
      File.open('lib/raw/pi')
    end

    def initialize
      @value = ""
      Million::Pi.file.each_line { |line| @value << line }
    end

  end
end