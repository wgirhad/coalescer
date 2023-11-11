# frozen_string_literal: true

module Coalescer
  module Array
    def coalesce!
      nil.coalesce(*self)
    end

    alias coal! coalesce!
  end

  ::Array.prepend Array
end
