#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov  4 11:03:14 2019

@author: Adam
"""
from pandas import read_csv

data = read_csv('/Users/Adam/sales.csv',delimiter=',',)

import numpy as np
import statsmodels.api as sm
import statsmodels.formula.api as smf
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt
from statsmodels.api import add_constant
from pandas import DataFrame

price = DataFrame(data.price)
year = DataFrame(data.year)
home_size = DataFrame(data.home_size)
parcel_size = DataFrame(data.parcel_size)
beds = DataFrame(data.beds)
age = DataFrame(data.age)
pool = DataFrame(data.pool)
cbd_dist = DataFrame(data.cbd_dist)
x_coord = DataFrame(data.x_coord)
y_coord = DataFrame(data.y_coord)
