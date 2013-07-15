module Million
  module Digits
    attr_reader :value

    def [](index)
      @value[index]
    end

    def find(string)
      @value.rindex(string)
    end
  end

end