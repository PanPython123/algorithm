class Prime
    constructor: (max) ->
        @max = [2..max]

    loop_value: (n) ->
        for_value = Math.floor(Math.sqrt(n))

    isPrime: ->
        prime_array = []
        for i in @max
            right = true
            current_loop = @loop_value(i)
            num = if current_loop >= 2 then [2..current_loop]  else []
            for t in num
                if i % t == 0
                    right = false
                    break
            if right
                prime_array.push(i)

        console.log prime_array

max = process.argv[2]
generator = new Prime max
generator.isPrime()
