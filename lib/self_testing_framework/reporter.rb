module SelfTestingFramework
  class Reporter

    def report(test_result)
      print test_result[:error] ? 'F' : '.'
    end

    def total_report(test_results)
      r = test_results
      puts "\n\n"
      r.errors.each do |e|
        puts "#{e[:class_name]}##{e[:test_name]}"
        puts "  ERROR: #{e[:error]}"
      end
      puts "\n"
      puts "--------------------------------------------"
      #puts "Total Results:"
      puts "Tests: #{r.total_count}, Passed: #{r.passed_count}, Errors: #{r.errors_count}"
    end
  end
end
