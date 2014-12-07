.class public Lcom/oppo/widget/OppoSwitch;
.super Landroid/widget/CompoundButton;
.source "OppoSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSwitch$1;,
        Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final DEBUG:Z = false

.field private static final DURATION_SCROLL_END:I = 0xc8

.field private static final DURATION_SCROLL_START:I = 0x64

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoSwitch"

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final VELOCITY_FLING_FAST:I = 0x708


# instance fields
.field private mFastFlingVelocity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPlaySound:Z

.field private mScrollEnd:Z

.field private mScrollStart:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumbCross:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbInner:I

.field private mThumbOffset:I

.field private mThumbOuter:I

.field private mThumbPadding:I

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackWidth:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoSwitch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    const v0, 0xc010405

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 140
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 143
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    .line 144
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    .line 145
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    .line 146
    iput-boolean v6, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    .line 147
    iput-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    .line 148
    iput-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 184
    sget-object v3, Landroid/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    .line 190
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    sget-object v3, Loppo/R$styleable;->OppoSwitch:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 196
    .local v1, b:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    .line 197
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    .line 198
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    .line 199
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    .line 201
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 204
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x44e1

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F

    .line 208
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    .line 209
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;-><init>(Lcom/oppo/widget/OppoSwitch;Lcom/oppo/widget/OppoSwitch$1;)V

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 212
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->refreshDrawableState()V

    .line 213
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoSwitch;->setChecked(Z)V

    .line 214
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoSwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoSwitch;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F

    return v0
.end method

.method private animateThumbChangeCheckedState()V
    .locals 3

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    .line 573
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getMinPosition()I

    move-result v1

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoSwitch;->smoothScrollTo(III)V

    .line 574
    return-void
.end method

.method private animateThumbRestoreCheckedState()V
    .locals 3

    .prologue
    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    .line 578
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v1

    const/16 v2, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoSwitch;->smoothScrollTo(III)V

    .line 579
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 544
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 545
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 546
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 547
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 548
    return-void
.end method

.method private getMinPosition()I
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getThumbPos()I
    .locals 2

    .prologue
    .line 798
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 683
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 686
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 458
    iget-object v4, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 459
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchTop:I

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 460
    .local v3, thumbTop:I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchLeft:I

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    add-int v1, v4, v5

    .line 461
    .local v1, thumbLeft:I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 463
    .local v2, thumbRight:I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchBottom:I

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 464
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isOverspeed(F)Z
    .locals 3
    .parameter "velocity"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 808
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 809
    .local v0, xvel:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needChangeCheckedState()Z
    .locals 4

    .prologue
    .line 802
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundEffect()V
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->playSoundEffect(I)V

    .line 778
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    .line 779
    return-void
.end method

.method private setScrolling(Z)V
    .locals 0
    .parameter "scrolling"

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    .line 783
    return-void
.end method

.method private smoothScrollTo(III)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    move v1, p1

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 793
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setScrolling(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 556
    iput v1, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 560
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 562
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->needChangeCheckedState()Z

    move-result v1

    and-int/2addr v0, v1

    .line 564
    if-eqz v0, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    .line 569
    :goto_1
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v1

    .line 558
    goto :goto_0

    .line 567
    .restart local v0       #commitChange:Z
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbRestoreCheckedState()V

    goto :goto_1
.end method


# virtual methods
.method public changeChecked()V
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    .line 770
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    .line 772
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 747
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    if-nez v1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 751
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    .line 752
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    goto :goto_0

    .line 753
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    if-eqz v1, :cond_3

    .line 754
    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    .line 755
    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    .line 756
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setScrolling(Z)V

    goto :goto_0

    .line 757
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->playSoundEffect()V

    .line 759
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setChecked(Z)V

    .line 760
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbRestoreCheckedState()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 700
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 702
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getDrawableState()[I

    move-result-object v0

    .line 706
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    .line 714
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 674
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    add-int v0, v1, v2

    .line 675
    .local v0, padding:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 678
    :cond_0
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbCross()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbInner()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    return v0
.end method

.method public getThumbOuter()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    return v0
.end method

.method public getThumbPadding()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 723
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 724
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 725
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 726
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 691
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 692
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    sget-object v1, Lcom/oppo/widget/OppoSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSwitch;->mergeDrawableStates([I[I)[I

    .line 695
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 624
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 627
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchLeft:I

    .line 628
    .local v8, switchLeft:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchTop:I

    .line 629
    .local v10, switchTop:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchRight:I

    .line 630
    .local v9, switchRight:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchBottom:I

    .line 642
    .local v5, switchBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    move/from16 v21, v0

    sub-int v21, v9, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .line 644
    .local v13, thumbLeftDefault:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v6, v8, v21

    .line 645
    .local v6, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v7, v9, v21

    .line 646
    .local v7, switchInnerRight:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10, v7, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 648
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10, v7, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v14

    .line 653
    .local v14, thumbPos:I
    add-int v21, v6, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 654
    .local v12, thumbLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    move/from16 v21, v0

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v15, v21, v22

    .line 655
    .local v15, thumbRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbOffset:I

    move/from16 v21, v0

    add-int v16, v10, v21

    .line 656
    .local v16, thumbTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbOffset:I

    move/from16 v21, v0

    sub-int v11, v5, v21

    .line 658
    .local v11, thumbBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1, v15, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 662
    move/from16 v18, v8

    .line 663
    .local v18, trackLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackWidth:I

    move/from16 v21, v0

    add-int v19, v8, v21

    .line 664
    .local v19, trackRight:I
    move/from16 v20, v10

    .line 665
    .local v20, trackTop:I
    move/from16 v17, v5

    .line 667
    .local v17, trackBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 670
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 730
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 731
    const-class v0, Lcom/oppo/widget/OppoSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 732
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 737
    const-class v0, Lcom/oppo/widget/OppoSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 738
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 589
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 591
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    .line 593
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    add-int v2, v4, v5

    .line 594
    .local v2, switchRight:I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    sub-int v1, v4, v5

    .line 595
    .local v1, switchLeft:I
    const/4 v3, 0x0

    .line 596
    .local v3, switchTop:I
    const/4 v0, 0x0

    .line 597
    .local v0, switchBottom:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 600
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingTop()I

    move-result v3

    .line 601
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 616
    :goto_0
    iput v1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchLeft:I

    .line 617
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchTop:I

    .line 618
    iput v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchBottom:I

    .line 619
    iput v2, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchRight:I

    .line 620
    return-void

    .line 605
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 607
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 608
    goto :goto_0

    .line 611
    :sswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 612
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 429
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 430
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v6, v7, v8

    .line 431
    .local v6, trackWidth:I
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v5, v7, v8

    .line 432
    .local v5, trackHeight:I
    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 434
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 435
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v4, v7, v8

    .line 436
    .local v4, thumbWidth:I
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v3, v7, v8

    .line 437
    .local v3, thumbHeight:I
    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 439
    add-int v7, v6, v4

    iget v8, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    sub-int v2, v7, v8

    .line 440
    .local v2, switchWidth:I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 441
    .local v1, switchHeight:I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOffset:I

    .line 442
    iput v2, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    .line 443
    iput v1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    .line 444
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackWidth:I

    .line 445
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    .line 447
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 448
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getMeasuredHeight()I

    move-result v0

    .line 449
    .local v0, measuredHeight:I
    if-ge v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getMeasuredWidthAndState()I

    move-result v7

    invoke-virtual {p0, v7, v1}, Lcom/oppo/widget/OppoSwitch;->setMeasuredDimension(II)V

    .line 452
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 469
    iget-boolean v6, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v5

    .line 472
    :cond_1
    iget-object v6, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 473
    iget-object v6, p0, Lcom/oppo/widget/OppoSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 474
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 477
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 540
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 479
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 480
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 481
    .local v4, y:F
    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoSwitch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 482
    iput v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 483
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    .line 484
    iput v4, p0, Lcom/oppo/widget/OppoSwitch;->mTouchY:F

    goto :goto_1

    .line 490
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 496
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 497
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 498
    .restart local v4       #y:F
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 499
    :cond_4
    iput v8, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 500
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 501
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    .line 502
    iput v4, p0, Lcom/oppo/widget/OppoSwitch;->mTouchY:F

    goto :goto_0

    .line 509
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 510
    .restart local v3       #x:F
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    sub-float v1, v3, v6

    .line 511
    .local v1, dx:F
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getMinPosition()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v8

    iget v9, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 513
    .local v2, newPos:F
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_0

    .line 514
    iput v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    .line 515
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    .line 516
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    .line 517
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoSwitch;->isOverspeed(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 518
    iput v10, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 519
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    goto/16 :goto_0

    .line 530
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    if-ne v6, v8, :cond_5

    .line 531
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 534
    :cond_5
    iput v10, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 535
    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 490
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 584
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    .line 585
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 340
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    .line 341
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 342
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 316
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    .line 317
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 318
    return-void
.end method

.method public setThumbCross(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 270
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    .line 271
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 272
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 401
    return-void
.end method

.method public setThumbInner(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 247
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    .line 248
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 249
    return-void
.end method

.method public setThumbOuter(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 224
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    .line 225
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 226
    return-void
.end method

.method public setThumbPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 293
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    .line 294
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 295
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 365
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 366
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    return-void
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
