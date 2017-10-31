class Heap
    constructor: (@array) ->


    add: (x) ->
        @array.push(x)
        currentIndex = @array.length - 1
        while currentIndex > 0
            parentIndex = (currentIndex - 1) / 2
            if @array[currentIndex] > @array[parentIndex]
                temp = @array[currentIndex]
                @array[currentIndex] = @array[parentIndex]
                @array[parentIndex] = temp

            else
                break

            currentIndex = parentIndex

    printout: ->
        console.log @array

# random_list = [234, 12, 456, 212, 2, -123]
test = new Heap []
test.add(-342)
test.add(234)
test.add(12)
test.add(456)
test.printout()
