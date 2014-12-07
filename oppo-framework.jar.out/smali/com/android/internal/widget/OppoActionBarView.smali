.class public Lcom/android/internal/widget/OppoActionBarView;
.super Lcom/android/internal/widget/ActionBarView;
.source "OppoActionBarView.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoActionBarView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    const-string v1, "OppoActionBarView"

    const-string v2, "OppoActionBarView"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private doCustomViewAnim(Landroid/view/View;)V
    .locals 4
    .parameter "customView"

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 76
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.qualcomm.wfd.client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mContext:Landroid/content/Context;

    const v3, 0xc0a0407

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 83
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getId(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 97
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .local v0, value:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 99
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView;->onFinishInflate()V

    .line 89
    const v2, 0xc0204b0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/OppoActionBarView;->getId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/OppoActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, homeAsUp:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarView;->mContext:Landroid/content/Context;

    const v3, 0xc0a0406

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 94
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoActionBarView;->doCustomViewAnim(Landroid/view/View;)V

    .line 69
    return-void
.end method
