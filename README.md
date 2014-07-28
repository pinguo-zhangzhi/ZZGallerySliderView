ZZGallerySliderView
===================
#define CELL_HEIGHT 100 //CELL普通高度
#define CELL_WIDTH 320.0f //CELL宽度
#define CELL_CURRHEIGHT 240 //置顶CELL的高度
#define TITLE_HEIGHT 40
#define IMAGEVIEW_ORIGIN_Y -30
#define IMAGEVIEW_MOVE_DISTANCE 160 //cell内部图片视差移动距离

#define NAVIGATOR_LABEL_HEIGHT 25
#define NAVIGATOR_LABELCONTAINER_HEIGHT 125
#define SC_IMAGEVIEW_HEIGHT 360

#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

#define DRAG_INTERVAL 170.0f //手指滑动多少距离可以滚动一个单位（可随意设置）
#define HEADER_HEIGHT 60.0f //第一个CELL的高度，可以当作导航或者HEADER使用 
#define RECT_RANGE 1000.0f //从layout数组里面取得attributes的取值范围
