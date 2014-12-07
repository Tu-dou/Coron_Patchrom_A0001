.class public Lcom/android/internal/app/OppoActionBarImpl;
.super Lcom/android/internal/app/ActionBarImpl;
.source "OppoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoActionBarImpl"

.field private static final VIEW_ACTION:I = 0x3

.field private static final VIEW_CONTAINER:I = 0x1

.field private static final VIEW_CONTEXT:I = 0x4

.field private static final VIEW_OVERLAY:I = 0x0

.field private static final VIEW_SPLIT:I = 0x5

.field private static final VIEW_TOPVIS:I = 0x2


# instance fields
.field private mActionBarHeight:I

.field private mActionView:Lcom/android/internal/widget/ActionBarView;

.field private final mAllHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAllShowListener:Landroid/animation/Animator$AnimatorListener;

.field private final mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentForeground:Landroid/graphics/drawable/Drawable;

.field private mContentForegroundGravity:I

.field private mContentLayout:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

.field private mCurWindowVisibility:I

.field private mIsActionBarOverlay:Z

.field private mIsNoTitle:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mScreenHeight:I

.field private mScreenLayout:Landroid/view/View;

.field private mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mScreenWidth:I

.field private mShowHideAnimationEnabled:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    .line 97
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    .line 101
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 102
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForegroundGravity:I

    .line 103
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    .line 106
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 107
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I

    .line 108
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    .line 109
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 111
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$1;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 137
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$2;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 162
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$3;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 171
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$4;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->init(Landroid/view/Window;)V

    .line 228
    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    .line 97
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    .line 101
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 102
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForegroundGravity:I

    .line 103
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    .line 106
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 107
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I

    .line 108
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    .line 109
    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 111
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$1;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 137
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$2;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 162
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$3;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 171
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$4;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 232
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->init(Landroid/view/Window;)V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/OppoActionBarImpl;Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/app/OppoActionBarImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/OppoActionBarImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/OppoActionBarImpl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoActionBarImpl;->resizeScreenLayout(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/OppoActionBarImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/OppoActionBarImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method private changeScreenHeight()V
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/internal/app/OppoActionBarImpl;->hookCheckShowingFlags()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->resizeScreenLayout(Z)V

    .line 567
    :cond_0
    return-void
.end method

.method private clearForeground()V
    .locals 3

    .prologue
    .line 531
    const/4 v0, 0x0

    const-string v1, "OppoActionBarImpl"

    const-string v2, "clearForeground"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 534
    return-void
.end method

.method private endCurrentShowAnim()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 577
    :cond_0
    return-void
.end method

.method private getContainerHeight()I
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 544
    .local v0, containerHeight:I
    if-nez v0, :cond_0

    .line 545
    iget v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 547
    :cond_0
    return v0
.end method

.method private init(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, decor:Landroid/view/View;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    .line 491
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mIsNoTitle:Z

    .line 492
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mIsActionBarOverlay:Z

    .line 493
    iget-boolean v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mIsActionBarOverlay:Z

    if-nez v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    .line 496
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    .line 497
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 498
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForegroundGravity:I

    .line 499
    iget-boolean v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mIsNoTitle:Z

    if-eqz v1, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->clearForeground()V

    .line 502
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->initScreenInfo()V

    .line 503
    return-void
.end method

.method private initScreenInfo()V
    .locals 5

    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 507
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 508
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    iget-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 511
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 512
    iget-boolean v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mIsActionBarOverlay:Z

    if-nez v3, :cond_1

    .line 513
    check-cast v2, Landroid/view/View;

    .end local v2           #parent:Landroid/view/ViewParent;
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    .line 514
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 515
    iget-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 516
    .local v1, observer:Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/internal/app/OppoActionBarImpl$5;

    invoke-direct {v3, p0}, Lcom/android/internal/app/OppoActionBarImpl$5;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 528
    .end local v1           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    :goto_0
    return-void

    .line 525
    .restart local v2       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/internal/app/ActionBarImpl;
    .locals 1
    .parameter "activity"

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl;-><init>(Landroid/app/Activity;)V

    .line 242
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/android/internal/app/ActionBarImpl;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl;-><init>(Landroid/app/Dialog;)V

    .line 249
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private resizeScreenLayout(Z)V
    .locals 5
    .parameter "change"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 553
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 554
    iget v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->getContainerHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 558
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-string v2, "OppoActionBarImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeScreenLayout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 555
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private restoreForeground()V
    .locals 3

    .prologue
    .line 537
    const/4 v0, 0x0

    const-string v1, "OppoActionBarImpl"

    const-string v2, "restoreForeground"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForegroundGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 540
    return-void
.end method

.method private setCurrentShowAnim(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 571
    return-void
.end method


# virtual methods
.method public addAfterAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimator(Landroid/animation/Animator;)V

    .line 471
    return-void
.end method

.method public addAfterAnimators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, animList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimators(Ljava/util/List;)V

    .line 475
    return-void
.end method

.method public addBeforeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimator(Landroid/animation/Animator;)V

    .line 479
    return-void
.end method

.method public addBeforeAnimators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, animList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimators(Ljava/util/List;)V

    .line 483
    return-void
.end method

.method public addHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    return-void
.end method

.method public addShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    return-void
.end method

.method public addWithAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimator(Landroid/animation/Animator;)V

    .line 463
    return-void
.end method

.method public addWithAnimators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, animList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimators(Ljava/util/List;)V

    .line 467
    return-void
.end method

.method public doHide(Z)V
    .locals 12
    .parameter "fromSystem"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v11, 0x3f80

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 371
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->endCurrentShowAnim()V

    .line 372
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->clearForeground()V

    .line 374
    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_4

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->changeScreenHeight()V

    .line 376
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 377
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 378
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 379
    .local v3, endingY:F
    if-eqz p1, :cond_1

    .line 380
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 381
    .local v4, topLeft:[I
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 382
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 384
    .end local v4           #topLeft:[I
    :cond_1
    const-string v5, "OppoActionBarImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doHide : endingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 386
    .local v1, anim:Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 387
    .local v0, a:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 390
    .local v2, b:Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 391
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 393
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 394
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 395
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 398
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 400
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    const v6, 0xc0f0401

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 403
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-direct {p0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 405
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 411
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #anim:Landroid/animation/AnimatorSet;
    .end local v2           #b:Landroid/animation/AnimatorSet$Builder;
    .end local v3           #endingY:F
    :goto_0
    return-void

    .line 407
    :cond_4
    const-string v5, "OppoActionBarImpl"

    const-string v6, "doHide : no translation"

    invoke-static {v9, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 409
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 380
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .parameter "fromSystem"

    .prologue
    const/4 v11, 0x0

    const/high16 v7, 0x3f80

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 304
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->endCurrentShowAnim()V

    .line 305
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->restoreForeground()V

    .line 306
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 308
    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_5

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->changeScreenHeight()V

    .line 310
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 311
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->getContainerHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 312
    .local v3, startingY:F
    if-eqz p1, :cond_1

    .line 313
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 314
    .local v4, topLeft:[I
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 315
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 317
    .end local v4           #topLeft:[I
    :cond_1
    const-string v5, "OppoActionBarImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShow : startingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 319
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 320
    .local v1, anim:Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 321
    .local v0, a:Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 324
    .local v2, b:Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 325
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 326
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 328
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    if-ne v5, v10, :cond_3

    .line 329
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 330
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 331
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 334
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 336
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    const v6, 0xc0f0400

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 346
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    invoke-direct {p0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 348
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 364
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #anim:Landroid/animation/AnimatorSet;
    .end local v2           #b:Landroid/animation/AnimatorSet$Builder;
    .end local v3           #startingY:F
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_4

    .line 365
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 367
    :cond_4
    return-void

    .line 350
    :cond_5
    const-string v5, "OppoActionBarImpl"

    const-string v6, "doShow : no translation"

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 352
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 353
    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 354
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 356
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    if-ne v5, v10, :cond_7

    .line 357
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 358
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 359
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 361
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 362
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 313
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentAnimations:Z

    .line 270
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->enableContentAnimations(Z)V

    .line 271
    return-void
.end method

.method hookInitViews([Landroid/view/View;)V
    .locals 3
    .parameter "views"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    aget-object v0, p1, v2

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 442
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    .line 443
    const/4 v0, 0x4

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/OppoActionBarContextView;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    .line 444
    aget-object v0, p1, v1

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 445
    const/4 v0, 0x5

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    .line 448
    return-void

    :cond_0
    move v0, v2

    .line 446
    goto :goto_0
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 264
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 265
    return-void
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 257
    iput p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    .line 258
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setWindowVisibility(I)V

    .line 259
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    .line 275
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoActionBarContextView;->killMode()V

    .line 280
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;-><init>(Lcom/android/internal/app/OppoActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 281
    .local v0, mode:Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v0}, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;->invalidate()V

    .line 283
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/app/OppoActionBarImpl;->hookCheckShowingFlags()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->setShowingFlags(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 285
    invoke-virtual {p0, v3}, Lcom/android/internal/app/OppoActionBarImpl;->animateToMode(Z)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->sendAccessibilityEvent(I)V

    .line 296
    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    .line 299
    .end local v0           #mode:Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0       #mode:Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAnimateTab(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 415
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ActionBarImpl;->updateAnimateTab(IFI)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/app/OppoActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->updateAnimateTab(IFI)V

    goto :goto_0
.end method

.method public updateScrollState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 427
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->updateScrollState(I)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/app/OppoActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->updateScrollState(I)V

    goto :goto_0
.end method
