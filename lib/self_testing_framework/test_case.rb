module SelfTestingFramework
  class TestCase

    class << self
      def run(name)
        iam = new
        iam.before
        iam.send(name)
        iam.after
      end
    end

    def before
    end

    def after
    end

    def assert(arg, fail_message = nil)
      fail_message ||= "Assertion Fails"
      raise AssertFalse.new(fail_message) unless arg
    end

  end
end
