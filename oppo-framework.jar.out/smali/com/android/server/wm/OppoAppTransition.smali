.class public Lcom/android/server/wm/OppoAppTransition;
.super Lcom/android/server/wm/AppTransition;
.source "OppoAppTransition.java"


# static fields
.field private static final DEBUG_ANIM:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0x12cL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "OppoAppTransition"

.field private static isOppoLauncher:Z


# instance fields
.field private final mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionEnterTemp:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionExitTemp:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionType:I

.field private final mOppoDecelerateInterpolator:Landroid/view/animation/OppoDecelerateInterpolator;

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->DEBUG_APP_TRANSITIONS:Z

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 52
    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 83
    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mConfigShortAnimTime:I

    .line 92
    new-instance v0, Landroid/view/animation/OppoDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OppoDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoDecelerateInterpolator:Landroid/view/animation/OppoDecelerateInterpolator;

    .line 94
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    const v0, 0x10c0002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 98
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    new-instance v0, Lcom/android/server/wm/OppoAppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OppoAppTransition$1;-><init>(Lcom/android/server/wm/OppoAppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/OppoAppTransition;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wm/OppoAppTransition;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    return p1
.end method

.method private static computePivot(IF)F
    .locals 3
    .parameter "startPos"
    .parameter "finalScale"

    .prologue
    .line 209
    const/high16 v1, 0x3f80

    sub-float v0, p1, v1

    .line 210
    .local v0, denom:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 211
    int-to-float v1, p0

    .line 213
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createOppoCustomAnimLocked(Ljava/lang/String;ZII)Landroid/view/animation/Animation;
    .locals 19
    .parameter "packageName"
    .parameter "enter"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 379
    const/4 v8, 0x0

    .line 380
    .local v8, a:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    const-wide/16 v10, 0x12c

    .line 383
    .local v10, duration:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getLowerDigit(I)I

    move-result v16

    .line 384
    .local v16, startWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getLowerDigit(I)I

    move-result v15

    .line 387
    .local v15, startHight:I
    if-nez v16, :cond_0

    if-eqz v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v2

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v2

    move/from16 v0, p4

    if-lt v2, v0, :cond_2

    .line 390
    :cond_1
    div-int/lit8 v17, p3, 0x2

    .line 391
    .local v17, startX:I
    div-int/lit8 v18, p4, 0x2

    .line 393
    .local v18, startY:I
    const-string v2, "OppoAppTransition"

    const-string v3, "OppoAppTransition createOppoCustomAnimLocked  start center"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v13, v2, v3

    .line 400
    .local v13, scaleW:F
    int-to-float v2, v15

    move/from16 v0, p4

    int-to-float v3, v0

    div-float v12, v2, v3

    .line 402
    .local v12, scaleH:F
    const-string v2, "OppoAppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoAppTransition createOppoCustomAnimLocked  strartX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  startWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  startHight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, scale:Landroid/view/animation/Animation;
    const/4 v14, 0x0

    .line 407
    .local v14, set:Landroid/view/animation/AnimationSet;
    const/4 v9, 0x0

    .line 408
    .local v9, alpha:Landroid/view/animation/Animation;
    if-eqz p2, :cond_3

    .line 409
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14           #set:Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-direct {v14, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 411
    .restart local v14       #set:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .end local v1           #scale:Landroid/view/animation/Animation;
    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    const v4, 0x3f99999a

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v13}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v12}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v7

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 414
    .restart local v1       #scale:Landroid/view/animation/Animation;
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 416
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9           #alpha:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 417
    .restart local v9       #alpha:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 418
    invoke-virtual {v14, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 419
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 420
    move-object v8, v14

    .line 433
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 439
    .end local v1           #scale:Landroid/view/animation/Animation;
    .end local v9           #alpha:Landroid/view/animation/Animation;
    .end local v10           #duration:J
    .end local v12           #scaleH:F
    .end local v13           #scaleW:F
    .end local v14           #set:Landroid/view/animation/AnimationSet;
    .end local v15           #startHight:I
    .end local v16           #startWidth:I
    .end local v17           #startX:I
    .end local v18           #startY:I
    :goto_2
    return-object v8

    .line 396
    .restart local v10       #duration:J
    .restart local v15       #startHight:I
    .restart local v16       #startWidth:I
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v17

    .line 397
    .restart local v17       #startX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v18

    .restart local v18       #startY:I
    goto/16 :goto_0

    .line 422
    .restart local v1       #scale:Landroid/view/animation/Animation;
    .restart local v9       #alpha:Landroid/view/animation/Animation;
    .restart local v12       #scaleH:F
    .restart local v13       #scaleW:F
    .restart local v14       #set:Landroid/view/animation/AnimationSet;
    :cond_3
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .end local v1           #scale:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f80

    move/from16 v0, v17

    invoke-static {v0, v13}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v6

    move/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v7

    move v3, v13

    move v5, v12

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 425
    .restart local v1       #scale:Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14           #set:Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-direct {v14, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 426
    .restart local v14       #set:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9           #alpha:Landroid/view/animation/Animation;
    const/high16 v2, 0x3f80

    const v3, 0x3cf5c28f

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 427
    .restart local v9       #alpha:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 429
    invoke-virtual {v14, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 430
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 431
    move-object v8, v14

    goto :goto_1

    .line 436
    .end local v1           #scale:Landroid/view/animation/Animation;
    .end local v9           #alpha:Landroid/view/animation/Animation;
    .end local v10           #duration:J
    .end local v12           #scaleH:F
    .end local v13           #scaleW:F
    .end local v14           #set:Landroid/view/animation/AnimationSet;
    .end local v15           #startHight:I
    .end local v16           #startWidth:I
    .end local v17           #startX:I
    .end local v18           #startY:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/wm/OppoAppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    goto :goto_3
.end method

.method private createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .parameter "transit"
    .parameter "enter"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 268
    const/4 v11, 0x0

    .line 269
    .local v11, a:Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 272
    .local v5, scaleW:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 273
    .local v7, scaleH:F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 279
    .local v4, scale:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoAppTransition;->mOppoDecelerateInterpolator:Landroid/view/animation/OppoDecelerateInterpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 281
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 282
    .local v12, alpha:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoAppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 285
    .local v15, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 286
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 288
    move-object v11, v15

    .line 289
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    if-eqz v6, :cond_0

    .line 290
    new-instance v6, Lcom/android/server/wm/OppoAppTransition$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/wm/OppoAppTransition$2;-><init>(Lcom/android/server/wm/OppoAppTransition;)V

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 319
    .end local v4           #scale:Landroid/view/animation/Animation;
    .end local v5           #scaleW:F
    .end local v7           #scaleH:F
    .end local v12           #alpha:Landroid/view/animation/Animation;
    .end local v15           #set:Landroid/view/animation/AnimationSet;
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 325
    const-wide/16 v13, 0x12c

    .line 328
    .local v13, duration:J
    :goto_1
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 329
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 331
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 332
    return-object v11

    .line 312
    .end local v13           #duration:J
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpExitAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_0

    .line 322
    :sswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/OppoAppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    .line 323
    .restart local v13       #duration:J
    goto :goto_1

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method private createOppoScaleUpExitAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 13
    .parameter "transit"
    .parameter "enter"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 338
    const-string v2, "OppoAppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoAppTransition createOppoScaleUpExitAnimationLocked  isOppoLauncher = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-boolean v2, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    if-nez v2, :cond_2

    .line 342
    const/16 v2, 0x100e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x200f

    if-ne p1, v2, :cond_1

    .line 348
    :cond_0
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 349
    .local v8, a:Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 372
    .end local v8           #a:Landroid/view/animation/Animation;
    :goto_0
    return-object v8

    .line 352
    :cond_1
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v8       #a:Landroid/view/animation/Animation;
    goto :goto_0

    .line 356
    .end local v8           #a:Landroid/view/animation/Animation;
    :cond_2
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 358
    .local v12, set:Landroid/view/animation/AnimationSet;
    iget v2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v11, v2, v3

    .line 359
    .local v11, scaleW:F
    iget v2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v2

    move/from16 v0, p4

    int-to-float v3, v0

    div-float v10, v2, v3

    .line 360
    .local v10, scaleH:F
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3f99999a

    const/high16 v4, 0x3f80

    const v5, 0x3f99999a

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v11}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v6

    iget v7, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v10}, Lcom/android/server/wm/OppoAppTransition;->computePivot(IF)F

    move-result v7

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 364
    .local v1, scale:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 367
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 368
    .local v9, alpha:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 369
    const-wide/16 v2, 0x96

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 370
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 371
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v8, v12

    .line 372
    goto :goto_0
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 184
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_1

    .line 187
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 188
    const-string p1, "android"

    .line 190
    :cond_0
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    .line 170
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OppoAppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 172
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 173
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 174
    move v0, p2

    .line 177
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 178
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 180
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private reviseCustomExitAnim(I)V
    .locals 2
    .parameter "transit"

    .prologue
    const/4 v1, 0x0

    .line 228
    sget-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    if-nez v0, :cond_0

    const/16 v0, 0x100d

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 232
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    .line 233
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    .line 234
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    .line 235
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    .line 237
    :cond_0
    return-void
.end method

.method static setAppWindowTokenLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .parameter "atoken"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.launcher/.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    .line 223
    :goto_0
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition setAppWindowTokenLocked isOppoLauncher ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " atoken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "OppoAppTransition"

    const-string v1, "OppoAppTransition clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 155
    invoke-super {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 156
    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    const/4 v4, 0x3

    .line 242
    invoke-direct {p0, p2}, Lcom/android/server/wm/OppoAppTransition;->reviseCustomExitAnim(I)V

    .line 244
    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/server/wm/OppoAppTransition;->createOppoCustomAnimLocked(Ljava/lang/String;ZII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 248
    .local v0, a:Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/OppoAppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_0

    :cond_0
    const-string v1, "OppoAppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0           #a:Landroid/view/animation/Animation;
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 254
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 255
    .restart local v0       #a:Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/OppoAppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_2

    :cond_2
    const-string v1, "OppoAppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"
    .parameter "startedCallback"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/OppoAppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    if-eq v0, v1, :cond_0

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 137
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 138
    iput p2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    .line 139
    iput p3, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    .line 141
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition overridePendingAppTransition packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enterAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exitAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 146
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "startWidth"
    .parameter "startHeight"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/OppoAppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 115
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    .line 116
    iput p2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    .line 117
    iput p3, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    .line 118
    iput p4, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    .line 120
    div-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p1

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getSynthesisNumber(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    .line 121
    div-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p2

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getSynthesisNumber(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    .line 124
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition overridePendingAppTransitionScaleUp  startX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 129
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 3
    .parameter "newUserId"

    .prologue
    .line 161
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition setCurrentUser () newUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    .line 164
    invoke-super {p0, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    .line 165
    return-void
.end method
