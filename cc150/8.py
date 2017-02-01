def twoone(node):
    '''
    Write code to remove duplicates from an unsorted linked list.
    '''
    seen = set()
    prev = None
    while node is not None:
        if node.value in seen:
            prev.next = node.next
        else:
            seen.add(node.value)
        prev = node
        node = node.next


