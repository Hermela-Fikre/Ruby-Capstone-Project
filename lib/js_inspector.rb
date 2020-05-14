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
    
      def missing_semicolon?(line, line_num)
        return false unless /^[^\n|\}|function](?:(?!;).)*$/.match(line)
    
        puts 'ERROR: '.red + "line #{line_num}, missing semicolon at the end of line."
        true
      end
    
      def space_before_braces?(line, line_num)
        return false unless /\S\{/.match(line)
    
        puts 'ERROR: '.red + "line #{line_num}, missing space before open brace."
        true
      end