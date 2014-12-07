.class public Landroid/view/animation/OppoDecelerateInterpolator;
.super Ljava/lang/Object;
.source "OppoDecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OppoDecelerateInterpolator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9
    .parameter "input"

    .prologue
    const-wide v7, 0x3ff051eb80000000L

    .line 43
    const-wide/high16 v1, 0x4049

    float-to-double v3, p1

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    div-double v1, v7, v1

    sub-double v1, v7, v1

    double-to-float v0, v1

    .line 47
    .local v0, interpolation:F
    return v0
.end method
