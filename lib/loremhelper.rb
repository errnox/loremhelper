# -*- coding: utf-8 -*-
require_relative "./loremhelper/version"
require_relative "./loremhelper/data"

# Public: Lorem ipsum helper
module Loremhelper
  # Internal: Get all lorem ipsum paragraphs.
  #
  # Returns an Array of lorem ipsum text Strings.
  def self._all_paragraphs
    Data.lorem_ipsum.split(/\n\n/)
  end

  # Public: Return the whole lorem ipsum text.
  #
  # Returns the lorem ipsum text as a String.
  def self.ipsum
    Data.lorem_ipsum
  end

  # Public: Get n lorem ipsum strings.
  #
  # n - Integer number of paragraphs to return.
  #
  # Returns an Array of n lorem ipsum Strings.
  def self.paragraphs(n)
    _all_paragraphs[0..(n - 1)]
  end

  # Public: Get the nth lorem ipsum paragraph
  #
  # n - Integer index of the paragraph which should be returned.
  #
  # Returns the nth paragraph as a String.
  def self.paragraph(n)
    _all_paragraphs[(n - 1)]
  end

  # Public: Get n tokens (`words') from the lorem ipsum text.
  #
  # n - Integer number of tokens which should be fetched.
  #
  # Returns a String of n lorem ipsum text tokens (`words').
  def self.tokens(n)
    Data.lorem_ipsum.split(/ /)[0..(n - 1)]
  end

  # Public: Get n sentences from the lorem ipsum text.
  #
  # n - Integer number of sentences to return.
  #
  # Returns an Array of n sentence Strings from the lorem ipsum text.
  def self.sentences(n)
    tokens = Data.lorem_ipsum.split(/(\.|\!|\?)\s+/)[0..((n * 2) - 1)]
    matches = []
    tokens.each_with_index do |token, i|
      if(i % 2 == 0)
        matches << token + tokens[i + 1]
      end
    end
    matches
  end
end
