import hw03                                                                            
old_abstraction = hw03.interval, hw03.lower_bound, hw03.upper_bound                    
hw03.interval = lambda a, b: lambda x: a if x == 0 else b                              
hw03.lower_bound = lambda s: s(0)                                                      
hw03.upper_bound = lambda s: s(1)                                                      
from hw03 import *                                                                     
# Testing for abstraction violations                                                   
# Your code should not check for which implementation is used                          
str_interval(div_interval(interval(-1, 2), interval(4, 8))) 
