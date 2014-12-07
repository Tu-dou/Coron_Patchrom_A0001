.class public Lcom/oppo/widget/OppoTabHost;
.super Landroid/widget/LinearLayout;
.source "OppoTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;,
        Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$ViewIndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$ContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$OppoTabSpec;,
        Lcom/oppo/widget/OppoTabHost$TabContentFactory;,
        Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;,
        Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INDEX_FIRST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoTabHost"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCanFlip:Z

.field private mContext:Landroid/content/Context;

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field mFragmentManager:Landroid/app/FragmentManager;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnAccessTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;

.field private mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

.field private mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

.field private mOppoTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoTabHost$OppoTabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

.field private mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

.field private mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

.field private mSmoothScroll:Z

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mUseFragment:Z

.field private mWindowHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTabHost;->mCanFlip:Z

    .line 69
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTabHost;->mUseFragment:Z

    .line 71
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    .line 72
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    .line 74
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    .line 89
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 91
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mActivity:Landroid/app/Activity;

    .line 96
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 100
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTabHost;->mSmoothScroll:Z

    .line 102
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTabHost;->mWindowHasFocus:Z

    .line 104
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 105
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    .line 113
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->prepareTabLayoutAnim()V

    .line 115
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->initOppoTabHost()V

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoTabHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabHost;->mUseFragment:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoTabHost;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoTabHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTabHost;->mSmoothScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    return-object v0
.end method

.method private initOppoTabHost()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setFocusableInTouchMode(Z)V

    .line 122
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setDescendantFocusability(I)V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    .line 124
    return-void
.end method

.method private invokeOnAccessTabChangeListener(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnAccessTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnAccessTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTabHost;->getTabTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;->onAccessTabChanged(Ljava/lang/String;)Z

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method private prepareTabLayoutAnim()V
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x3f80

    const-wide/16 v9, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 128
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f4ccccd

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 129
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 130
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    .line 133
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 134
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v8, 0x3f00

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 139
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    return-void
.end method


# virtual methods
.method public addTab(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V
    .locals 2
    .parameter "tabSpec"

    .prologue
    .line 297
    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$400(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab indicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$500(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mFragment:Landroid/app/Fragment;
    invoke-static {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$600(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoTabWidget;->addOppoTabSpec(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V

    .line 307
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-ne v0, v1, :cond_2

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    .line 312
    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabWidget;->removeAllOppoTabSpec()V

    .line 319
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->initOppoTabHost()V

    .line 320
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 321
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->requestLayout()V

    .line 323
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->invalidate()V

    .line 324
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 367
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget;->requestFocus()Z

    .line 372
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget;->requestFocusOnTab(I)V

    .line 373
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabHost;->playSoundEffect(I)V

    .line 374
    const/4 v0, 0x1

    .line 376
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabHost;->mUseFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 384
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    return-object v0
.end method

.method public getOppoTabSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoTabHost$OppoTabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getOppoTabWidget()Lcom/oppo/widget/OppoTabWidget;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabTag(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 467
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newOppoTabSpec(Ljava/lang/String;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 148
    new-instance v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p0, v1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Lcom/oppo/widget/OppoTabHost;Lcom/oppo/widget/OppoTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 263
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 264
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 267
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 272
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 273
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 282
    if-nez p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->requestFocusOnTab(I)V

    .line 289
    :cond_1
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mActivity:Landroid/app/Activity;

    .line 248
    return-void
.end method

.method public setCanFlip(Z)V
    .locals 0
    .parameter "canFlip"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTabHost;->mCanFlip:Z

    .line 392
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 395
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabHost;->invokeOnAccessTabChangeListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTabHost;->mUseFragment:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 412
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$500(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/widget/OppoTabHost$ContentStrategy;->tabClosed()V

    .line 415
    :cond_2
    iput p1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    .line 421
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget;->focusCurrentTab(I)V

    .line 423
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    .line 425
    .local v0, spec:Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$500(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/widget/OppoTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    .line 426
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    .line 352
    :cond_0
    return-void

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0
    .parameter "fragmentManager"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 239
    return-void
.end method

.method public setOnAccessTabChangeListener(Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mOnAccessTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnAccessTabChangeListener;

    .line 464
    return-void
.end method

.method public setOnTabChangedListener(Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

    .line 440
    return-void
.end method

.method public setOnTabSelectionChangedListener(Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    .line 258
    return-void
.end method

.method public setUseFragment(Z)V
    .locals 0
    .parameter "useFragment"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTabHost;->mUseFragment:Z

    .line 388
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget;

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    .line 168
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your OppoTabHost must have a OppoTabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    new-instance v0, Lcom/oppo/widget/OppoTabHost$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoTabHost$1;-><init>(Lcom/oppo/widget/OppoTabHost;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 194
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    new-instance v1, Lcom/oppo/widget/OppoTabHost$2;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoTabHost$2;-><init>(Lcom/oppo/widget/OppoTabHost;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setOppoTabSelectionListener(Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;)V

    .line 208
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 209
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 216
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->setup()V

    .line 228
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 229
    return-void
.end method
