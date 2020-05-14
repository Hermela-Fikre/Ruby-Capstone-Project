class JsParse
    attr_reader :arr
  
    def initialize(arr)
      @arr = arr
      @open_brace = 0
      @close_brace = 0
    end

    def lowercase_names?(line, line_num)
        return false unless /^[A-Z]/.match(line)
    
        puts 'WARNING: '.yellow + "line #{line_num}, camelCase is recommended for identifier names." if /^[A-Z]/.match(line)
        true
      end
    
      def underscore_names?(line, line_num)
        return false unless /_/.match(line)
    
        puts 'WARNING: '.yellow + "line #{line_num}, avoid underscore in names, use camelCase."
        true
      end
    