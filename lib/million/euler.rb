module Million
  class Euler
    include ::Million::Digits

    def self.file
      File.open('lib/raw/euler')
    end

    def initialize
      @value = ""
      Million::Euler.file.each_line { |line| @value << line }
    end

  end
end