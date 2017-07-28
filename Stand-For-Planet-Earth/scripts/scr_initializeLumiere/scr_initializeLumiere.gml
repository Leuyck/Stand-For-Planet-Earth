///scr_initializeLumiere()
///get all the instance making shadow, and get the x1,y1,x2,y2,centerx,centery of each static instance;

allInstanceMakingShadowList = scr_getAllInstanceMakingShadow();
scr_calculShadowForStaticInstance(1,0.01);	
scr_showNotification("Init lumiere",c_blue);