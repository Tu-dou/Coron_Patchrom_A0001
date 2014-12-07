.class public Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;
.super Landroid/widget/ImageView;
.source "OppoEmptyBottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoEmptyBottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OppoEmptyBottleView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method private stopAnim()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 151
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-direct {p0}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->stopAnim()V

    .line 146
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    invoke-direct {p0}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->stopAnim()V

    .line 140
    return-void
.end method
