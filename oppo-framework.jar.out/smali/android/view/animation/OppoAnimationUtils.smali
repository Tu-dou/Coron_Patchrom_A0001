.class public Landroid/view/animation/OppoAnimationUtils;
.super Ljava/lang/Object;
.source "OppoAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInterpolatorFromXml(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
    .locals 2
    .parameter "name"
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, interpolator:Landroid/view/animation/Interpolator;
    const-string v1, "oppoDecelerateInterpolator"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    new-instance v0, Landroid/view/animation/OppoDecelerateInterpolator;

    .end local v0           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v0, p1, p2}, Landroid/view/animation/OppoDecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    .restart local v0       #interpolator:Landroid/view/animation/Interpolator;
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    const-string v1, "oppoAccelerateDecelerateInterpolator"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Landroid/view/animation/OppoAccelerateDecelerateInterpolator;

    .end local v0           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v0, p1, p2}, Landroid/view/animation/OppoAccelerateDecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0
.end method
