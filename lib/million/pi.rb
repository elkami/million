module Million
  class Pi
    attr_reader :value
    def self.file
      File.open('lib/raw/pi')
    end

    def initialize
      @value = ""
      Million::Pi.file.each_line do |line|
        @value << line
      end
    end

    def [](index)
    	@value[index]
    end

    def find(string)
      @value.rindex(string)
    end
  end
end