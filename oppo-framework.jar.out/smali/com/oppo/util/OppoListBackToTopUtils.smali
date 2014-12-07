.class public Lcom/oppo/util/OppoListBackToTopUtils;
.super Ljava/lang/Object;
.source "OppoListBackToTopUtils.java"


# instance fields
.field private BTN_LOC_X:I

.field private BTN_LOC_Y:I

.field private final DISSMISS_TIMEOUT:I

.field dissmissAuto:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field private mBackToTop:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mList:Landroid/widget/AbsListView;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    .line 48
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->DISSMISS_TIMEOUT:I

    .line 98
    new-instance v1, Lcom/oppo/util/OppoListBackToTopUtils$2;

    invoke-direct {v1, p0}, Lcom/oppo/util/OppoListBackToTopUtils$2;-><init>(Lcom/oppo/util/OppoListBackToTopUtils;)V

    iput-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    .line 61
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    .line 62
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    .line 64
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/AbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private initBackToTopWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 69
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0xc09044d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .local v1, mPopupContent:Landroid/view/ViewGroup;
    const v2, 0xc0204a5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mBackToTop:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mBackToTop:Landroid/widget/Button;

    new-instance v3, Lcom/oppo/util/OppoListBackToTopUtils$1;

    invoke-direct {v3, p0}, Lcom/oppo/util/OppoListBackToTopUtils$1;-><init>(Lcom/oppo/util/OppoListBackToTopUtils;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 87
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0xc030404

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 90
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 91
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 93
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 128
    return-void
.end method

.method public setBtnHorizontalPos(I)V
    .locals 0
    .parameter "xPos"

    .prologue
    .line 131
    iput p1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    .line 132
    return-void
.end method

.method public setBtnVerticalPos(I)V
    .locals 0
    .parameter "yPos"

    .prologue
    .line 135
    iput p1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    .line 136
    return-void
.end method

.method public showBackToTop(Z)V
    .locals 5
    .parameter "show"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    if-eqz p1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/oppo/util/OppoListBackToTopUtils;->initBackToTopWindow()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mBackToTop:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    iget v4, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public updateBtnPosition()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    .line 144
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_0
    return-void
.end method
