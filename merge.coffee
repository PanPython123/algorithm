MergeSort = (list) ->
    if list.length > 1
        first_half = list[0...list.length / 2]
        # console.log "first_half is #{first_half}"
        MergeSort first_half

        second_half = list[list.length / 2..]
        # console.log "second_half is #{second_half}"
        MergeSort second_half

        Merge first_half, second_half, list

Merge = (list1, list2, temp) ->
    counter1 = 0
    counter2 = 0
    counter3 = 0

    while counter1 < list1.length and counter2 < list2.length
        if list1[counter1] < list2[counter2]
            temp[counter3++] = list1[counter1++]
        else
            temp[counter3++] = list2[counter2++]

    while counter1 < list1.length
        temp[counter3++] = list1[counter1++]

    while counter2 < list2.length
        temp[counter3++] = list2[counter2++]


list = [1, 3, 123214, 123, 3, 346456, 123]
MergeSort list
console.log list
