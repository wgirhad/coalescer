# frozen_string_literal: true

module Coalescer
  module NilClass
    def coalesce(*args)
      args.empty? ? super : args.shift.coalesce(*args)
    end

    alias coal coalesce
  end

  ::NilClass.prepend NilClass
end
