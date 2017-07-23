require 'test/unit'

require_relative '../lib/loremhelper'
require_relative '../lib/loremhelper/data'
require_relative 'fixtures'


class LoremhelperTest < Test::Unit::TestCase
  def test__all_paragraphs
    assert_equal(Loremhelper._all_paragraphs,
                 Fixtures.full_lorem_ipsum.split(/\n\n/))
  end

  def test_ipsum
    assert_equal Loremhelper.ipsum, Fixtures.full_lorem_ipsum
  end

  def test_paragraphs
    assert_equal Loremhelper.paragraphs(3), Fixtures.first_three_paragraphs
  end

  def test_paragraph
    assert_equal Loremhelper.paragraph(3), Fixtures.third_paragraph
  end

  def test_tokens
    assert_equal Loremhelper.tokens(8), Fixtures.first_eight_tokens
  end

  def test_sentences
    assert_equal Loremhelper.sentences(3), Fixtures.first_three_sentences
  end
end
