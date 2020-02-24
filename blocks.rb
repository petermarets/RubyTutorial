def print lambdaA, lambdaB, printText
    puts "function print #{printText}"
    lambdaB.call('testB')
    lambdaA.call('testA')
end

print -> (x){puts "A Block print #{x}"}, -> (y) {puts "B Block print #{y}"}, 'passedFromMain'