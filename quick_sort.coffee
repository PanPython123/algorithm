# Way one, wirrten by myself!
QuickSort = (list) ->
    if list.length > 2
        pivot = list[0]
        bigger = list.filter (x) -> x > pivot
        smaller = list.filter (x) -> x < pivot
        QuickSort(smaller).concat pivot, QuickSort(bigger)
    else
        a = list

#Find in the Website, much better!
qsort = (list) ->
    if list.length == 0 then list else qsort(list[1..].filter (x) -> x < list[0]).concat list[0], qsort(list[1..].filter (x) -> x > list[0])

#Java book
quickSort = (list, first, last) ->
    if first < last
        pivot = partition list, first, last
        quickSort list, first, pivot-1
        quickSort list, pivot + 1, last

partition = (list, first, last) ->
    pivot = list[0]
    low = first + 1
    high = last

    while low  < high
        while low <= high && list[low] <= pivot
            low++
        while low <= high && list[high] > pivot
            high--
        if low < high
            temp = list[low]
            list[low] = list[high]
            list[high] = temp

    while high > first && list[high] >= pivot
        high--

    if list[high] < pivot
        list[first] = list[high]
        list[high] = pivot
        result = high
    else
        result = first

a = [ 23,2, 33, 4, 45, 6, 453, 1]
quickSort a, 0, a.length-1
console.log a
