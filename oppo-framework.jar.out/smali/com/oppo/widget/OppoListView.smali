.class public Lcom/oppo/widget/OppoListView;
.super Landroid/widget/ListView;
.source "OppoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_MOTION:Z = true

.field public static final SCROLL_HORIZONTAL_LTR:I = 0x1

.field public static final SCROLL_HORIZONTAL_NULL:I = 0x0

.field public static final SCROLL_HORIZONTAL_RTL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoListView"


# instance fields
.field private delayedScroll:Ljava/lang/Runnable;

.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDividerItemHeight:I

.field private mFillDivider:Z

.field private mFirstPos:I

.field private mFlag:Z

.field private mIsNotDrawFirstLine:Z

.field private mItemBottom:I

.field private mItemCount:I

.field private mItemToAppear:Z

.field private mItemTop:I

.field private mLastPos:I

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mNeedDrawDivider:Z

.field private mPointY:F

.field private mPositionOffset:F

.field private mReferPosition:I

.field private mRightOffset:I

.field private mScrollDirection:I

.field private mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

.field private mSpringEnabled:Z

.field private mUpScroll:Z

.field private mViewPager:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const v0, 0xc010400

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v7, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 59
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 60
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 61
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 62
    iput-boolean v7, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 63
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 66
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 67
    const/4 v6, -0x1

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 266
    new-instance v6, Lcom/oppo/widget/OppoListView$1;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoListView$1;-><init>(Lcom/oppo/widget/OppoListView;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    .line 388
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    .line 390
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    .line 80
    sget-object v6, Loppo/R$styleable;->OppoListView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 84
    .local v5, springEnabled:Z
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoListView;->setSpringEnabled(Z)V

    .line 86
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 89
    .local v3, fillDivider:Z
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->setFillDivider(Z)V

    .line 91
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 92
    .local v2, dividerItemHeight:I
    if-nez v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050440

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 96
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoListView;->setDividerItemHeight(I)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 102
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 104
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050437

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    .line 106
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050438

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    .line 109
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 110
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    return v0
.end method

.method private getChildLeft(I)I
    .locals 9
    .parameter "position"

    .prologue
    const/high16 v8, 0x4040

    const v7, 0x3f19999a

    const v6, 0x3ecccccd

    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    .line 494
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingLeft()I

    move-result v0

    .line 495
    .local v0, childLeft:I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 496
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 498
    .local v1, count:I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 499
    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 532
    .end local v1           #count:I
    :cond_0
    :goto_0
    const-string v2, "OppoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildLeft position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", childLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v0

    .line 503
    .restart local v1       #count:I
    :cond_1
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 504
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 506
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 509
    :cond_3
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 510
    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    if-eqz v2, :cond_4

    .line 511
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 514
    :cond_4
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 515
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 517
    :cond_5
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_0

    .line 521
    .end local v1           #count:I
    :cond_6
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 522
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 524
    .restart local v1       #count:I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 525
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c0

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto/16 :goto_0

    .line 527
    :cond_7
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 528
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c0

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 280
    .local v3, m:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 281
    .local v6, n:I
    invoke-virtual {p0, v3, v6}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v0

    .line 282
    .local v0, curPosition:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v7, v8

    .line 283
    .local v7, xRaw:I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 285
    .local v2, location:[I
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v10, 0xc020001

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 287
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    sub-int v4, v8, v10

    .line 295
    .local v4, mLeftBorder:I
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    add-int v5, v8, v10

    .line 296
    .local v5, mRightBorder:I
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    if-le v7, v4, :cond_1

    if-ge v7, v5, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeaderViewsCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v0, v8, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFooterViewsCount()I

    move-result v10

    sub-int/2addr v8, v10

    if-ge v0, v8, :cond_1

    .line 299
    const/4 v8, 0x1

    .line 304
    .end local v4           #mLeftBorder:I
    .end local v5           #mRightBorder:I
    :goto_0
    return v8

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_0

    .line 290
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_0
    move v8, v9

    .line 292
    goto :goto_0

    .line 301
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #mLeftBorder:I
    .restart local v5       #mRightBorder:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_2

    .line 302
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_2
    move v8, v9

    .line 304
    goto :goto_0
.end method

.method private layoutChildrenForTabSlide()V
    .locals 10

    .prologue
    .line 476
    iget v7, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    if-nez v7, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const-string v7, "OppoListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layout mPositionOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mScrollDirection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v1

    .line 482
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 483
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    .line 485
    .local v5, position:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 486
    .local v6, w:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 487
    .local v2, h:I
    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoListView;->getChildLeft(I)I

    move-result v4

    .line 488
    .local v4, left:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int v8, v4, v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    .end local v0           #child:Landroid/view/View;
    .end local v2           #h:I
    .end local v4           #left:I
    .end local v5           #position:I
    .end local v6           #w:I
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->postInvalidate()V

    goto :goto_0
.end method

.method private recomputePositionInParent(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 424
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    .line 425
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    .line 426
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    if-nez v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 431
    .local v1, viewParent:Landroid/view/ViewParent;
    const-string v2, "OppoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mItemTop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mItemBottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in parent @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 434
    check-cast v0, Landroid/view/View;

    .line 435
    .local v0, parent:Landroid/view/View;
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoListView;->recomputePositionInParent(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 182
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 184
    const/4 v6, 0x0

    .line 185
    .local v6, isFullScreen:Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v1

    .line 186
    .local v1, count:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getScrollY()I

    move-result v10

    .line 187
    .local v10, scrollY:I
    const/4 v7, 0x0

    .line 188
    .local v7, lastchild:Landroid/view/View;
    if-lez v1, :cond_0

    .line 189
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {p0, v12}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 192
    :cond_0
    if-eqz v7, :cond_2

    .line 193
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_2

    .line 195
    :cond_1
    const/4 v6, 0x1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFillDivider()Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v6, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v2

    .line 201
    .local v2, dividerHeight:I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    .line 202
    .local v4, drawDividers:Z
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingBottom()I

    move-result v13

    sub-int v8, v12, v13

    .line 203
    .local v8, listBottom:I
    const/4 v5, 0x0

    .line 204
    .local v5, fillBottom:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerItemHeight()I

    move-result v3

    .line 206
    .local v3, dividerItemHeight:I
    const/4 v9, 0x0

    .line 208
    .local v9, needCheck:Z
    if-lez v1, :cond_3

    .line 209
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 212
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getPaddingLeft()I

    move-result v12

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 214
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getRight()I

    move-result v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 216
    iget-boolean v12, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    if-eqz v12, :cond_4

    .line 217
    add-int v12, v5, v3

    add-int v5, v12, v2

    .line 221
    :cond_4
    :goto_1
    if-lez v3, :cond_6

    add-int v12, v8, v10

    if-ge v5, v12, :cond_6

    if-eqz v4, :cond_6

    .line 222
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 223
    add-int v12, v5, v2

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 224
    invoke-virtual {p0, p1, v0, v11}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 225
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v12, v3

    goto :goto_1

    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v3           #dividerItemHeight:I
    .end local v4           #drawDividers:Z
    .end local v5           #fillBottom:I
    .end local v8           #listBottom:I
    .end local v9           #needCheck:Z
    :cond_5
    move v4, v11

    .line 201
    goto :goto_0

    .line 229
    .end local v2           #dividerHeight:I
    :cond_6
    return-void
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    return-void
.end method

.method public getDividerItemHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    return v0
.end method

.method public getFillDivider()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    return v0
.end method

.method public getIsNotDrawFirstLine()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    return v0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, action:I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 254
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 255
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 257
    .local v2, y:I
    iget-boolean v3, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const/4 v3, 0x1

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const-wide/16 v11, 0x32

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v9, -0x2

    .line 310
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 312
    .local v2, m:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 313
    .local v3, n:I
    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v1

    .line 314
    .local v1, curPosition:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 357
    .end local v1           #curPosition:I
    .end local v2           #m:I
    .end local v3           #n:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    .local v0, action:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_1

    .line 368
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .end local v0           #action:I
    :cond_1
    :goto_2
    return v4

    .line 316
    .restart local v1       #curPosition:I
    .restart local v2       #m:I
    .restart local v3       #n:I
    :pswitch_0
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 317
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    goto :goto_0

    .line 320
    :pswitch_1
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 323
    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v1, v5}, Lcom/oppo/widget/OppoListView;->setSelectionFromTop(II)V

    .line 327
    :cond_2
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v1, :cond_1

    if-eq v1, v7, :cond_1

    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    if-eqz v5, :cond_1

    .line 329
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-ge v5, v1, :cond_3

    .line 330
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 333
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 335
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 336
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_4

    .line 338
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 339
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v11, v12}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v5

    if-eq v1, v5, :cond_5

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_5

    .line 343
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 344
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v11, v12}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :cond_5
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    if-ne v5, v1, :cond_6

    .line 347
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 350
    :cond_6
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iput v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 351
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    goto/16 :goto_2

    .line 360
    .end local v1           #curPosition:I
    .end local v2           #m:I
    .end local v3           #n:I
    .restart local v0       #action:I
    :pswitch_3
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 361
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 362
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 363
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 364
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    goto/16 :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 358
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public setDividerItemHeight(I)V
    .locals 0
    .parameter "itemHeight"

    .prologue
    .line 156
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    .line 157
    return-void
.end method

.method public setFillDivider(Z)V
    .locals 0
    .parameter "fillDivider"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    .line 141
    return-void
.end method

.method public setIsNotDrawFirstLine(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 173
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 400
    const-string v0, "OppoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollDirection direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    if-eq v0, p1, :cond_0

    .line 402
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    .line 403
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->layoutChildrenForTabSlide()V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    .line 406
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    .line 407
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    .line 408
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    .line 410
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    .line 412
    :cond_1
    return-void
.end method

.method public setScrollDirection(ILandroid/view/View;)V
    .locals 3
    .parameter "direction"
    .parameter "pager"

    .prologue
    .line 416
    const-string v0, "OppoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollDirection direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoListView;->setScrollDirection(I)V

    .line 419
    iput-object p2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    .line 420
    invoke-direct {p0, p0}, Lcom/oppo/widget/OppoListView;->recomputePositionInParent(Landroid/view/View;)V

    .line 421
    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    .line 373
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 1
    .parameter "springEnable"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    .line 120
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setOverScrollMode(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FF)V
    .locals 3
    .parameter "y"
    .parameter "offset"

    .prologue
    .line 455
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 458
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 459
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    .line 460
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 462
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 463
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 464
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 466
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 467
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 470
    :cond_3
    iput p2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 472
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->layoutChildrenForTabSlide()V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FFZ)V
    .locals 3
    .parameter "y"
    .parameter "offset"
    .parameter "toAppear"

    .prologue
    .line 445
    const-string v0, "OppoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoListView updateHorizontalPosition() y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mItemToAppear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iput-boolean p3, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoListView;->updateHorizontalPosition(FF)V

    .line 449
    return-void
.end method
