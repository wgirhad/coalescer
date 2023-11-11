# frozen_string_literal: true

module Coalescer
  module Proc
    def coalesce(*args)
      call.coalesce(*args)
    end

    alias coal coalesce
  end

  ::Proc.prepend Proc
end
