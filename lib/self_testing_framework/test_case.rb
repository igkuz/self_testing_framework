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

    def assert(arg)
      raise "AssertFalse" if arg == true
    end

  end
end
