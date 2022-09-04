class Link:
    empty = ()
    def __init__(self, first, rest=empty):
        assert rest is Link.empty or isinstance(rest, Link)
        self.first = first
        self.rest = rest
    def __repr__(self):
        if self.rest:
            rest_str = ', ' + repr(self.rest)
        else:
            rest_str = ''
        return 'Link({0}{1})'.format(repr(self.first), rest_str)
    def __str__(self):
        string = '<'
        while self.rest is not Link.empty:
            string += str(self.first) + ' '
            self = self.rest
        return string + str(self.first) + '>'

def sum_nums(lnk):
    """
    >>> a = Link(1, Link(6, Link(7)))
    >>> sum_nums(a)
    14
    """
    if lnk is Link.empty:
        return 0
    else:
        return lnk.first + sum_nums(lnk.rest)


def multiply_lnks(lst_of_lnks):
    """
    >>> a = Link(2, Link(3, Link(5)))
    >>> b = Link(6, Link(4, Link(2)))
    >>> c = Link(4, Link(1, Link(0, Link(2))))
    >>> p = multiply_lnks([a, b, c])
    >>> p.first
    48
    >>> p.rest.first
    12
    >>> p.rest.rest.rest is Link.empty
    True
    """
    all_first = [ lnk.first if lnk is not Link.empty else None  for lnk in lst_of_lnks]
    
    mul = lambda x: 1 if not x else x[0]*mul(x[1:])

    if None in all_first:
        return Link.empty
    else:
        new_link = Link(mul(all_first),multiply_lnks([lnk.rest for lnk in lst_of_lnks]))
        return new_link

def flip_two(lnk):
    """
    >>> one_lnk = Link(1)
    >>> flip_two(one_lnk)
    >>> one_lnk
    Link(1)
    >>> lnk = Link(1, Link(2, Link(3, Link(4, Link(5)))))
    >>> flip_two(lnk)
    >>> lnk
    Link(2, Link(1, Link(4, Link(3, Link(5)))))
    """
    have_pair= True if lnk is not Link.empty and lnk.rest is not Link.empty else False
    if have_pair:
        second_first = lnk.rest.first
        lnk.rest.first = lnk.first
        lnk.first = second_first
        flip_two(lnk.rest.rest)

def filter_link(link, f):
    """
    >>> link = Link(1, Link(2, Link(3)))
    >>> g = filter_link(link, lambda x: x % 2 == 0)
    >>> next(g)
    2
    >>> list(filter_link(link, lambda x: x % 2 != 0))
    [1, 3]
    """
    if link is not Link.empty:
        if f(link.first):
            yield link.first
        yield from filter_link(link.rest,f)
        
class Tree:
    def __init__(self, label, branches=[]):
        for b in branches:
            assert isinstance(b, Tree)
        self.label = label
        self.branches = branches
    def is_leaf(self):
        return not self.branches
    def __repr__(self):
        if not self.is_leaf():
            return "Tree("+\
                   str(self.label)+\
                   ", ["+\
                   ", ".join([repr(branch) for branch in self.branches])+\
                   "]"+\
                   ")"
        else:
            return "Tree("+str(self.label)+")"
    def __str__(self):
        return repr(self)


def make_even(t):
    """
    >>> t = Tree(1, [Tree(2, [Tree(3)]), Tree(4), Tree(5)])
    >>> make_even(t)
    >>> t.label
    2
    >>> t.branches[0].branches[0].label
    4
    """
    if t.label %2 !=0:
        t.label +=1
    [make_even(branch) for branch in t.branches]
       
def square_tree(t):
    """
    >>> t = Tree(1, [Tree(2, [Tree(3)]), Tree(4), Tree(5)])
    >>> square_tree(t)
    >>> t.label
    1
    >>> t.branches[0].branches[0].label
    9
    >>> t.branches[1].label
    16
    >>> t.branches[2].label
    25
    """
    t.label = t.label**2
    [square_tree(branch) for branch in t.branches]

def find_paths(t, entry):
    """
    >>> tree_ex = Tree(2, [Tree(7, [Tree(3), Tree(6, [Tree(5), Tree(11)])]), Tree(1, [Tree(5)])])
    >>> find_paths(tree_ex, 5)
    [[2, 7, 6, 5], [2, 1, 5]]
    >>> find_paths(tree_ex, 12)
    []
    """
    paths = []
    if t.label == entry:
        paths.append([])
    for branch in t.branches:
        if find_paths(branch,entry) != []:
            [paths.append(path) for path in find_paths(branch,entry)]    
    return [] if len(paths) ==0 else [ [t.label] + path for path in paths]

def combine_tree(t1, t2, combiner):
    """
    >>> a = Tree(1, [Tree(2, [Tree(3)])])
    >>> b = Tree(4, [Tree(5, [Tree(6)])])
    >>> combined = combine_tree(a, b, lambda x,y: x*y)
    >>> combined.label
    4
    >>> combined.branches[0].label
    10
    """ 
    def tree_generator(t):
        yield t.label
        for branch in t.branches:
            yield from tree_generator(branch)
    a = zip(tree_generator(t1),tree_generator(t2))
    template_tree=t1
    def tree_helper(t):
        pair = next(a)
        return Tree(combiner(pair[0],pair[1]),[ tree_helper(branch) for branch in t.branches])
    return tree_helper(template_tree)

def alt_tree_map(t, map_fn):
    """
    >>> t = Tree(1, [Tree(2, [Tree(3)]), Tree(4)])
    >>> negate = lambda x: -x
    >>> alt_tree_map(t, negate)
    Tree(-1, [Tree(2, [Tree(-3)]), Tree(4)])
    """

    def tree_helper(t,level):
        tmp_value = t.label
        if level %2 ==0:
            tmp_value = map_fn(tmp_value)
        return Tree(tmp_value,[tree_helper(branch,level+1) for branch in t.branches])
    return tree_helper(t,0)
        

link=Link(1,Link(2,Link(3)))
tree=Tree(1,[Tree(2,[Tree(3)]),Tree(4)])
range_link=lambda x : Link(0) if x ==0 else Link(x,range_link(x-1))
range_tree=lambda x : Tree(0) if x ==0 else Tree(x,[range_tree(x-1)])
tower_tree=lambda x,level : Tree(0) if x==0 else Tree(x,[tower_tree(x-1,level+1) for i in range(level)])
