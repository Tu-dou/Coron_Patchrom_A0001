.class public Lcom/oppo/widget/OppoEmptyBottle;
.super Landroid/widget/LinearLayout;
.source "OppoEmptyBottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEmptyBottle"


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initOppoEmptyBottle(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setOrientation(I)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setGravity(I)V

    .line 59
    const v1, 0xc090448

    invoke-static {p1, v1, p0}, Lcom/oppo/widget/OppoEmptyBottle;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v1, 0xc02049a

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    iput-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    .line 61
    const v1, 0xc08049d

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 62
    const v1, 0xc020499

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    .local v0, paddingtop:I
    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/oppo/widget/OppoEmptyBottle;->setPadding(IIII)V

    .line 66
    return-void
.end method


# virtual methods
.method public setImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 76
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setMessage(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    return-void
.end method

.method public startAnim()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 120
    return-void
.end method

.method public useDeepColorStyle(Z)V
    .locals 3
    .parameter "deepColorStyle"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v1, "OppoEmptyBottle"

    const-string v2, "Please don\'t use deepColorStyle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    const v1, 0xc08049d

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 105
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 107
    .local v0, color:I
    iget-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    return-void
.end method
