module Million
  class Phi
    include ::Million::Digits

    def self.file
      File.open('lib/raw/phi')
    end

    def initialize
      @value = ""
      Million::Phi.file.each_line { |line| @value << line }
    end


  end
end