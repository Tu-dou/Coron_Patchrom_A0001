.class public Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarMajorOperationLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBarMajorOperationLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxScrollDistance:I

.field private mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 2
    .parameter "context"
    .parameter "menuBar"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMaxScrollDistance:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mStartY:F

    .line 39
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 41
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->setFocusable(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->setFocusableInTouchMode(Z)V

    .line 43
    const v0, 0xc09043a

    invoke-static {p1, v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05041d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMaxScrollDistance:I

    .line 47
    return-void
.end method
