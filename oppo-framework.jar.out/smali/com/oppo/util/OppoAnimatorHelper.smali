.class public Lcom/oppo/util/OppoAnimatorHelper;
.super Ljava/lang/Object;
.source "OppoAnimatorHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;,
        Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;,
        Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    }
.end annotation


# static fields
.field public static final AFTER:I = 0x1

.field public static final BEFORE:I = 0x2

.field private static final DBG:Z = true

.field private static final DBG_ANIMATOR:Z = false

.field public static final DEFAULT_VISIBILITY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoAnimatorHelper"

.field public static final WITH:I


# instance fields
.field private mAnimatorDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:F

.field private mDependency:I

.field private mDuration:J

.field private mIn:Z

.field private mTag:Ljava/lang/String;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZI)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZI)V
    .locals 6
    .parameter
    .parameter "in"
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJ)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJ)V
    .locals 7
    .parameter
    .parameter "in"
    .parameter "visibility"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZIJ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJI)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJI)V
    .locals 8
    .parameter
    .parameter "in"
    .parameter "visibility"
    .parameter "duration"
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZIJI)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJILjava/lang/String;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "in"
    .parameter "visibility"
    .parameter "duration"
    .parameter "dependency"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZIJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    .line 50
    iput-boolean v2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mIn:Z

    .line 51
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mCount:F

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDuration:J

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    .line 54
    iput v2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDependency:I

    .line 202
    iput-object p1, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    .line 203
    iput-boolean p2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mIn:Z

    .line 204
    iput p3, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    .line 205
    iput-wide p4, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDuration:J

    .line 206
    iput p6, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDependency:I

    .line 207
    iput-object p7, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    .line 208
    return-void
.end method

.method private LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 5
    .parameter "animation"
    .parameter "message"

    .prologue
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 341
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/util/OppoAnimatorHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, info:Ljava/lang/String;
    const-string v1, "OppoAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private getFinalVisibility()I
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 332
    iget v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    .line 334
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setTargetVisibility(Landroid/animation/Animator;I)Landroid/view/View;
    .locals 2
    .parameter "animation"
    .parameter "visibility"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, target:Landroid/view/View;
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 323
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #target:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 324
    .restart local v0       #target:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_0
    return-object v0
.end method

.method private updateValues(Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;Landroid/view/View;)V
    .locals 8
    .parameter "data"
    .parameter "target"

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getListener()Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    move-result-object v2

    .line 302
    .local v2, listener:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    if-eqz v2, :cond_1

    .line 303
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getPivotXValue(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setPivotX(F)V

    .line 304
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getPivotYValue(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setPivotY(F)V

    .line 305
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getStartValue(Landroid/view/View;)F

    move-result v4

    .line 306
    .local v4, startValue:F
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getEndValue(Landroid/view/View;)F

    move-result v1

    .line 307
    .local v1, endValue:F
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 308
    .local v0, animation:Landroid/animation/ValueAnimator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 310
    const-string v3, ""

    .line 311
    .local v3, prop:Ljava/lang/String;
    instance-of v5, v0, Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_0

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0           #animation:Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    :cond_0
    const-string v5, "OppoAnimatorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateValues"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v1           #endValue:F
    .end local v3           #prop:Ljava/lang/String;
    .end local v4           #startValue:F
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 2
    .parameter "listener"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    :cond_0
    return-object p0
.end method

.method public appendTag(Ljava/lang/String;)V
    .locals 2
    .parameter "suffix"

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    .line 295
    .local v0, data:Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/util/OppoAnimatorHelper;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 297
    .end local v0           #data:Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    :cond_0
    return-void
.end method

.method public getAnimators()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    .line 256
    .local v0, data:Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0           #data:Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    :cond_0
    return-object v2
.end method

.method public getDependency()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDependency:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    .line 282
    iget-object v4, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    .line 283
    .local v1, data:Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    invoke-virtual {v1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 284
    .local v0, animation:Landroid/animation/ValueAnimator;
    iget-wide v4, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/oppo/util/OppoAnimatorHelper;->setTargetVisibility(Landroid/animation/Animator;I)Landroid/view/View;

    move-result-object v3

    .line 287
    .local v3, target:Landroid/view/View;
    invoke-direct {p0, v1, v3}, Lcom/oppo/util/OppoAnimatorHelper;->updateValues(Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;Landroid/view/View;)V

    goto :goto_0

    .line 289
    .end local v0           #animation:Landroid/animation/ValueAnimator;
    .end local v1           #data:Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    .end local v3           #target:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 213
    const-string v0, "onAnimationCancel"

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 219
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-direct {p0}, Lcom/oppo/util/OppoAnimatorHelper;->getFinalVisibility()I

    move-result v0

    .line 221
    .local v0, visibility:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->setTargetVisibility(Landroid/animation/Animator;I)Landroid/view/View;

    .line 223
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 228
    const-string v0, "onAnimationRepeat"

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 234
    const-string v0, "onAnimationStart"

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 235
    return-void
.end method
