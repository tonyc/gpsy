module App
  class << self
    def root
      @root ||= File.join(File.dirname(__FILE__), "..").freeze
    end
  end
end
