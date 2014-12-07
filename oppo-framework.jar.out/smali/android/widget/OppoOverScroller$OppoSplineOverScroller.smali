.class Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
.super Ljava/lang/Object;
.source "OppoOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoSplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_SPLINE:I = 0x3

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVER_SPLINE:I = 0x4

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f

.field private static final VISCOUS_FLUID_SCALE:F = 14.0f

.field private static sViscousFluidNormalize:F


# instance fields
.field private mAccelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsScrollList:Z

.field private mLastDetla:D

.field private mLastPosition:I

.field private mOppoCount:I

.field private mOver:I

.field private mOverSplineStart:Z

.field private mOverSpring:Z

.field private mPhysicalCoeff:F

.field private mScrollerDistance:I

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSplineState:I

.field private mStart:I

.field private mStartTime:J

.field private mStartV:F

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 650
    const-wide v0, 0x3fe8f5c28f5c28f6L

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    .line 658
    new-array v0, v4, [F

    sput-object v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_POSITION:[F

    .line 659
    new-array v0, v4, [F

    sput-object v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 591
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    .line 592
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    .line 596
    iput-boolean v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    .line 597
    iput-boolean v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    .line 639
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    .line 642
    iput v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 672
    iput-boolean v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 673
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 674
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    .line 679
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mAccelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 680
    sput v3, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    .line 681
    const/high16 v1, 0x4160

    invoke-static {v3, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v1

    div-float v1, v3, v1

    sput v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    .line 682
    return-void
.end method

.method static synthetic access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    iput-boolean p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    iput-boolean p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 586
    iget-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 700
    sub-int v2, p2, p1

    .line 701
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 702
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 703
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 704
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 705
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 706
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 707
    .local v8, x_sup:F
    sget-object v9, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 708
    .local v3, t_inf:F
    sget-object v9, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 709
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 710
    .local v5, timeCoef:F
    iget v9, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 712
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 866
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 867
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 868
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 869
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 871
    .local v3, totalDuration:F
    iget-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 872
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 873
    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 874
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 692
    if-lez p0, :cond_0

    const/high16 v0, -0x3b06

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 6
    .parameter "velocity"

    .prologue
    .line 845
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f789374bc6a7efaL

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 850
    invoke-direct {p0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 851
    .local v2, l:D
    sget v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 852
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 857
    invoke-direct {p0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 858
    .local v2, l:D
    sget v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 859
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 927
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 928
    .local v2, sign:F
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x44c8

    div-float v1, v3, v4

    .line 931
    .local v1, distance:F
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 933
    neg-float v3, v2

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 934
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v1, v3

    .line 937
    :cond_0
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 938
    float-to-int v3, v1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 939
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 940
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    .end local v1           #distance:F
    :goto_0
    float-to-int v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 941
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    if-lez v3, :cond_2

    const/16 v0, -0x320

    .line 942
    .local v0, decelerate:I
    :goto_1
    const/high16 v3, 0x447a

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 945
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    .line 946
    iput-boolean v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    .line 948
    return-void

    .line 940
    .end local v0           #decelerate:I
    .restart local v1       #distance:F
    :cond_1
    neg-float v1, v1

    goto :goto_0

    .line 941
    .end local v1           #distance:F
    :cond_2
    const/16 v0, 0x320

    goto :goto_1
.end method

.method private startAfterEdge(IIII)V
    .locals 13
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 886
    if-le p1, p2, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 887
    const-string v1, "OverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 908
    :goto_0
    return-void

    .line 893
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v10, 0x1

    .line 894
    .local v10, positive:Z
    :goto_1
    if-eqz v10, :cond_2

    move/from16 v7, p3

    .line 895
    .local v7, edge:I
    :goto_2
    sub-int v9, p1, v7

    .line 896
    .local v9, overDistance:I
    mul-int v1, v9, p4

    if-ltz v1, :cond_3

    const/4 v8, 0x1

    .line 897
    .local v8, keepIncreasing:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 899
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 893
    .end local v7           #edge:I
    .end local v8           #keepIncreasing:Z
    .end local v9           #overDistance:I
    .end local v10           #positive:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #positive:Z
    :cond_2
    move v7, p2

    .line 894
    goto :goto_2

    .line 896
    .restart local v7       #edge:I
    .restart local v9       #overDistance:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 901
    .restart local v8       #keepIncreasing:Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 902
    .local v11, totalDistance:D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_7

    .line 903
    if-eqz v10, :cond_5

    move v4, p2

    :goto_4
    if-eqz v10, :cond_6

    move v5, p1

    :goto_5
    iget v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    move/from16 v5, p3

    goto :goto_5

    .line 905
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 879
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    .line 880
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 881
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fitOnBounceCurve(III)V

    .line 882
    invoke-direct {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->onEdgeReached()V

    .line 883
    return-void

    :cond_0
    move v0, p3

    .line 880
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x1

    .line 771
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 773
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 774
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 775
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 776
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 777
    sub-int v0, p1, p2

    .line 778
    .local v0, delta:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 780
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 781
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 782
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 783
    return-void
.end method

.method private static viscousFluid(FF)F
    .locals 4
    .parameter "x"
    .parameter "distance"

    .prologue
    const/high16 v3, 0x3f80

    .line 1099
    const v0, 0x3ebc5ab2

    .line 1100
    .local v0, start:F
    sub-float v1, v3, v0

    div-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, p1

    add-float/2addr p0, v1

    .line 1101
    mul-float/2addr p0, p1

    .line 1102
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 1103
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    .line 1104
    sget v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 1105
    return p0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 952
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 974
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    .line 975
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 954
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    if-eqz v1, :cond_0

    .line 956
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 958
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 959
    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    .line 960
    invoke-direct {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 967
    :pswitch_2
    iget-wide v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 968
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 742
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 743
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 744
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 745
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 746
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 734
    return-void
.end method

.method fling(IIIII)V
    .locals 7
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 788
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 789
    iput p5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 790
    iput-boolean v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 791
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v3

    neg-int v3, v3

    if-ge p2, v3, :cond_1

    .line 792
    :cond_0
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 793
    .local v0, sign:F
    float-to-int v3, v0

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v4

    mul-int p2, v3, v4

    .line 795
    .end local v0           #sign:F
    :cond_1
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v3, p2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    .line 796
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDuration:I

    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 797
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 798
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 799
    int-to-float v3, p2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    .line 800
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    .line 801
    iput-boolean v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    .line 803
    if-gt p1, p4, :cond_2

    if-ge p1, p3, :cond_4

    .line 804
    :cond_2
    iput-boolean v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    .line 805
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startAfterEdge(IIII)V

    .line 842
    :cond_3
    :goto_0
    return-void

    .line 809
    :cond_4
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 810
    const-wide/16 v1, 0x0

    .line 812
    .local v1, totalDistance:D
    if-eqz p2, :cond_5

    .line 813
    invoke-direct {p0, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 814
    invoke-direct {p0, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 817
    :cond_5
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDistance:I

    .line 818
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDistance:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 821
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-ge v3, p3, :cond_6

    .line 823
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 826
    :cond_6
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-le v3, p4, :cond_7

    .line 828
    iput p4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 831
    :cond_7
    if-eqz p5, :cond_3

    iget-boolean v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-nez v3, :cond_3

    .line 832
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 833
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v4

    if-gt v3, v4, :cond_8

    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_9

    .line 834
    :cond_8
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 835
    .restart local v0       #sign:F
    float-to-int v3, v0

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v4

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 837
    .end local v0           #sign:F
    :cond_9
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 838
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    .line 839
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 914
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 915
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 916
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 919
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 920
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startAfterEdge(IIII)V

    .line 922
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 737
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 739
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 668
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    .line 669
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 751
    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 753
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 754
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 756
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 757
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 759
    if-ge p1, p2, :cond_1

    .line 760
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    .line 765
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 761
    :cond_1
    if-le p1, p3, :cond_0

    .line 762
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 765
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 715
    iput-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 717
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 718
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 720
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 721
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 724
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 725
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 726
    return-void
.end method

.method update()Z
    .locals 20

    .prologue
    .line 984
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .line 985
    .local v10, time:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    sub-long v3, v10, v15

    .line 986
    .local v3, currentTime:J
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    int-to-float v15, v15

    const/high16 v16, 0x4180

    mul-float v15, v15, v16

    float-to-int v12, v15

    .line 995
    .local v12, timePassed:I
    const-wide/16 v6, 0x0

    .line 997
    .local v6, distance:D
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    packed-switch v15, :pswitch_data_0

    .line 1092
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1093
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1095
    const/4 v15, 0x1

    :goto_0
    return v15

    .line 999
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v16, 0x458ca000

    div-float v15, v15, v16

    const/high16 v16, 0x3f80

    sub-float v15, v15, v16

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const-wide v17, 0x3fd3333333333333L

    mul-double v15, v15, v17

    const-wide v17, 0x3fe6666666666666L

    add-double v15, v15, v17

    double-to-float v13, v15

    .line 1000
    .local v13, velocityCoef:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    mul-float/2addr v15, v13

    const v16, 0x44bb8000

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb4d12d84aL

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4030

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide v18, 0x3fe921fb4d12d84aL

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v2, v15, v16

    .line 1003
    .local v2, currV:F
    const/high16 v15, 0x4180

    mul-float/2addr v15, v2

    float-to-double v6, v15

    .line 1004
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_3

    .line 1005
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 1006
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 1007
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1009
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v5, v15

    .line 1010
    .local v5, delta:I
    if-nez v5, :cond_4

    .line 1011
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    div-double/2addr v15, v6

    double-to-int v5, v15

    .line 1013
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    add-int/2addr v15, v5

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1014
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    .line 1015
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    .line 1016
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1017
    const/high16 v15, 0x447a

    mul-float/2addr v15, v2

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-eqz v15, :cond_7

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    :cond_5
    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_7

    .line 1020
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1021
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1023
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1027
    .end local v2           #currV:F
    .end local v5           #delta:I
    .end local v13           #velocityCoef:F
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    if-nez v15, :cond_13

    .line 1028
    :cond_8
    int-to-float v15, v12

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v14, v15, v16

    .line 1029
    .local v14, x:F
    const/high16 v15, 0x4160

    invoke-static {v14, v15}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v14

    .line 1030
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-double v6, v15

    .line 1036
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-gez v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    int-to-double v15, v15

    cmpl-double v15, v6, v15

    if-gez v15, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-lez v15, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    int-to-double v15, v15

    cmpg-double v15, v6, v15

    if-gtz v15, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-nez v15, :cond_b

    .line 1037
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1038
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    int-to-float v15, v15

    const/high16 v16, 0x4180

    mul-float v15, v15, v16

    float-to-int v12, v15

    .line 1040
    int-to-float v15, v12

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v14, v15, v16

    .line 1041
    const/high16 v15, 0x4160

    invoke-static {v14, v15}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v14

    .line 1042
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-double v6, v15

    .line 1045
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    goto :goto_1

    .line 1048
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    if-eqz v15, :cond_f

    .line 1049
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    const/high16 v16, 0x4180

    mul-float v15, v15, v16

    float-to-int v12, v15

    .line 1050
    int-to-float v15, v12

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v14, v15, v16

    .line 1052
    const/high16 v15, 0x4160

    invoke-static {v14, v15}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v14

    .line 1053
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-double v8, v15

    .line 1054
    .local v8, nextDistance:D
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-gez v15, :cond_c

    sub-double v15, v8, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v6, v17

    cmpg-double v15, v15, v17

    if-ltz v15, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-lez v15, :cond_e

    sub-double v15, v8, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v6, v17

    cmpl-double v15, v15, v17

    if-lez v15, :cond_e

    .line 1056
    :cond_d
    move-wide v6, v8

    .line 1057
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1059
    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    .line 1062
    .end local v8           #nextDistance:D
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-gez v15, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-lez v15, :cond_11

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_12

    :cond_11
    float-to-double v15, v14

    const-wide v17, 0x3fed1eb851eb851fL

    cmpl-double v15, v15, v17

    if-gtz v15, :cond_12

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_0

    .line 1065
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 1066
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1070
    .end local v14           #x:F
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 1071
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1076
    :pswitch_2
    int-to-float v15, v12

    const/high16 v16, 0x3f80

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1100()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v14, v15, v16

    .line 1078
    .restart local v14       #x:F
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mAccelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v14

    .line 1079
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-double v6, v15

    .line 1080
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1084
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1085
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1086
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 1087
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 685
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 686
    return-void
.end method
