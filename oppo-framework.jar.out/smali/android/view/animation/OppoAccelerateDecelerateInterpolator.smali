.class public Landroid/view/animation/OppoAccelerateDecelerateInterpolator;
.super Ljava/lang/Object;
.source "OppoAccelerateDecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OppoAccelerateDecelerateInterpolator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9
    .parameter "input"

    .prologue
    const-wide v7, 0x400921fb54442d18L

    const-wide/high16 v5, 0x4000

    const-wide/high16 v3, 0x3ff0

    .line 43
    const/high16 v1, 0x3f00

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 44
    float-to-double v1, p1

    mul-double/2addr v1, v7

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    div-double/2addr v1, v5

    double-to-float v0, v1

    .line 51
    .local v0, interpolation:F
    :goto_0
    return v0

    .line 46
    .end local v0           #interpolation:F
    :cond_0
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    div-double/2addr v1, v5

    double-to-float v0, v1

    .restart local v0       #interpolation:F
    goto :goto_0
.end method
