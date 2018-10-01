cpdef unsigned char[:, :,:] threshold_fast( unsigned char [:, :,:] image):
    # set the variable extension types
    cdef int x, y, w, h
    
    # grab the image dimensions
    h = image.shape[0]
    w = image.shape[1]
    
    # loop over the image
    for y in range(0, h):
        for x in range(0, w):
            # threshold the pixel
            if image[y,x,0]>=252:
                image[y, x] = 255
    
    # return the thresholded image
    return image

cpdef unsigned char[:, :,:] threshold_fast_savel( unsigned char [:, :,:] image):
    # set the variable extension types
    cdef int x, y, w, h
    
    # grab the image dimensions
    h = image.shape[0]
    w = image.shape[1]
    
    # loop over the image
    for y in range(0, h):
        for x in range(0, w):
            # threshold the pixel
            if image[y,x,0] ==0:
                image[y, x] = 255
    
    # return the thresholded image
    return image

cpdef unsigned char[:, :,:] threshold_fast_ba( unsigned char [:, :] image,unsigned char [:, :,:] image1):
    # set the variable extension types
    cdef int x, y, w, h
    
    # grab the image dimensions
    h = image.shape[0]
    w = image.shape[1]
    
    # loop over the image
    for y in range(0, h):
        for x in range(0, w):
            # threshold the pixel
            if image[y,x]>=255:
                image[y, x] = 0
                image1[y,x] = image[y,x]
    
    # return the thresholded image
    return image1