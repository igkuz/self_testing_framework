module SelfTestingFramework
  class TestResult

    attr_reader :errors_count, :passed_count, :total_count, :tests, :errors

    def initialize
      @errors_count = 0
      @passed_count = 0
      @errors = []
      @tests = []
      @total_count = 0
    end

    def passed(klass_name, test_name)
      @passed_count += 1
      @tests << {:class_name => klass_name, :test_name => test_name}
      @total_count += 1
    end

    def errored(klass_name, test_name, error)
      @errors_count += 1
      @tests << {:class_name => klass_name, :test_name => test_name, :error => error}
      @errors << {:class_name => klass_name, :test_name => test_name, :error => error}
      @total_count += 1
    end

    def last_test
      @tests.last
    end

  end
end
