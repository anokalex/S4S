#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 11 15:50:25 2018

@author: ludoviccarlu
"""
from PIL import Image
import numpy

im = Image.open('/Users/ludoviccarlu/Desktop/i05gn2.tif')
im.show()
imarray = numpy.array(im)

mask = imarray > 3
imarray[mask] = 0
mask = imarray < -3
imarray[mask] = 0

imarray = imarray * 255

im_fixed = Image.fromarray(imarray)

im_fixed.show()


