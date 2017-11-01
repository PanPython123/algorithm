class Heap
    constructor: (array) -> @array = array

    # constructor: () ->


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

    remove: () ->
        lastindex = @array.length - 1
        @array[0] = @array[lastindex]
        @array.pop()

        currentIndex = 0
        while currentIndex <= @array.length - 1
            left_children = currentIndex * 2 + 1
            right_children = currentIndex * 2 + 2

            if left_children >= @array.length
                break

            bigger = left_children
            if @array[right_children] > @array[bigger]
                bigger = right_children

            if @array[currentIndex] < @array[bigger]
                temp = @array[bigger]
                @array[bigger] = @array[currentIndex]
                @array[currentIndex] = temp
                currentIndex = bigger
                console.log bigger
            else
                break

    printout: ->
        console.log @array



# random_list = [234, 12, 456, 212, 2, -123]
test = new Heap []
test.add(-342)
test.add(234)
test.add(12)
test.add(456)
test.add(234)
test.printout()
test.remove()
test.printout()
