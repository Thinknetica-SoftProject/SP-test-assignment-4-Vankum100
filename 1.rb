## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:


def follow_rules(rules)
    floor = 0
    rules.each_char do |movement|
        if movement == "("
            floor += 1
        elsif movement == ")"
            floor -= 1 
        end
    end
    return floor
end

rules_file = File.read('data/1.txt')
puts follow_rules(rules_file)


