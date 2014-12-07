.class Landroid/widget/OppoTranslateController;
.super Ljava/lang/Object;
.source "OppoTranslateController.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoTranslateController$RetryServiceListener;,
        Landroid/widget/OppoTranslateController$ResumeServiceListener;,
        Landroid/widget/OppoTranslateController$StartServiceListener;,
        Landroid/widget/OppoTranslateController$OnServiceListener;,
        Landroid/widget/OppoTranslateController$OnAskListener;,
        Landroid/widget/OppoTranslateController$OnTransListener;,
        Landroid/widget/OppoTranslateController$OnDictListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final START_TRANSLATE_ON_ERROR:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoTranslateController"


# instance fields
.field private mAutoMeasureSpec:I

.field private mContext:Landroid/content/Context;

.field private mDictListener:Landroid/widget/OppoTranslateController$OnDictListener;

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mDownArrowOffset:I

.field private mEditor:Landroid/widget/Editor;

.field private mFlowPanel:Landroid/widget/OppoTranslatePanelView;

.field private mPanelRoundPadding:I

.field private mPanelWidth:I

.field private mResumeListener:Landroid/widget/OppoTranslateController$OnServiceListener;

.field private mRetryListener:Landroid/widget/OppoTranslateController$OnServiceListener;

.field private mScreenPos:[I

.field private mService:Lcom/oppo/translate/IOppoTranslateManager;

.field private mServiceReady:Z

.field private mStartListener:Landroid/widget/OppoTranslateController$OnServiceListener;

.field private mState:Lcom/oppo/translate/OppoTranslateState;

.field private mStatusBarHeight:I

.field private mText:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTransListener:Landroid/widget/OppoTranslateController$OnTransListener;

.field private mTranslateWindow:Landroid/widget/PopupWindow;

.field private mWindowPaddingHorizontal:I

.field private mWindowPos:[I


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/widget/TextView;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4
    .parameter "editor"
    .parameter "textView"
    .parameter "dismissListener"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/widget/OppoTranslateController$OnDictListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoTranslateController$OnDictListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mDictListener:Landroid/widget/OppoTranslateController$OnDictListener;

    .line 85
    new-instance v0, Landroid/widget/OppoTranslateController$OnTransListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoTranslateController$OnTransListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mTransListener:Landroid/widget/OppoTranslateController$OnTransListener;

    .line 86
    new-instance v0, Landroid/widget/OppoTranslateController$StartServiceListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoTranslateController$StartServiceListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mStartListener:Landroid/widget/OppoTranslateController$OnServiceListener;

    .line 87
    new-instance v0, Landroid/widget/OppoTranslateController$ResumeServiceListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoTranslateController$ResumeServiceListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mResumeListener:Landroid/widget/OppoTranslateController$OnServiceListener;

    .line 88
    new-instance v0, Landroid/widget/OppoTranslateController$RetryServiceListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoTranslateController$RetryServiceListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mRetryListener:Landroid/widget/OppoTranslateController$OnServiceListener;

    .line 89
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    .line 90
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    .line 91
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    .line 92
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mEditor:Landroid/widget/Editor;

    .line 93
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 94
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    .line 95
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    .line 96
    iput-object v1, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/oppo/translate/OppoTranslateState;

    invoke-direct {v0}, Lcom/oppo/translate/OppoTranslateState;-><init>()V

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mState:Lcom/oppo/translate/OppoTranslateState;

    .line 98
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mWindowPos:[I

    .line 99
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mScreenPos:[I

    .line 100
    iput v2, p0, Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I

    .line 101
    iput v2, p0, Landroid/widget/OppoTranslateController;->mStatusBarHeight:I

    .line 102
    iput v2, p0, Landroid/widget/OppoTranslateController;->mDownArrowOffset:I

    .line 103
    iput v2, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    .line 104
    iput v2, p0, Landroid/widget/OppoTranslateController;->mPanelWidth:I

    .line 105
    iput v2, p0, Landroid/widget/OppoTranslateController;->mAutoMeasureSpec:I

    .line 106
    iput-boolean v2, p0, Landroid/widget/OppoTranslateController;->mServiceReady:Z

    .line 112
    iput-object p1, p0, Landroid/widget/OppoTranslateController;->mEditor:Landroid/widget/Editor;

    .line 113
    iput-object p2, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    .line 114
    iput-object p3, p0, Landroid/widget/OppoTranslateController;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 115
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/util/OppoContextUtil;->getOppoThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoTranslateController;->mStatusBarHeight:I

    .line 118
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05044f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoTranslateController;->mDownArrowOffset:I

    .line 120
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    .line 122
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05044e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoTranslateController;->mPanelWidth:I

    .line 124
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoTranslateController;->mAutoMeasureSpec:I

    .line 125
    const-string v0, "OppoTranslateManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    .line 127
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/OppoTranslateController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoTranslateController;->showTranslateResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/OppoTranslateController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController;->startTranslate(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/OppoTranslateController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/OppoTranslateController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController;->getErrorMessage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/OppoTranslateController;)Lcom/oppo/translate/OppoTranslateState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mState:Lcom/oppo/translate/OppoTranslateState;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/OppoTranslateController;)Lcom/oppo/translate/IOppoTranslateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/widget/OppoTranslateController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/widget/OppoTranslateController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/OppoTranslateController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->getFlowPanel()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2002(Landroid/widget/OppoTranslateController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/OppoTranslateController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/OppoTranslateController;->mPanelWidth:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/OppoTranslateController;)Landroid/widget/Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/OppoTranslateController;)Landroid/widget/OppoTranslatePanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/OppoTranslateController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->initTitleBar()V

    return-void
.end method

.method static synthetic access$2500(Landroid/widget/OppoTranslateController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateResult()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/OppoTranslateController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/widget/OppoTranslateController;->mServiceReady:Z

    return v0
.end method

.method static synthetic access$502(Landroid/widget/OppoTranslateController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Landroid/widget/OppoTranslateController;->mServiceReady:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/OppoTranslateController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->startDict()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/OppoTranslateController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->isWindowShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/OppoTranslateController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController;->showTranslateError(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/OppoTranslateController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    return-void
.end method

.method private enableMore(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 450
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v2, 0xc0204b5

    invoke-virtual {v1, v2}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 451
    .local v0, btnMore:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 452
    return-void
.end method

.method private getArrowPos(II)I
    .locals 2
    .parameter "arrowPos"
    .parameter "windowWidth"

    .prologue
    .line 289
    iget v0, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    sub-int v0, p2, v0

    iget v1, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getAverage(FF)I
    .locals 2
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 307
    add-float v0, p1, p2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getErrorMessage(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 580
    packed-switch p1, :pswitch_data_0

    .line 588
    const v0, 0xc04053a

    :goto_0
    return v0

    .line 582
    :pswitch_0
    const v0, 0xc04053c

    goto :goto_0

    .line 584
    :pswitch_1
    const v0, 0xc04053d

    goto :goto_0

    .line 586
    :pswitch_2
    const v0, 0xc04053e

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFlowPanel()Landroid/view/View;
    .locals 6

    .prologue
    .line 339
    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    if-nez v3, :cond_0

    .line 340
    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0xc090455

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoTranslatePanelView;

    iput-object v3, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    .line 342
    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v4, 0xc0204b3

    invoke-virtual {v3, v4}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 344
    .local v1, contentView:Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0xc090456

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 346
    const v3, 0xc0204b7

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, btnCopy:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v3, 0xc0204bb

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, txtError:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .end local v0           #btnCopy:Landroid/view/View;
    .end local v1           #contentView:Landroid/view/ViewGroup;
    .end local v2           #txtError:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    return-object v3
.end method

.method private getLineBottom(Landroid/text/Layout;I)I
    .locals 2
    .parameter "layout"
    .parameter "offset"

    .prologue
    .line 316
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 317
    .local v0, line:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    return v1
.end method

.method private getLineTop(Landroid/text/Layout;I)I
    .locals 2
    .parameter "layout"
    .parameter "offset"

    .prologue
    .line 311
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 312
    .local v0, line:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    return v1
.end method

.method private getSelectionCenter(Landroid/text/Layout;IIZ)I
    .locals 5
    .parameter "layout"
    .parameter "start"
    .parameter "end"
    .parameter "isArrowUp"

    .prologue
    .line 321
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 322
    .local v1, lineStart:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 323
    .local v0, lineEnd:I
    const/4 v3, 0x0

    .line 324
    .local v3, offsetStart:F
    const/4 v2, 0x0

    .line 325
    .local v2, offsetEnd:F
    if-ne v1, v0, :cond_0

    .line 326
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 327
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 335
    :goto_0
    invoke-direct {p0, v3, v2}, Landroid/widget/OppoTranslateController;->getAverage(FF)I

    move-result v4

    return v4

    .line 328
    :cond_0
    if-eqz p4, :cond_1

    .line 329
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    .line 330
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 333
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    goto :goto_0
.end method

.method private getWindowX(II)I
    .locals 6
    .parameter "arrowPos"
    .parameter "windowWidth"

    .prologue
    .line 294
    iget v1, p0, Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I

    .line 295
    .local v1, windowX:I
    iget v3, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    if-ge p1, v3, :cond_1

    .line 296
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I

    add-int/2addr v4, p1

    iget v5, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    iget v3, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    sub-int v3, p2, v3

    if-le p1, v3, :cond_0

    .line 298
    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 299
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 300
    .local v0, dispWidth:I
    iget v3, p0, Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I

    sub-int v3, v0, v3

    add-int/2addr v3, p1

    sub-int/2addr v3, p2

    iget v4, p0, Landroid/widget/OppoTranslateController;->mPanelRoundPadding:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v1, v3, p2

    goto :goto_0
.end method

.method private hideDict()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 383
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v3, 0xc0204b9

    invoke-virtual {v2, v3}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, imgDivider:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v3, 0xc0204ba

    invoke-virtual {v2, v3}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 387
    .local v1, txtDict:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    return-void
.end method

.method private hideError()V
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v2, 0xc0204bb

    invoke-virtual {v1, v2}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    .local v0, txtError:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    return-void
.end method

.method private hideLoading()V
    .locals 3

    .prologue
    .line 438
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v2, 0xc0204bc

    invoke-virtual {v1, v2}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 440
    .local v0, progressLoading:Landroid/widget/ProgressBar;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    return-void
.end method

.method private hideMeans()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 400
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204b6

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 402
    .local v3, txtMeans:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204b8

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, btnPronounce:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204b7

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, btnCopy:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204bd

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 408
    .local v2, imgLogo:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 409
    return-void
.end method

.method private initTitleBar()V
    .locals 10

    .prologue
    .line 361
    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 362
    .local v5, start:I
    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 363
    .local v2, end:I
    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    .line 364
    iget-object v6, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    .line 365
    .local v6, title:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 367
    const-string v8, "(\r\n|\r|\n|\n\r)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 368
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 369
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 370
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 373
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    :cond_0
    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v9, 0xc0204bf

    invoke-virtual {v8, v9}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/OppoTranslateTitleView;

    .line 375
    .local v7, titleView:Landroid/widget/OppoTranslateTitleView;
    invoke-virtual {v7, v6}, Landroid/widget/OppoTranslateTitleView;->setTitle(Ljava/lang/String;)V

    .line 376
    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v9, 0xc0204b8

    invoke-virtual {v8, v9}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 377
    .local v1, btnPronounce:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v9, 0xc0204b5

    invoke-virtual {v8, v9}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, btnMore:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-void
.end method

.method private isWindowShowing()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retryDict()V
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Landroid/widget/OppoTranslateController;->mServiceReady:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->startDict()V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mRetryListener:Landroid/widget/OppoTranslateController$OnServiceListener;

    invoke-direct {p0, v0}, Landroid/widget/OppoTranslateController;->startService(Landroid/widget/OppoTranslateController$OnServiceListener;)V

    goto :goto_0
.end method

.method private showDict(Ljava/lang/String;)V
    .locals 5
    .parameter "dict"

    .prologue
    const/4 v4, 0x0

    .line 391
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v3, 0xc0204b9

    invoke-virtual {v2, v3}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, imgDivider:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v3, 0xc0204ba

    invoke-virtual {v2, v3}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    .local v1, txtDict:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method private showError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 431
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v2, 0xc0204bb

    invoke-virtual {v1, v2}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 433
    .local v0, txtError:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 434
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v2, 0xc0204bc

    invoke-virtual {v1, v2}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 446
    .local v0, progressLoading:Landroid/widget/ProgressBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    return-void
.end method

.method private showMeans(Ljava/lang/String;)V
    .locals 7
    .parameter "means"

    .prologue
    const/4 v6, 0x0

    .line 412
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204b6

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 414
    .local v3, txtMeans:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204b8

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 417
    .local v1, btnPronounce:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204b7

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, btnCopy:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v4, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v5, 0xc0204bd

    invoke-virtual {v4, v5}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 421
    .local v2, imgLogo:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 422
    return-void
.end method

.method private showTranslateError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 571
    const-string v0, "OppoTranslateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTranslateError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/OppoTranslateController;->enableMore(Z)V

    .line 573
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideDict()V

    .line 574
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideMeans()V

    .line 575
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideLoading()V

    .line 576
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController;->showError(I)V

    .line 577
    return-void
.end method

.method private showTranslateResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "means"
    .parameter "dict"

    .prologue
    const/4 v0, 0x1

    .line 558
    const-string v1, "OppoTranslateController"

    const-string v2, "showTranslateResult"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0, v0}, Landroid/widget/OppoTranslateController;->enableMore(Z)V

    .line 560
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideError()V

    .line 561
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideLoading()V

    .line 562
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController;->showMeans(Ljava/lang/String;)V

    .line 563
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    .local v0, hasDict:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0, p2}, Landroid/widget/OppoTranslateController;->showDict(Ljava/lang/String;)V

    .line 567
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/OppoTranslateController;->updateBottoms(Z)V

    .line 568
    return-void

    .line 563
    .end local v0           #hasDict:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startCopy()V
    .locals 10

    .prologue
    .line 510
    const/4 v6, 0x0

    .line 511
    .local v6, primaryData:Landroid/content/ClipData;
    iget-object v7, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 514
    .local v1, clipboardmanager:Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 518
    :goto_0
    iget-object v7, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    const v8, 0xc0204b6

    invoke-virtual {v7, v8}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 520
    .local v5, means:Landroid/widget/TextView;
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 521
    .local v0, clipData:Landroid/content/ClipData;
    if-eqz v6, :cond_0

    .line 522
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 523
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 524
    invoke-virtual {v6, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 523
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 515
    .end local v0           #clipData:Landroid/content/ClipData;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #means:Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 516
    .local v3, e:Ljava/lang/SecurityException;
    const-string v7, "OppoTranslateController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : startCopy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v0       #clipData:Landroid/content/ClipData;
    .restart local v5       #means:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 528
    iget-object v7, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc040534

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 531
    return-void
.end method

.method private startDict()V
    .locals 4

    .prologue
    .line 463
    const/4 v1, 0x1

    const-string v2, "OppoTranslateController"

    const-string v3, "startDict"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideDict()V

    .line 465
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideMeans()V

    .line 466
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideError()V

    .line 467
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->showLoading()V

    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mDictListener:Landroid/widget/OppoTranslateController$OnDictListener;

    invoke-interface {v1, v2, v3}, Lcom/oppo/translate/IOppoTranslateManager;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    .line 476
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : startDict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const v1, 0xc04053b

    invoke-direct {p0, v1}, Landroid/widget/OppoTranslateController;->showTranslateError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    throw v1
.end method

.method private startMore()V
    .locals 5

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 499
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/oppo/translate/IOppoTranslateManager;->getUri(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    :goto_0
    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController;->hide()V

    .line 505
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 507
    :cond_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OppoTranslateController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : startMore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPronounce()V
    .locals 4

    .prologue
    .line 535
    :try_start_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oppo/translate/IOppoTranslateManager;->pronounce(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : startPronounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startService(Landroid/widget/OppoTranslateController$OnServiceListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateManager;->start(Lcom/oppo/translate/IOppoTranslateServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : startService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : startService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTranslate(Z)V
    .locals 4
    .parameter "hasLoading"

    .prologue
    .line 479
    const/4 v1, 0x1

    const-string v2, "OppoTranslateController"

    const-string v3, "startTranslate"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz p1, :cond_0

    .line 481
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideDict()V

    .line 482
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideMeans()V

    .line 483
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->hideError()V

    .line 484
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->showLoading()V

    .line 487
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mText:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/OppoTranslateController;->mTransListener:Landroid/widget/OppoTranslateController$OnTransListener;

    invoke-interface {v1, v2, v3}, Lcom/oppo/translate/IOppoTranslateManager;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    .line 494
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : startTranslate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const v1, 0xc04053b

    invoke-direct {p0, v1}, Landroid/widget/OppoTranslateController;->showTranslateError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    throw v1
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mState:Lcom/oppo/translate/OppoTranslateState;

    invoke-interface {v1, v2}, Lcom/oppo/translate/IOppoTranslateManager;->stop(Lcom/oppo/translate/OppoTranslateState;)V

    .line 228
    iget-object v1, p0, Landroid/widget/OppoTranslateController;->mState:Lcom/oppo/translate/OppoTranslateState;

    const-string v2, "stopService"

    invoke-virtual {v1, v2}, Lcom/oppo/translate/OppoTranslateState;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : stopService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : stopService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBottom(ZI)V
    .locals 4
    .parameter "hasDict"
    .parameter "id"

    .prologue
    const/16 v3, 0xc

    .line 542
    iget-object v2, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    invoke-virtual {v2, p2}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 543
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 544
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 549
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    return-void

    .line 547
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private updateBottoms(Z)V
    .locals 1
    .parameter "hasDict"

    .prologue
    .line 553
    const v0, 0xc0204b7

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoTranslateController;->updateBottom(ZI)V

    .line 554
    const v0, 0xc0204bd

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoTranslateController;->updateBottom(ZI)V

    .line 555
    return-void
.end method

.method private updateFlowPanel(IZ)V
    .locals 4
    .parameter "arrowPos"
    .parameter "isArrowUp"

    .prologue
    .line 355
    const/4 v0, 0x1

    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFlowPanel : arrowPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isArrowUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    invoke-virtual {v0, p1}, Landroid/widget/OppoTranslatePanelView;->setArrowPos(I)V

    .line 357
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    invoke-virtual {v0, p2}, Landroid/widget/OppoTranslatePanelView;->setArrowUp(Z)V

    .line 358
    return-void
.end method

.method private updateLocation()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 238
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    iget v11, p0, Landroid/widget/OppoTranslateController;->mAutoMeasureSpec:I

    iget v12, p0, Landroid/widget/OppoTranslateController;->mAutoMeasureSpec:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/OppoTranslatePanelView;->measure(II)V

    .line 239
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    invoke-virtual {v10}, Landroid/widget/OppoTranslatePanelView;->getMeasuredWidth()I

    move-result v6

    .line 240
    .local v6, windowWidth:I
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    invoke-virtual {v10}, Landroid/widget/OppoTranslatePanelView;->getMeasuredHeight()I

    move-result v5

    .line 241
    .local v5, windowHeight:I
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mWindowPos:[I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 242
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mScreenPos:[I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 243
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 244
    .local v2, layout:Landroid/text/Layout;
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 245
    .local v4, selStart:I
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 246
    .local v3, selEnd:I
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mWindowPos:[I

    aget v10, v10, v13

    invoke-direct {p0, v2, v4}, Landroid/widget/OppoTranslateController;->getLineTop(Landroid/text/Layout;I)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v5

    iget v11, p0, Landroid/widget/OppoTranslateController;->mDownArrowOffset:I

    add-int v8, v10, v11

    .line 249
    .local v8, windowY:I
    const/4 v1, 0x1

    .line 250
    .local v1, isArrowUp:Z
    const-string v10, "OppoTranslateController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLocation [0] : mWindowPos[1]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/OppoTranslateController;->mWindowPos:[I

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lineTop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v2, v4}, Landroid/widget/OppoTranslateController;->getLineTop(Landroid/text/Layout;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", vOffset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", windowHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mDownArrowOffset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/widget/OppoTranslateController;->mDownArrowOffset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ==> windowY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v10, v11}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v10, p0, Landroid/widget/OppoTranslateController;->mStatusBarHeight:I

    if-gt v8, v10, :cond_0

    .line 257
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mWindowPos:[I

    aget v10, v10, v13

    invoke-direct {p0, v2, v3}, Landroid/widget/OppoTranslateController;->getLineBottom(Landroid/text/Layout;I)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    add-int v8, v10, v11

    .line 259
    const-string v10, "OppoTranslateController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLocation [1] : mWindowPos[1]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/OppoTranslateController;->mWindowPos:[I

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lineBottom="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v2, v3}, Landroid/widget/OppoTranslateController;->getLineBottom(Landroid/text/Layout;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", vOffset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ==> windowY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v10, v11}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 264
    .local v9, wm:Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 266
    const-string v10, "OppoTranslateController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLocation [2] : dispHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", windowHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : isArrowUp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ==> windowY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v10, v11}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v9           #wm:Landroid/view/WindowManager;
    :goto_0
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mScreenPos:[I

    aget v10, v10, v14

    iget v11, p0, Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v2, v4, v3, v1}, Landroid/widget/OppoTranslateController;->getSelectionCenter(Landroid/text/Layout;IIZ)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v11

    add-int v0, v10, v11

    .line 278
    .local v0, arrowPos:I
    invoke-direct {p0, v0, v6}, Landroid/widget/OppoTranslateController;->getWindowX(II)I

    move-result v7

    .line 279
    .local v7, windowX:I
    invoke-direct {p0, v0, v6}, Landroid/widget/OppoTranslateController;->getArrowPos(II)I

    move-result v10

    invoke-direct {p0, v10, v1}, Landroid/widget/OppoTranslateController;->updateFlowPanel(IZ)V

    .line 280
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 281
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v12

    invoke-virtual {v10, v7, v8, v11, v12}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 286
    :goto_1
    return-void

    .line 271
    .end local v0           #arrowPos:I
    .end local v7           #windowX:I
    :cond_0
    const/4 v1, 0x0

    .line 272
    const-string v10, "OppoTranslateController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLocation [3] : isArrowUp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ==> windowY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v10, v11}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .restart local v0       #arrowPos:I
    .restart local v7       #windowX:I
    :cond_1
    iget-object v10, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11, v14, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method private updateResult()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/OppoTranslateController$1;

    invoke-direct {v1, p0}, Landroid/widget/OppoTranslateController$1;-><init>(Landroid/widget/OppoTranslateController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method


# virtual methods
.method hide()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->retryDict()V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->startMore()V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->startCopy()V

    goto :goto_0

    .line 161
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->startPronounce()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0xc0204b5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->isWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController;->hide()V

    .line 184
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    const-string v1, "OppoTranslateController"

    const-string v2, "onDismiss"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->stopService()V

    .line 136
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;

    invoke-virtual {v0, p0}, Landroid/widget/OppoTranslatePanelView;->removeOnViewChangedListener(Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;)V

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p0}, Landroid/widget/Editor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 140
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 143
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->isWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mResumeListener:Landroid/widget/OppoTranslateController$OnServiceListener;

    invoke-direct {p0, v0}, Landroid/widget/OppoTranslateController;->startService(Landroid/widget/OppoTranslateController$OnServiceListener;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->stopService()V

    goto :goto_0
.end method

.method show()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/widget/OppoTranslateController;->mStartListener:Landroid/widget/OppoTranslateController$OnServiceListener;

    invoke-direct {p0, v0}, Landroid/widget/OppoTranslateController;->startService(Landroid/widget/OppoTranslateController$OnServiceListener;)V

    .line 204
    :cond_0
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 1
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->isWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 173
    invoke-direct {p0}, Landroid/widget/OppoTranslateController;->updateLocation()V

    .line 175
    :cond_0
    return-void
.end method
