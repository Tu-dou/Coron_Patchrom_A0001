.class public Lcom/android/internal/widget/OppoScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OppoScrollingTabContainerView$1;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final SUSPENSION:Ljava/lang/String; = "."

.field private static final TAG:Ljava/lang/String; = "OppoScrollingTabContainerView"


# instance fields
.field private mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

.field private mTabTextSize:I

.field private mTabTextSizeSelected:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .line 80
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    .line 81
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    .line 573
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .line 575
    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView;)Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter "context"

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 584
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 622
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 623
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    invoke-static {v1, v0, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1500(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V

    .line 624
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 3
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 616
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 617
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    invoke-static {v1, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    .line 618
    return-void
.end method

.method public animateToTab(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 593
    return-void
.end method

.method createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"

    .prologue
    .line 602
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 603
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 604
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    :goto_0
    return-object v0

    .line 608
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 609
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 640
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->drawTab(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1800(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Landroid/graphics/Canvas;)V

    .line 642
    return-void
.end method

.method hookResizeMaxWidth(I)V
    .locals 3
    .parameter "childCount"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mMaxTabWidth:I

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->measureMaxWidth(III)I
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;III)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mMaxTabWidth:I

    .line 670
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeAllTabs()V
    invoke-static {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1700(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    .line 636
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 628
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeTabAt(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1600(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 630
    return-void
.end method

.method public setTabSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabSelected(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 598
    return-void
.end method

.method public updateAnimateTab(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateAnimateTab(IFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$2000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;IFI)V

    .line 677
    return-void
.end method

.method public updateScrollState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    #calls: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateScrollState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$2100(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 681
    return-void
.end method
