.class public Lcom/oppo/widget/OppoDragSortListView;
.super Lcom/oppo/widget/OppoListView;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;,
        Lcom/oppo/widget/OppoDragSortListView$DragScroller;,
        Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;,
        Lcom/oppo/widget/OppoDragSortListView$DragSortListener;,
        Lcom/oppo/widget/OppoDragSortListView$RemoveListener;,
        Lcom/oppo/widget/OppoDragSortListView$DropListener;,
        Lcom/oppo/widget/OppoDragSortListView$DragListener;,
        Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;,
        Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$DropAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$HeightCache;,
        Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoDragSortListView"

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

.field private mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

.field private mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mIsWillDrag:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSlideState:Z

.field private mSrcPos:I

.field private mStopAndWaitLayout:Z

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 34
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 414
    invoke-direct/range {p0 .. p2}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 73
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 83
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    .line 93
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    .line 94
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 118
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    .line 168
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    .line 179
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 180
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    .line 181
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    .line 187
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    .line 202
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mWidthMeasureSpec:I

    .line 208
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 219
    const/high16 v4, 0x3e80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    .line 225
    const/high16 v4, 0x3e80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    .line 249
    const/high16 v4, 0x3f00

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    .line 251
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    .line 258
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/oppo/widget/OppoDragSortListView$1;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    .line 318
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    .line 323
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 328
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    .line 333
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .line 350
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    .line 356
    const/high16 v4, 0x3e80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    .line 363
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    .line 375
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    .line 385
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    .line 391
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    .line 402
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;-><init>(Lcom/oppo/widget/OppoDragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    .line 411
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    .line 1673
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    .line 2151
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewInvalidated:Z

    .line 416
    const/16 v26, 0x96

    .line 417
    .local v26, defaultDuration:I
    move/from16 v29, v26

    .line 418
    .local v29, removeAnimDuration:I
    move/from16 v27, v26

    .line 420
    .local v27, dropAnimDuration:I
    if-eqz p2, :cond_2

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v10, Loppo/R$styleable;->DragSortListView:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 424
    .local v24, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/16 v10, 0xb

    const/4 v11, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    .line 427
    const/16 v4, 0x10

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    .line 429
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v4, :cond_0

    .line 430
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    .line 434
    :cond_0
    const/16 v4, 0x11

    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    .line 435
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 437
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    .line 439
    const/4 v4, 0x0

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/high16 v13, 0x3f40

    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    .line 442
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    .line 444
    const/16 v4, 0xc

    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 447
    .local v28, frac:F
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->setDragScrollStart(F)V

    .line 449
    const/16 v4, 0xd

    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    .line 452
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 455
    const/4 v4, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v27

    .line 458
    const/16 v4, 0xa

    const/4 v10, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 461
    .local v33, useDefault:Z
    if-eqz v33, :cond_1

    .line 462
    const/4 v4, 0x5

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    .line 464
    .local v30, removeEnabled:Z
    const/16 v4, 0xf

    const/4 v10, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 466
    .local v7, removeMode:I
    const/4 v4, 0x4

    const/4 v10, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 467
    .local v32, sortEnabled:Z
    const/4 v4, 0x6

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 469
    .local v6, dragInitMode:I
    const/4 v4, 0x7

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 470
    .local v5, dragHandleId:I
    const/16 v4, 0x8

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 472
    .local v9, flingHandleId:I
    const/16 v4, 0x9

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 474
    .local v8, clickRemoveId:I
    const/16 v4, 0xe

    const/high16 v10, -0x100

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    .line 477
    .local v25, bgColor:I
    new-instance v3, Lcom/oppo/widget/OppoDragSortController;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/oppo/widget/OppoDragSortController;-><init>(Lcom/oppo/widget/OppoDragSortListView;IIIII)V

    .line 479
    .local v3, controller:Lcom/oppo/widget/OppoDragSortController;
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/oppo/widget/OppoDragSortController;->setRemoveEnabled(Z)V

    .line 480
    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/oppo/widget/OppoDragSortController;->setSortEnabled(Z)V

    .line 481
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/oppo/widget/OppoDragSortController;->setBackgroundColor(I)V

    .line 483
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoDragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    .end local v3           #controller:Lcom/oppo/widget/OppoDragSortController;
    .end local v5           #dragHandleId:I
    .end local v6           #dragInitMode:I
    .end local v7           #removeMode:I
    .end local v8           #clickRemoveId:I
    .end local v9           #flingHandleId:I
    .end local v25           #bgColor:I
    .end local v30           #removeEnabled:Z
    .end local v32           #sortEnabled:Z
    :cond_1
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    .end local v24           #a:Landroid/content/res/TypedArray;
    .end local v28           #frac:F
    .end local v33           #useDefault:Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0xc080022

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoDragSortListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 493
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    .line 495
    const/high16 v31, 0x3f00

    .line 496
    .local v31, smoothness:F
    if-lez v29, :cond_3

    .line 497
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-direct {v4, v0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    .line 500
    :cond_3
    if-lez v27, :cond_4

    .line 501
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v27

    invoke-direct {v4, v0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    .line 504
    :cond_4
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 508
    new-instance v4, Lcom/oppo/widget/OppoDragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/oppo/widget/OppoDragSortListView$2;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 526
    return-void

    .line 442
    .end local v31           #smoothness:F
    .restart local v24       #a:Landroid/content/res/TypedArray;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoDragSortListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoDragSortListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1702(Lcom/oppo/widget/OppoDragSortListView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1716(Lcom/oppo/widget/OppoDragSortListView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$2300(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2400(Lcom/oppo/widget/OppoDragSortListView;)Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2600(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2702(Lcom/oppo/widget/OppoDragSortListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/oppo/widget/OppoDragSortListView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoDragSortListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1831
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1832
    .local v2, first:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1834
    .local v4, last:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1835
    .local v0, begin:I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1837
    .local v1, end:I
    move v3, v0

    .local v3, i:I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1838
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1839
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1840
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/oppo/widget/OppoDragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1837
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1843
    .end local v5           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1848
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1849
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1851
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .parameter "position"
    .parameter "v"
    .parameter "invalidChildHeight"

    .prologue
    .line 1858
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1860
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1861
    const/4 v0, -0x2

    .line 1866
    .local v0, height:I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1867
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1868
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1872
    :cond_0
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1873
    :cond_1
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1874
    check-cast v4, Lcom/oppo/widget/OppoDragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDragSortItemView;->setGravity(I)V

    .line 1882
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1883
    .local v2, oldVis:I
    const/4 v3, 0x0

    .line 1885
    .local v3, vis:I
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1886
    const/4 v3, 0x4

    .line 1889
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1890
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    :cond_4
    return-void

    .line 1863
    .end local v0           #height:I
    .end local v2           #oldVis:I
    .end local v3           #vis:I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_0

    .line 1875
    :cond_6
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1876
    check-cast v4, Lcom/oppo/widget/OppoDragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1510
    .local v0, firstPos:I
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1513
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1514
    .local v2, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 1515
    .local v1, top:I
    if-eqz v2, :cond_0

    .line 1516
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1519
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoDragSortListView;->setSelectionFromTop(II)V

    .line 1521
    .end local v1           #top:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .parameter "movePos"
    .parameter "moveItem"
    .parameter "oldFirstExpPos"
    .parameter "oldSecondExpPos"

    .prologue
    .line 2026
    const/4 v0, 0x0

    .line 2028
    .local v0, adjust:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2030
    .local v1, childHeight:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2031
    .local v6, moveHeightBefore:I
    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2033
    .local v5, moveHeightAfter:I
    move v4, v6

    .line 2034
    .local v4, moveBlankBefore:I
    move v3, v5

    .line 2035
    .local v3, moveBlankAfter:I
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2036
    sub-int/2addr v4, v1

    .line 2037
    sub-int/2addr v3, v1

    .line 2040
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    .line 2041
    .local v2, maxBlank:I
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2042
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2045
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2046
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2047
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2065
    :cond_2
    :goto_0
    return v0

    .line 2049
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2050
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2051
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2052
    :cond_4
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2053
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2055
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2058
    :cond_6
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2059
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2060
    :cond_7
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2061
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .parameter "cip"
    .parameter "rangeStart"
    .parameter "rangeEnd"
    .parameter "runStart"
    .parameter "runEnd"

    .prologue
    const/4 v5, 0x0

    .line 2648
    const/4 v4, 0x0

    .line 2650
    .local v4, runCount:I
    invoke-static {p0, p1, p2}, Lcom/oppo/widget/OppoDragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2651
    .local v2, i:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2695
    :goto_0
    return v5

    .line 2655
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2656
    .local v3, position:I
    move v1, v3

    .line 2657
    .local v1, currentRunStart:I
    add-int/lit8 v0, v1, 0x1

    .line 2658
    .local v0, currentRunEnd:I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2659
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2658
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2663
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2664
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2666
    :cond_2
    aput v1, p3, v4

    .line 2667
    aput v0, p4, v4

    .line 2668
    add-int/lit8 v4, v4, 0x1

    .line 2669
    move v1, v3

    .line 2670
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 2674
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2679
    move v0, p1

    .line 2681
    :cond_4
    aput v1, p3, v4

    .line 2682
    aput v0, p4, v4

    .line 2683
    add-int/lit8 v4, v4, 0x1

    .line 2685
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 2686
    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    .line 2691
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2692
    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    .line 2695
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 7
    .parameter "position"
    .parameter "childHeight"

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v0

    .line 1983
    .local v0, divHeight:I
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 1984
    .local v2, isSliding:Z
    :goto_0
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .line 1985
    .local v3, maxNonSrcBlankHeight:I
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 1989
    .local v4, slideHeight:I
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 1990
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    .line 1991
    if-eqz v2, :cond_1

    .line 1992
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .line 2015
    .local v1, height:I
    :goto_1
    return v1

    .line 1983
    .end local v1           #height:I
    .end local v2           #isSliding:Z
    .end local v3           #maxNonSrcBlankHeight:I
    .end local v4           #slideHeight:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1994
    .restart local v2       #isSliding:Z
    .restart local v3       #maxNonSrcBlankHeight:I
    .restart local v4       #slideHeight:I
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    .restart local v1       #height:I
    goto :goto_1

    .line 1996
    .end local v1           #height:I
    :cond_2
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    .line 1998
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .restart local v1       #height:I
    goto :goto_1

    .line 2000
    .end local v1           #height:I
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    .restart local v1       #height:I
    goto :goto_1

    .line 2002
    .end local v1           #height:I
    :cond_4
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    .line 2003
    if-eqz v2, :cond_5

    .line 2004
    add-int v1, p2, v4

    .restart local v1       #height:I
    goto :goto_1

    .line 2006
    .end local v1           #height:I
    :cond_5
    add-int v1, p2, v3

    .restart local v1       #height:I
    goto :goto_1

    .line 2008
    .end local v1           #height:I
    :cond_6
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    .line 2010
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .restart local v1       #height:I
    goto :goto_1

    .line 2012
    .end local v1           #height:I
    :cond_7
    move v1, p2

    .restart local v1       #height:I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .parameter "position"
    .parameter "item"
    .parameter "invalidChildHeight"

    .prologue
    .line 1976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    .line 1977
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1447
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    .line 1448
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1449
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1450
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 1451
    return-void
.end method

.method private computeIsWillDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1570
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1572
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->pointToPosition(II)I

    move-result v2

    .line 1574
    .local v2, itemnum:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1575
    .local v1, item:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1576
    const-string v6, "drag_view"

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1577
    .local v0, dragger:Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1578
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1579
    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v4, v6, :cond_0

    .line 1580
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    .line 1587
    .end local v0           #dragger:Landroid/view/View;
    .end local v3           #r:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 1582
    .restart local v0       #dragger:Landroid/view/View;
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_0
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    goto :goto_0

    .line 1585
    .end local v0           #dragger:Landroid/view/View;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_1
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    goto :goto_0
.end method

.method private continueDrag(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1767
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1768
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1770
    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V

    .line 1772
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1773
    .local v2, minY:I
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1776
    .local v1, maxY:I
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1778
    .local v0, currentScrollDir:I
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1782
    if-eq v0, v6, :cond_0

    .line 1784
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1788
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->startScrolling(I)V

    .line 1807
    :cond_1
    :goto_0
    return-void

    .line 1789
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1793
    if-eq v0, v6, :cond_3

    .line 1795
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1799
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1800
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1805
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2383
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2384
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2387
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    .line 2388
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->invalidate()V

    .line 2390
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1642
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    .line 1643
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    .line 1644
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1645
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1647
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 1648
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    .line 1649
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;->clear()V

    .line 1650
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    .line 1651
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .parameter "movePos"
    .parameter "moveItem"
    .parameter "forceInvalidate"

    .prologue
    .line 2291
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    .line 2293
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updateFloatView()V

    .line 2295
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 2296
    .local v0, oldFirstExpPos:I
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 2298
    .local v1, oldSecondExpPos:I
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updatePositions()Z

    move-result v3

    .line 2300
    .local v3, updated:Z
    if-eqz v3, :cond_0

    .line 2301
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustAllItems()V

    .line 2302
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2305
    .local v2, scroll:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/oppo/widget/OppoDragSortListView;->setSelectionFromTop(II)V

    .line 2306
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->layoutChildren()V

    .line 2309
    .end local v2           #scroll:I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2310
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->invalidate()V

    .line 2313
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    .line 2314
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .parameter "forceInvalidate"

    .prologue
    .line 2280
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2281
    .local v1, movePos:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2283
    .local v0, moveItem:Landroid/view/View;
    if-nez v0, :cond_0

    .line 2288
    :goto_0
    return-void

    .line 2287
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1478
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem(I)V

    .line 1479
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1487
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1490
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoDragSortListView$RemoveListener;->remove(I)V

    .line 1494
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    .line 1496
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustOnReorder()V

    .line 1497
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->clearPositions()V

    .line 1500
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1501
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1505
    :goto_0
    return-void

    .line 1503
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .parameter "expPosition"
    .parameter "canvas"

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 716
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v3

    .line 719
    .local v3, dividerHeight:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 722
    .local v4, expItem:Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v5

    .line 724
    .local v5, l:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 728
    .local v6, r:I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 730
    .local v1, childHeight:I
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 731
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 732
    .local v7, t:I
    add-int v0, v7, v3

    .line 740
    .local v0, b:I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 741
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 742
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 743
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 744
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 747
    .end local v0           #b:I
    .end local v1           #childHeight:I
    .end local v4           #expItem:Landroid/view/ViewGroup;
    .end local v5           #l:I
    .end local v6           #r:I
    .end local v7           #t:I
    :cond_0
    return-void

    .line 734
    .restart local v1       #childHeight:I
    .restart local v4       #expItem:Landroid/view/ViewGroup;
    .restart local v5       #l:I
    .restart local v6       #r:I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 735
    .restart local v0       #b:I
    sub-int v7, v0, v3

    .restart local v7       #t:I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1456
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1458
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1460
    .local v0, numHeaders:I
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/oppo/widget/OppoDragSortListView$DropListener;->drop(II)V

    .line 1463
    .end local v0           #numHeaders:I
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    .line 1465
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustOnReorder()V

    .line 1466
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->clearPositions()V

    .line 1467
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustAllItems()V

    .line 1470
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1471
    const/4 v1, 0x3

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1475
    :goto_0
    return-void

    .line 1473
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .parameter "sba"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 2711
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2712
    .local v1, size:I
    invoke-static {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2713
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2716
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2717
    :cond_1
    const/4 v0, -0x1

    .line 2719
    .end local v0           #i:I
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1895
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return v1

    .line 1899
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1901
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1904
    invoke-direct {p0, p1, v4, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1908
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1909
    .local v1, childHeight:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1914
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1915
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1918
    .local v2, type:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1919
    .local v3, typeCount:I
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1920
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1923
    :cond_3
    if-ltz v2, :cond_5

    .line 1924
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1925
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1926
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1936
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1939
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1928
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1932
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .parameter "position"
    .parameter "item"
    .parameter "invalidChildHeight"

    .prologue
    const/4 v1, 0x0

    .line 1946
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1972
    .end local p2
    :cond_0
    :goto_0
    return v1

    .line 1951
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1952
    :cond_2
    move-object v0, p2

    .line 1957
    .end local p2
    .local v0, child:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1959
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1960
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1961
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1954
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p2
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #child:Landroid/view/View;
    goto :goto_1

    .line 1965
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1967
    .local v1, childHeight:I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1968
    :cond_5
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->measureItem(Landroid/view/View;)V

    .line 1969
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 806
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 876
    .local v7, numHeaders:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 882
    .local v6, numFooters:I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 927
    :goto_0
    return v3

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v2

    .line 890
    .local v2, divHeight:I
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 891
    .local v5, maxBlankHeight:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v1

    .line 892
    .local v1, childHeight:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v4

    .line 896
    .local v4, itemHeight:I
    move v8, p2

    .line 897
    .local v8, otop:I
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 899
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 900
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 901
    add-int v9, p2, v4

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 921
    :cond_2
    :goto_1
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 922
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, edge:I
    goto :goto_0

    .line 903
    .end local v3           #edge:I
    :cond_3
    sub-int v0, v4, v1

    .line 904
    .local v0, blankHeight:I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 905
    goto :goto_1

    .line 906
    .end local v0           #blankHeight:I
    :cond_4
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 907
    sub-int v8, p2, v5

    goto :goto_1

    .line 912
    :cond_5
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 913
    add-int v8, p2, v5

    goto :goto_1

    .line 914
    :cond_6
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 915
    sub-int v0, v4, v1

    .line 916
    .restart local v0       #blankHeight:I
    add-int v8, p2, v0

    goto :goto_1

    .line 924
    .end local v0           #blankHeight:I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3       #edge:I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .parameter "sba"
    .parameter "key"

    .prologue
    .line 2723
    const/4 v1, 0x0

    .line 2724
    .local v1, low:I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2725
    .local v0, high:I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2726
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2727
    .local v2, middle:I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2728
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2730
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2733
    .end local v2           #middle:I
    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewInvalidated:Z

    .line 2155
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->measureItem(Landroid/view/View;)V

    .line 2089
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    .line 2090
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    .line 2092
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 2069
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2070
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2071
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2073
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2075
    :cond_0
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2078
    .local v2, wspec:I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2079
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2083
    .local v0, hspec:I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2084
    return-void

    .line 2081
    .end local v0           #hspec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #hspec:I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 811
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .parameter "value"
    .parameter "offset"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 2699
    sub-int v0, p3, p2

    .line 2701
    .local v0, windowSize:I
    add-int/2addr p0, p1

    .line 2702
    if-ge p0, p2, :cond_1

    .line 2703
    add-int/2addr p0, v0

    .line 2707
    :cond_0
    :goto_0
    return p0

    .line 2704
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2705
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 1654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1655
    .local v0, action:I
    if-eqz v0, :cond_0

    .line 1656
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastX:I

    .line 1657
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    .line 1659
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    .line 1660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    .line 1661
    if-nez v0, :cond_1

    .line 1662
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastX:I

    .line 1663
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    .line 1665
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mOffsetX:I

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mOffsetY:I

    .line 1667
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2321
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2322
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    iget v11, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2323
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/oppo/widget/OppoDragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2326
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2327
    .local v2, floatX:I
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2330
    .local v3, floatY:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2331
    .local v7, padLeft:I
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2332
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2338
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2339
    .local v6, numHeaders:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2340
    .local v5, numFooters:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2341
    .local v1, firstPos:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2345
    .local v4, lastPos:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v8

    .line 2346
    .local v8, topLimit:I
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    if-ge v1, v6, :cond_2

    .line 2347
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2349
    :cond_2
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2350
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2351
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2356
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2357
    .local v0, bottomLimit:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2359
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2361
    :cond_4
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2362
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2363
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2371
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2372
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2378
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    .line 2379
    return-void

    .line 2333
    .end local v0           #bottomLimit:I
    .end local v1           #firstPos:I
    .end local v4           #lastPos:I
    .end local v5           #numFooters:I
    .end local v6           #numHeaders:I
    .end local v8           #topLimit:I
    :cond_7
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2334
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2373
    .restart local v0       #bottomLimit:I
    .restart local v1       #firstPos:I
    .restart local v4       #lastPos:I
    .restart local v5       #numFooters:I
    .restart local v6       #numHeaders:I
    .restart local v8       #topLimit:I
    :cond_8
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2374
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 932
    .local v9, first:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 933
    .local v23, startPos:I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 935
    .local v25, startView:Landroid/view/View;
    if-nez v25, :cond_0

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 937
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 939
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 941
    .local v24, startTop:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 943
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 944
    .local v5, edge:I
    move v13, v5

    .line 946
    .local v13, lastEdge:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v4

    .line 950
    .local v4, divHeight:I
    move/from16 v11, v23

    .line 951
    .local v11, itemPos:I
    move/from16 v12, v24

    .line 952
    .local v12, itemTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 955
    :goto_0
    if-ltz v11, :cond_1

    .line 956
    add-int/lit8 v11, v11, -0x1

    .line 957
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v10

    .line 959
    if-nez v11, :cond_7

    .line 960
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 999
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1000
    .local v15, numHeaders:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1002
    .local v14, numFooters:I
    const/16 v26, 0x0

    .line 1004
    .local v26, updated:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1005
    .local v16, oldFirstExpPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1006
    .local v17, oldSecondExpPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1008
    .local v18, oldSlideFrac:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1009
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1012
    .local v7, edgeToEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1013
    move v6, v5

    .line 1014
    .local v6, edgeBottom:I
    move v8, v13

    .line 1021
    .local v8, edgeTop:I
    :goto_2
    const/high16 v27, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1022
    .local v21, slideRgnHeight:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1023
    .local v22, slideRgnHeightF:F
    add-int v20, v8, v21

    .line 1024
    .local v20, slideEdgeTop:I
    sub-int v19, v6, v21

    .line 1027
    .local v19, slideEdgeBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1028
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1029
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1030
    const/high16 v27, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    .line 1051
    .end local v6           #edgeBottom:I
    .end local v7           #edgeToEdge:I
    .end local v8           #edgeTop:I
    .end local v19           #slideEdgeBottom:I
    .end local v20           #slideEdgeTop:I
    .end local v21           #slideRgnHeight:I
    .end local v22           #slideRgnHeightF:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1052
    move v11, v15

    .line 1053
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1054
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1061
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1063
    :cond_3
    const/16 v26, 0x1

    .line 1066
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/oppo/widget/OppoDragSortListView$DragListener;->drag(II)V

    .line 1071
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 1072
    const/16 v26, 0x1

    .line 1075
    :cond_6
    return v26

    .line 964
    .end local v14           #numFooters:I
    .end local v15           #numHeaders:I
    .end local v16           #oldFirstExpPos:I
    .end local v17           #oldSecondExpPos:I
    .end local v18           #oldSlideFrac:F
    .end local v26           #updated:Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 965
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 972
    move v13, v5

    goto/16 :goto_0

    .line 977
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v3

    .line 978
    .local v3, count:I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 979
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 980
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 981
    goto/16 :goto_1

    .line 984
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 985
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v10

    .line 986
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 994
    move v13, v5

    .line 995
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1016
    .end local v3           #count:I
    .restart local v7       #edgeToEdge:I
    .restart local v14       #numFooters:I
    .restart local v15       #numHeaders:I
    .restart local v16       #oldFirstExpPos:I
    .restart local v17       #oldSecondExpPos:I
    .restart local v18       #oldSlideFrac:F
    .restart local v26       #updated:Z
    :cond_a
    move v8, v5

    .line 1017
    .restart local v8       #edgeTop:I
    move v6, v13

    .restart local v6       #edgeBottom:I
    goto/16 :goto_2

    .line 1033
    .restart local v19       #slideEdgeBottom:I
    .restart local v20       #slideEdgeTop:I
    .restart local v21       #slideRgnHeight:I
    .restart local v22       #slideRgnHeightF:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1034
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1035
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1037
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1038
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1039
    const/high16 v27, 0x3f00

    const/high16 v28, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1046
    .end local v6           #edgeBottom:I
    .end local v7           #edgeToEdge:I
    .end local v8           #edgeTop:I
    .end local v19           #slideEdgeBottom:I
    .end local v20           #slideEdgeTop:I
    .end local v21           #slideRgnHeight:I
    .end local v22           #slideRgnHeightF:F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1047
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1055
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1057
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1058
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1810
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v2

    .line 1811
    .local v2, padTop:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1812
    .local v1, listHeight:I
    int-to-float v0, v1

    .line 1814
    .local v0, heightF:F
    int-to-float v3, v2

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    .line 1815
    int-to-float v3, v2

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    .line 1817
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartY:I

    .line 1818
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartY:I

    .line 1820
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollHeight:F

    .line 1821
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollHeight:F

    .line 1822
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1432
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1434
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    .line 1435
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->clearPositions()V

    .line 1436
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustAllItems()V

    .line 1438
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1439
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 2758
    const-string v1, "DragListItem"

    const-string v2, "computeScroll -------------------------------- [^ ^]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    invoke-super {p0}, Lcom/oppo/widget/OppoListView;->computeScroll()V

    .line 2760
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 2761
    .local v0, currentScrollDir:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2762
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->run()V

    .line 2764
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 751
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 753
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 755
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 756
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoDragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 758
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 759
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoDragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 766
    .local v9, w:I
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 768
    .local v8, h:I
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 770
    .local v11, x:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v10

    .line 771
    .local v10, width:I
    if-gez v11, :cond_2

    .line 772
    neg-int v11, v11

    .line 775
    :cond_2
    if-ge v11, v10, :cond_4

    .line 776
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 777
    .local v7, alphaMod:F
    mul-float/2addr v7, v7

    .line 782
    :goto_0
    const/high16 v0, 0x437f

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 784
    .local v5, alpha:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 786
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 787
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 790
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 791
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 792
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 795
    .end local v5           #alpha:I
    .end local v7           #alphaMod:F
    .end local v8           #h:I
    .end local v9           #w:I
    .end local v10           #width:I
    .end local v11           #x:I
    :cond_3
    return-void

    .line 779
    .restart local v8       #h:I
    .restart local v9       #w:I
    .restart local v10       #width:I
    .restart local v11       #x:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #alphaMod:F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2455
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2109
    invoke-super {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    .line 2110
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    if-eqz v0, :cond_0

    .line 2111
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2114
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_1

    .line 2118
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->measureFloatView()V

    .line 2120
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2121
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    .line 2123
    :cond_2
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1670
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2581
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2582
    .local v0, cip:Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2583
    .local v3, rangeStart:I
    move v2, p2

    .line 2584
    .local v2, rangeEnd:I
    if-ge p2, p1, :cond_0

    .line 2585
    move v3, p2

    .line 2586
    move v2, p1

    .line 2588
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2590
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2591
    .local v6, runStart:[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2592
    .local v5, runEnd:[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/oppo/widget/OppoDragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2593
    .local v4, runCount:I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2611
    :cond_1
    return-void

    .line 2599
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2600
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2601
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2602
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2606
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2607
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2608
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1421
    .local v0, count:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/oppo/widget/OppoDragSortListView$DropListener;->drop(II)V

    .line 1425
    .end local v0           #count:I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x4

    .line 2127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2129
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2148
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2131
    :pswitch_0
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 2132
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->cancelDrag()V

    .line 2134
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2138
    :pswitch_1
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 2139
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->stopDrag(Z)Z

    .line 2141
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2144
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1080
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1082
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->appendState()V

    .line 1085
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 1677
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->computeIsWillDrag(Landroid/view/MotionEvent;)V

    .line 1679
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    if-nez v3, :cond_2

    .line 1680
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1727
    :cond_1
    :goto_0
    return v1

    .line 1683
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1684
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 1686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1688
    .local v0, action:I
    if-nez v0, :cond_4

    .line 1689
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-eqz v3, :cond_3

    .line 1691
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1692
    goto :goto_0

    .line 1694
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    .line 1697
    :cond_4
    const/4 v1, 0x0

    .line 1700
    .local v1, intercept:Z
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1702
    const/4 v1, 0x1

    .line 1723
    :goto_1
    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1724
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1704
    :cond_6
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1705
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    .line 1706
    const/4 v1, 0x1

    .line 1709
    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 1715
    :pswitch_0
    if-eqz v1, :cond_8

    .line 1716
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1712
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1718
    :cond_8
    const/4 v3, 0x2

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2096
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoListView;->onMeasure(II)V

    .line 2098
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->measureFloatView()V

    .line 2102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    .line 2104
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mWidthMeasureSpec:I

    .line 2105
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1826
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoListView;->onSizeChanged(IIII)V

    .line 1827
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updateScrollStarts()V

    .line 1828
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 1591
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1592
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1638
    :cond_0
    :goto_0
    return v2

    .line 1596
    :cond_1
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    if-nez v4, :cond_3

    .line 1597
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1600
    :cond_3
    const/4 v2, 0x0

    .line 1602
    .local v2, more:Z
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 1603
    .local v1, lastCallWasIntercept:Z
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 1605
    if-nez v1, :cond_4

    .line 1606
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1610
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1611
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1612
    const/4 v2, 0x1

    goto :goto_0

    .line 1618
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-nez v3, :cond_6

    .line 1619
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1620
    const/4 v2, 0x1

    .line 1624
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1626
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1632
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1633
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1629
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, -0x1

    .line 2625
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2627
    .local v0, cip:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2644
    :cond_0
    return-void

    .line 2630
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2631
    .local v6, runStart:[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2632
    .local v5, runEnd:[I
    move v3, p1

    .line 2633
    .local v3, rangeStart:I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2634
    .local v2, rangeEnd:I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/oppo/widget/OppoDragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2635
    .local v4, runCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2636
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2640
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2642
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    .line 1362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortListView;->removeItem(IF)V

    .line 1363
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .parameter "which"
    .parameter "velocityX"

    .prologue
    const/4 v3, 0x4

    .line 1373
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1375
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1377
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    .line 1378
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1379
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1380
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 1381
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1382
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1383
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    .end local v0           #v:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1388
    iput p2, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    .line 1390
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1391
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1401
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1402
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->start()V

    .line 1407
    :cond_3
    :goto_1
    return-void

    .line 1393
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1396
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1404
    :cond_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2020
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2021
    invoke-super {p0}, Lcom/oppo/widget/OppoListView;->requestLayout()V

    .line 2023
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 560
    if-eqz p1, :cond_4

    .line 561
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    :goto_0
    new-instance v1, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;-><init>(Lcom/oppo/widget/OppoDragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    .line 570
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 572
    instance-of v1, p1, Lcom/oppo/widget/OppoDragSortListView$DropListener;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 573
    check-cast v1, Lcom/oppo/widget/OppoDragSortListView$DropListener;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->setDropListener(Lcom/oppo/widget/OppoDragSortListView$DropListener;)V

    .line 575
    :cond_1
    instance-of v1, p1, Lcom/oppo/widget/OppoDragSortListView$DragListener;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 576
    check-cast v1, Lcom/oppo/widget/OppoDragSortListView$DragListener;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->setDragListener(Lcom/oppo/widget/OppoDragSortListView$DragListener;)V

    .line 578
    :cond_2
    instance-of v1, p1, Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    if-eqz v1, :cond_3

    .line 579
    check-cast p1, Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setRemoveListener(Lcom/oppo/widget/OppoDragSortListView$RemoveListener;)V

    .line 585
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-super {p0, v1}, Lcom/oppo/widget/OppoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 586
    return-void

    .line 564
    .restart local p1
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OppoDragSortListView"

    const-string v2, "observer is not register"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    goto :goto_1
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2451
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    .line 2452
    return-void
.end method

.method public setDragListener(Lcom/oppo/widget/OppoDragSortListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

    .line 2441
    return-void
.end method

.method public setDragScrollProfile(Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;)V
    .locals 0
    .parameter "ssp"

    .prologue
    .line 2528
    if-eqz p1, :cond_0

    .line 2529
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    .line 2531
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .parameter "heightFraction"

    .prologue
    .line 1737
    invoke-virtual {p0, p1, p1}, Lcom/oppo/widget/OppoDragSortListView;->setDragScrollStarts(FF)V

    .line 1738
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .parameter "upperFrac"
    .parameter "lowerFrac"

    .prologue
    const/high16 v1, 0x3f00

    .line 1748
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1749
    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    .line 1754
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1755
    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    .line 1760
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updateScrollStarts()V

    .line 1763
    :cond_0
    return-void

    .line 1751
    :cond_1
    iput p2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1757
    :cond_2
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/oppo/widget/OppoDragSortListView$DragSortListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2515
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setDropListener(Lcom/oppo/widget/OppoDragSortListView$DropListener;)V

    .line 2516
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setDragListener(Lcom/oppo/widget/OppoDragSortListView$DragListener;)V

    .line 2517
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setRemoveListener(Lcom/oppo/widget/OppoDragSortListView$RemoveListener;)V

    .line 2518
    return-void
.end method

.method public setDropListener(Lcom/oppo/widget/OppoDragSortListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2468
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    .line 2469
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 533
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 534
    return-void
.end method

.method public setFloatViewManager(Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .line 2437
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .parameter "max"

    .prologue
    .line 547
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    .line 548
    return-void
.end method

.method public setRemoveListener(Lcom/oppo/widget/OppoDragSortListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2480
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    .line 2481
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .parameter "position"
    .parameter "dragFlags"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v0, 0x0

    .line 2177
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2186
    :cond_0
    :goto_0
    return v0

    .line 2181
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2183
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2186
    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoDragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .parameter "position"
    .parameter "floatView"
    .parameter "dragFlags"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2210
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return v2

    .line 2215
    :cond_1
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    if-eqz v4, :cond_2

    .line 2216
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    goto :goto_0

    .line 2220
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2221
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2224
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    .line 2225
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    .line 2226
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2227
    .local v0, pos:I
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 2228
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 2229
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    .line 2230
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 2233
    iput v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 2234
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    .line 2235
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    or-int/2addr v2, p3

    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    .line 2237
    iput-object p2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    .line 2238
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->measureFloatView()V

    .line 2240
    iput p4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaX:I

    .line 2241
    iput p5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    .line 2242
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragStartY:I

    .line 2245
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 2246
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 2249
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2251
    .local v1, srcItem:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2252
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2255
    :cond_4
    iget-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v2, :cond_5

    .line 2256
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->startTracking()V

    .line 2261
    :cond_5
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    packed-switch v2, :pswitch_data_0

    .line 2270
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->requestLayout()V

    .line 2272
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mLiftAnimator:Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;

    if-eqz v2, :cond_6

    .line 2273
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mLiftAnimator:Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->start()V

    :cond_6
    move v2, v3

    .line 2276
    goto :goto_0

    .line 2263
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2266
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .parameter "remove"

    .prologue
    .line 1533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    .line 1534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .parameter "remove"
    .parameter "velocityX"

    .prologue
    const/4 v0, 0x1

    .line 1544
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1545
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1547
    if-eqz p1, :cond_1

    .line 1548
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/oppo/widget/OppoDragSortListView;->removeItem(IF)V

    .line 1557
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1558
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->stopTracking()V

    .line 1564
    :cond_0
    :goto_1
    return v0

    .line 1550
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1551
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1553
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1564
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .parameter "remove"
    .parameter "velocityX"

    .prologue
    .line 1539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    .line 1540
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoDragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
