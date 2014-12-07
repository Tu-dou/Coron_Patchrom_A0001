.class public Lcom/oppo/widget/OppoLockPatternView;
.super Landroid/view/View;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoLockPatternView$SavedState;,
        Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;,
        Lcom/oppo/widget/OppoLockPatternView$DisplayMode;,
        Lcom/oppo/widget/OppoLockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "OppoLockPatternView"


# instance fields
.field private mAlpha:I

.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapGreen:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapRed:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDefaultDiameterFactor:F

.field private mDefaultTrueColor:I

.field private mDefaultWrongColor:I

.field private mDiameterFactor:F

.field private mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

.field private mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

.field private mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

.field private mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

.field private mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

.field private mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

.field private mDrawableGreen:Landroid/graphics/drawable/Drawable;

.field private mDrawableRed:Landroid/graphics/drawable/Drawable;

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I

.field private mTrueColor:I

.field private mWrongColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 296
    const v0, 0xc010447

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 301
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawingProfilingStarted:Z

    .line 81
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 82
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 102
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    .line 108
    const/high16 v11, -0x4080

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 109
    const/high16 v11, -0x4080

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 113
    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 114
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 115
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 116
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 117
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 119
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 120
    const v11, 0x3eb33333

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultDiameterFactor:F

    .line 121
    const/16 v11, 0x7f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mStrokeAlpha:I

    .line 122
    const v11, 0x3f19999a

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    .line 141
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 142
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 148
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 149
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 151
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    .line 152
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    .line 153
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    .line 157
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    .line 162
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    .line 166
    const/16 v11, 0x33

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultTrueColor:I

    .line 167
    const/16 v11, 0x66

    const/16 v12, 0xff

    const/16 v13, 0x18

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultWrongColor:I

    .line 1387
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 304
    .local v10, resources:Landroid/content/res/Resources;
    sget-object v11, Loppo/R$styleable;->OppoLockPatternView:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 306
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, aspect:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    .line 308
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    .line 309
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    .line 310
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    .line 311
    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_0

    .line 314
    const v11, 0xc080423

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_1

    .line 317
    const v11, 0xc080424

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    .line 319
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_2

    .line 320
    const v11, 0xc080425

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    .line 325
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_3

    .line 326
    const v11, 0xc080429

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    .line 328
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_4

    .line 329
    const v11, 0xc08042a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    .line 331
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_5

    .line 332
    const v11, 0xc08042b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    .line 336
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_6

    .line 337
    const v11, 0xc080426

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    .line 339
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_7

    .line 340
    const v11, 0xc080427

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    .line 342
    :cond_7
    const/4 v11, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultDiameterFactor:F

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 344
    const/4 v11, 0x7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultTrueColor:I

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTrueColor:I

    .line 345
    const/16 v11, 0x8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultWrongColor:I

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mWrongColor:I

    .line 348
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    const-string v11, "square"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 351
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    .line 360
    :goto_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/widget/OppoLockPatternView;->setClickable(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v12, 0x4d

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v12, 0x7f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->initBitmapResources()V

    .line 390
    const/4 v11, 0x6

    new-array v7, v11, [Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    .line 394
    .local v7, bitmaps:[Landroid/graphics/Bitmap;
    move-object v4, v7

    .local v4, arr$:[Landroid/graphics/Bitmap;
    array-length v9, v4

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_b

    aget-object v6, v4, v8

    .line 395
    .local v6, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 396
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 394
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 352
    .end local v4           #arr$:[Landroid/graphics/Bitmap;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_8
    const-string v11, "lock_width"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 353
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 354
    :cond_9
    const-string v11, "lock_height"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 355
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 357
    :cond_a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 399
    .restart local v4       #arr$:[Landroid/graphics/Bitmap;
    .restart local v7       #bitmaps:[Landroid/graphics/Bitmap;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    :cond_b
    return-void
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoLockPatternView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I

    return p1
.end method

.method private addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 714
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyCellAdded()V

    .line 716
    return-void
.end method

.method private changePaintColor()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mWrongColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1383
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 721
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoLockPatternView;->getRowHit(F)I

    move-result v1

    .line 722
    .local v1, rowHit:I
    if-gez v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-object v2

    .line 725
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->getColumnHit(F)I

    move-result v0

    .line 726
    .local v0, columnHit:I
    if-ltz v0, :cond_0

    .line 730
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 733
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 581
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 582
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 583
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoLockPatternView;->checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v0

    .line 673
    .local v0, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 676
    const/4 v4, 0x0

    .line 677
    .local v4, fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 678
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 679
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 680
    .local v6, lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 681
    .local v2, dRow:I
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 683
    .local v1, dColumn:I
    iget v5, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 684
    .local v5, fillInRow:I
    iget v3, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 686
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 687
    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 690
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 691
    iget v8, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 694
    :cond_2
    invoke-static {v5, v3}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v4

    .line 697
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 699
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 701
    :cond_4
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 702
    iget-boolean v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 703
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/oppo/widget/OppoLockPatternView;->performHapticFeedback(II)Z

    .line 709
    .end local v0           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v4           #fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 687
    goto :goto_0

    .line 709
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/oppo/widget/OppoLockPatternView$Cell;Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 21
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/4 v9, 0x1

    .line 1152
    .local v9, green:Z
    :goto_0
    move-object/from16 v0, p5

    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 1153
    .local v8, endRow:I
    move-object/from16 v0, p4

    iget v13, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 1154
    .local v13, startRow:I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 1155
    .local v7, endColumn:I
    move-object/from16 v0, p4

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 1158
    .local v12, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 1159
    .local v10, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x2

    .line 1164
    .local v11, offsetY:I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 1165
    .local v4, arrow:Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 1166
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 1169
    .local v5, cellHeight:I
    sub-int v17, v8, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-int v19, v7, v12

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 1171
    .local v16, theta:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42b4

    add-float v3, v17, v18

    .line 1174
    .local v3, angle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1175
    .local v14, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 1176
    .local v15, sy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, p2

    int-to-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, p3

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    int-to-float v0, v5

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1185
    return-void

    .line 1150
    .end local v3           #angle:F
    .end local v4           #arrow:Landroid/graphics/Bitmap;
    .end local v5           #cellHeight:I
    .end local v6           #cellWidth:I
    .end local v7           #endColumn:I
    .end local v8           #endRow:I
    .end local v9           #green:Z
    .end local v10           #offsetX:I
    .end local v11           #offsetY:I
    .end local v12           #startColumn:I
    .end local v13           #startRow:I
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #theta:F
    :cond_0
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1164
    .restart local v7       #endColumn:I
    .restart local v8       #endRow:I
    .restart local v9       #green:Z
    .restart local v10       #offsetX:I
    .restart local v11       #offsetY:I
    .restart local v12       #startColumn:I
    .restart local v13       #startRow:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 12
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    .line 1194
    const/4 v3, 0x0

    .line 1203
    .local v3, outerCircle:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_4

    .line 1205
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    .line 1247
    :goto_0
    iget v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 1248
    .local v8, width:I
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 1250
    .local v0, height:I
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 1251
    .local v5, squareWidth:F
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 1253
    .local v4, squareHeight:F
    int-to-float v9, v8

    sub-float v9, v5, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-int v1, v9

    .line 1254
    .local v1, offsetX:I
    int-to-float v9, v0

    sub-float v9, v4, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-int v2, v9

    .line 1257
    .local v2, offsetY:I
    iget v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1258
    .local v6, sx:F
    iget v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1260
    .local v7, sy:F
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v10, p2, v1

    int-to-float v10, v10

    add-int v11, p3, v2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1261
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1262
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1263
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1266
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_1

    .line 1267
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1268
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1271
    :cond_1
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1274
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_3

    .line 1275
    :cond_2
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1278
    :cond_3
    return-void

    .line 1207
    .end local v0           #height:I
    .end local v1           #offsetX:I
    .end local v2           #offsetY:I
    .end local v4           #squareHeight:F
    .end local v5           #squareWidth:F
    .end local v6           #sx:F
    .end local v7           #sy:F
    .end local v8           #width:I
    :cond_4
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_5

    .line 1209
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1211
    :cond_5
    if-eqz p4, :cond_6

    iget-boolean v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v9, v10, :cond_7

    .line 1213
    :cond_6
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1220
    :cond_7
    iget-boolean v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v9, :cond_8

    .line 1222
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1229
    :cond_8
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_9

    .line 1231
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1238
    :cond_9
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_b

    .line 1241
    :cond_a
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1243
    :cond_b
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown display mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 1011
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 1015
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 765
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 766
    .local v4, squareWidth:F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 768
    .local v1, hitSize:F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 769
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 771
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 772
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 776
    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 769
    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 744
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 745
    .local v4, squareHeight:F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 747
    .local v0, hitSize:F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 748
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 750
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 751
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 755
    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 748
    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v1           #hitTop:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    .line 978
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 980
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 981
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v1

    .line 982
    .local v1, hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v1, :cond_2

    .line 983
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 984
    sget-object v7, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 985
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 990
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 991
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 992
    .local v2, startX:F
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 994
    .local v3, startY:F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 995
    .local v4, widthOffset:F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 997
    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/oppo/widget/OppoLockPatternView;->invalidate(IIII)V

    .line 1000
    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_1
    iput v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 1001
    iput v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 1008
    return-void

    .line 986
    :cond_2
    iget-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    .line 987
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 988
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .parameter "event"

    .prologue
    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 837
    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_c

    .line 838
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 839
    .local v25, x:F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 840
    .local v26, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 841
    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v9

    .line 842
    .local v9, hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 843
    .local v17, patternSize:I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 844
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 848
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 849
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 850
    .local v6, dy:F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 852
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 853
    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 855
    .local v15, oldY:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 856
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 858
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    if-lez v17, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 860
    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f00

    mul-float v19, v27, v28

    .line 862
    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 864
    .local v12, lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 865
    .local v21, startX:F
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 870
    .local v22, startY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 872
    .local v11, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 873
    move/from16 v13, v21

    .line 874
    .local v13, left:F
    move/from16 v20, v25

    .line 880
    .local v20, right:F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 881
    move/from16 v23, v22

    .line 882
    .local v23, top:F
    move/from16 v4, v26

    .line 889
    .local v4, bottom:F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 892
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 893
    move/from16 v13, v21

    .line 894
    move/from16 v20, v14

    .line 900
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 901
    move/from16 v23, v22

    .line 902
    move v4, v15

    .line 909
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 913
    if-eqz v9, :cond_1

    .line 914
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 915
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 917
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 919
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    check-cast v9, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 921
    .restart local v9       #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 922
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 924
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 925
    move/from16 v13, v21

    .line 926
    move/from16 v20, v14

    .line 932
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 933
    move/from16 v23, v22

    .line 934
    move v4, v15

    .line 944
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 945
    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 947
    .local v7, heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 953
    .end local v4           #bottom:F
    .end local v7           #heightOffset:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13           #left:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    .end local v24           #widthOffset:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 837
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 838
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 839
    .restart local v25       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 876
    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v9       #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v11       #invalidateRect:Landroid/graphics/Rect;
    .restart local v12       #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v14       #oldX:F
    .restart local v15       #oldY:F
    .restart local v16       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .restart local v17       #patternSize:I
    .restart local v18       #patternSizePreHitDetect:I
    .restart local v19       #radius:F
    .restart local v21       #startX:F
    .restart local v22       #startY:F
    .restart local v26       #y:F
    :cond_5
    move/from16 v13, v25

    .line 877
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_3

    .line 884
    :cond_6
    move/from16 v23, v26

    .line 885
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_4

    .line 896
    :cond_7
    move v13, v14

    .line 897
    move/from16 v20, v21

    goto/16 :goto_5

    .line 904
    :cond_8
    move/from16 v23, v15

    .line 905
    move/from16 v4, v22

    goto/16 :goto_6

    .line 928
    :cond_9
    move v13, v14

    .line 929
    move/from16 v20, v21

    goto :goto_7

    .line 936
    :cond_a
    move/from16 v23, v15

    .line 937
    move/from16 v4, v22

    goto :goto_8

    .line 940
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 941
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 956
    .end local v4           #bottom:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13           #left:F
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_c
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 966
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternDetected()V

    .line 967
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 975
    :cond_0
    return-void
.end method

.method private initBitmapResources()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 403
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 404
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 406
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 409
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 410
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    .line 411
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    .line 413
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 536
    :cond_0
    const v0, 0xc04045b

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 537
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCleared()V

    .line 557
    :cond_0
    const v0, 0xc04045e

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 558
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 550
    :cond_0
    const v0, 0xc04045d

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 551
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternStart()V

    .line 543
    :cond_0
    const v0, 0xc04045c

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 544
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 572
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 573
    sget-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 574
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 575
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 615
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 624
    move v0, v1

    .line 626
    :goto_0
    return v0

    .line 617
    :sswitch_0
    move v0, p2

    .line 618
    goto :goto_0

    .line 620
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 621
    goto :goto_0

    .line 615
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 960
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 565
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 594
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 601
    return-void
.end method

.method public getFailAnimator()Landroid/animation/Animator;
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x2

    .line 1390
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    const-string v4, "alpha"

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1391
    .local v1, oa1:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1392
    new-instance v3, Lcom/oppo/widget/OppoLockPatternView$1;

    invoke-direct {v3, p0, v1}, Lcom/oppo/widget/OppoLockPatternView$1;-><init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1401
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    const-string v4, "alpha"

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1402
    .local v2, oa2:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1403
    new-instance v3, Lcom/oppo/widget/OppoLockPatternView$2;

    invoke-direct {v3, p0, v2}, Lcom/oppo/widget/OppoLockPatternView$2;-><init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1410
    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1412
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1413
    .local v0, as:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1415
    return-object v0

    .line 1390
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 1401
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getSuccessAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1420
    .local v0, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1421
    new-instance v1, Lcom/oppo/widget/OppoLockPatternView$3;

    invoke-direct {v1, p0, v0}, Lcom/oppo/widget/OppoLockPatternView$3;-><init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1429
    return-object v0

    .line 1419
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 1020
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->changePaintColor()V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 1023
    .local v28, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1024
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    .line 1026
    .local v15, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_2

    .line 1031
    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .line 1032
    .local v25, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .line 1034
    .local v31, spotInCycle:I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .line 1036
    .local v23, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 1037
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1038
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1039
    .local v7, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v7}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    .line 1037
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1044
    .end local v7           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    if-lez v23, :cond_3

    move/from16 v0, v23

    if-ge v0, v12, :cond_3

    const/16 v21, 0x1

    .line 1046
    .local v21, needToUpdateInProgressPoint:Z
    :goto_1
    if-eqz v21, :cond_1

    .line 1047
    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v29, v3, v4

    .line 1050
    .local v29, percentageOfNextCircle:F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1051
    .local v13, currentCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v3, v13, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 1052
    .local v10, centerX:F
    iget v3, v13, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 1054
    .local v11, centerY:F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1055
    .local v22, nextCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    mul-float v17, v29, v3

    .line 1057
    .local v17, dx:F
    move-object/from16 v0, v22

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    mul-float v18, v29, v3

    .line 1059
    .local v18, dy:F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 1060
    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 1063
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v13           #currentCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v17           #dx:F
    .end local v18           #dy:F
    .end local v22           #nextCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v29           #percentageOfNextCircle:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1066
    .end local v19           #i:I
    .end local v21           #needToUpdateInProgressPoint:Z
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .line 1067
    .local v33, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .line 1069
    .local v32, squareHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    mul-float v3, v3, v33

    const/high16 v4, 0x3f00

    mul-float v30, v3, v4

    .line 1070
    .local v30, radius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1073
    .local v14, currentPath:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    move/from16 v27, v0

    .line 1077
    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    move/from16 v26, v0

    .line 1079
    .local v26, paddingLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 1080
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .line 1082
    .local v6, topY:F
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 1083
    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 1084
    .local v5, leftX:F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 1082
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1044
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v14           #currentPath:Landroid/graphics/Path;
    .end local v20           #j:I
    .end local v26           #paddingLeft:I
    .end local v27           #paddingTop:I
    .end local v30           #radius:F
    .end local v32           #squareHeight:F
    .end local v33           #squareWidth:F
    .restart local v23       #numCircles:I
    .restart local v25       #oneCycle:I
    .restart local v31       #spotInCycle:I
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1079
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    .restart local v6       #topY:F
    .restart local v14       #currentPath:Landroid/graphics/Path;
    .restart local v20       #j:I
    .restart local v26       #paddingLeft:I
    .restart local v27       #paddingTop:I
    .restart local v30       #radius:F
    .restart local v32       #squareHeight:F
    .restart local v33       #squareWidth:F
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1092
    .end local v6           #topY:F
    .end local v20           #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_c

    :cond_6
    const/16 v16, 0x1

    .line 1096
    .local v16, drawPath:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/16 v24, 0x1

    .line 1097
    .local v24, oldFlag:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1098
    if-eqz v16, :cond_7

    .line 1099
    const/16 v19, 0x0

    :goto_6
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 1100
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1101
    .restart local v7       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1106
    .local v8, next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v3, v8, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v8, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_e

    .line 1117
    .end local v7           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v8           #next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_7
    if-eqz v16, :cond_b

    .line 1118
    const/4 v9, 0x0

    .line 1119
    .local v9, anyCircles:Z
    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v12, :cond_8

    .line 1120
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1125
    .restart local v7       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v3, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_f

    .line 1140
    .end local v7           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_a

    :cond_9
    if-eqz v9, :cond_a

    .line 1141
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1143
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1146
    .end local v9           #anyCircles:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1147
    return-void

    .line 1092
    .end local v16           #drawPath:Z
    .end local v24           #oldFlag:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1096
    .restart local v16       #drawPath:Z
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 1110
    .restart local v7       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v8       #next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v24       #oldFlag:Z
    :cond_e
    move/from16 v0, v26

    int-to-float v3, v0

    iget v4, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 1111
    .restart local v5       #leftX:F
    move/from16 v0, v27

    int-to-float v3, v0

    iget v4, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6       #topY:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1113
    invoke-direct/range {v3 .. v8}, Lcom/oppo/widget/OppoLockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/oppo/widget/OppoLockPatternView$Cell;Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 1099
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1128
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v8           #next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v9       #anyCircles:Z
    :cond_f
    const/4 v9, 0x1

    .line 1130
    iget v3, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 1131
    .restart local v10       #centerX:F
    iget v3, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 1132
    .restart local v11       #centerY:F
    if-nez v19, :cond_10

    .line 1133
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1119
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 1135
    :cond_10
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 781
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 783
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 794
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 795
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 797
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 785
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 788
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 791
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 644
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 645
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 646
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 648
    .local v2, viewHeight:I
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 660
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/oppo/widget/OppoLockPatternView;->setMeasuredDimension(II)V

    .line 661
    return-void

    .line 650
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 651
    goto :goto_0

    .line 653
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 654
    goto :goto_0

    .line 656
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1289
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    .line 1290
    .local v0, ss:Lcom/oppo/widget/OppoLockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1291
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1293
    invoke-static {}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->values()[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 1294
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 1295
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 1296
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 1297
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1282
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1283
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/oppo/widget/OppoLockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    .line 605
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 606
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 608
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 609
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 610
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 802
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 830
    :cond_1
    :goto_0
    return v0

    .line 806
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 830
    goto :goto_0

    .line 808
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 811
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 814
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 817
    :pswitch_3
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    .line 818
    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 819
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 820
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycleBitmapResources()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 429
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 434
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 440
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    :cond_7
    return-void
.end method

.method public setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 518
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    .line 524
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 525
    .local v0, first:Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 526
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 527
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 529
    .end local v0           #first:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 530
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 471
    return-void
.end method

.method public setOnPatternListener(Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    .line 490
    return-void
.end method

.method public setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/widget/OppoLockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 500
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 502
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 503
    .local v0, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 506
    .end local v0           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V

    .line 507
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 481
    return-void
.end method
