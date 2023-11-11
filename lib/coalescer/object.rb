# frozen_string_literal: true

module Coalescer
  module Object
    def coalesce(*)
      self
    end

    alias coal coalesce
  end

  ::Object.prepend Object
end
