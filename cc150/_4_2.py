graph = {'A': ['B', 'C','E'],
             'B': ['A','C', 'D'],
             'C': ['D'],
             'D': ['C'],
             'E': ['F','D'],
             'F': ['C']}

def bfs(graph, start, end, path=[]):
    path=path+[start]
    if start==end:return [path]
    if not graph.has_key(start):
        return None
    newpaths=[]
    for item in graph[start]:
        if item not in path:
            newpath=bfs(graph,item,end,path)
            for new in newpath:
                newpaths.append(new)
    return newpaths
bfs(graph, 'A', 'D')
