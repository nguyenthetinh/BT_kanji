$kanji = { "1" => "一", "2" => "二", "3" => "三", "4" => "四", "5" => "五", "6" => "六", "7" => "七", 
    "8" => "八", "9" => "九", "10" => "十", "100" => "百", "1000" => "千", "10000" => "万", "100000000" => "億",
    "300" => "三百", "600" => "六百", "800" => "八百", "3000" => "三千", "8000" => "八千" }

def kanji_number(string)
    $kanji.each do |num, name|
    a = num.to_i
    return 0 if string.to_s == '零' || string.to_s == ''
    return a if string.to_s == name && a < 10
    if (string.include? name)
    return a + kanji_number(string.sub!(name, '')) if string.index(name) == 0
    return kanji_number(string.split(name)[0]) * a + kanji_number(string.split(name)[1])
    end
    end
end

def number_kanji(int)
    str = ''
    $kanji.each do |num, name|
    a = num.to_i
    if int <= 10
    return "零" if int == 0
    return str + name if int == a
    elsif int < 100 && (int / a).positive?
    next if a < 10
    return str + number_kanji(int / a) + name if int % a == 0
    return str + number_kanji(int - int % a) + number_kanji(int % a)
    elsif int < 1000 && int / a > 0
    next if a < 100
    return str + number_kanji(int / a) + name if int % a == 0
    return str + number_kanji(int - int % a) + number_kanji(int % a)
    elsif int < 10000 && int / a > 0
    next if a < 1000
    return str + number_kanji(int / a) + name if int % a == 0
    return str + number_kanji(int - int % a) + number_kanji(int % a)
    elsif int < 100000000 && int / a > 0
    next if a < 10000
    return str + number_kanji(int / a) + name if int % a == 0
    return str + number_kanji(int - int % a) + number_kanji(int % a)
    elsif int < 1000000000000 && int / a > 0
    next if a < 100000000
    return str + number_kanji(int / a) + name if int % a == 0
    return str + number_kanji(int - int % a) + number_kanji(int % a)
    end
    end
end

puts number_kanji(15)
puts kanji_number("百")
