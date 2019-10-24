# frozen_string_literal: true

KANJI = { '恒河沙': 10**52, '極': 10**48, '載': 10**44, '正': 10**40, '澗': 10**36,
          '溝': 10**32, '穣': 10**28, '𥝱': 10**24, '垓': 10**20, '京': 10**16,
          '兆': 10**12, '億': 10**8, '万': 10_000, '千': 1000, '百': 100, '十': 10,
          '九': 9, '八': 8, '七': 7, '六': 6, '五': 5, '四': 4, '三': 3, '二': 2,
          '一': 1 }.freeze

def to_kansuji(number)
  KANJI.each do |name, num|
    kanji = name.to_s
    return '零' if number.zero?
    return kanji if number.to_s.length == 1 && (number / num).positive?
    next unless (number / num).positive?
    return kanji if (number % num).zero? && number <= 1000 && number / num == 1
    return to_kansuji(number / num) + kanji if (number % num).zero?

    return to_kansuji(number - number % num) + to_kansuji(number % num)
  end
end

def to_number(str)
  KANJI.each do |name, num|
    return 0 if str.to_s == '' || str.to_s == '零'
    return num if str == name.to_s && num < 10
    next unless str.include? name.to_s
    if str.index(name.to_s).zero?
      return num + to_number(str.sub!(name.to_s, ''))
    end

    kanji = str.split(name.to_s)
    return to_number(kanji[0]) * num + to_number(kanji[1])
  end
end

puts to_number('一万')
puts to_kansuji(21)
