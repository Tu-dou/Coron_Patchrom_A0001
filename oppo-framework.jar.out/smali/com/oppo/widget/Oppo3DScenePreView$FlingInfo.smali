.class public Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DScenePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mCurOffset:F

.field public mFinished:Z

.field public mVelocity:I

.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method protected constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0
    .parameter

    .prologue
    .line 2566
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeOffset()Z
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, -0x4080

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2614
    const/4 v0, 0x0

    .line 2615
    .local v0, more:Z
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    if-eqz v3, :cond_0

    .line 2616
    const-string v1, "Oppo3DScenePreView"

    const-string v3, "FlingInfo computeOffset() finished."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :goto_0
    return v2

    .line 2623
    :cond_0
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    if-le v3, v1, :cond_1

    .line 2624
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 2666
    goto :goto_0

    .line 2625
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-boolean v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mTapScrollFastMode:Z

    if-eqz v3, :cond_7

    .line 2626
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v3, :cond_4

    .line 2627
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 2628
    const/4 v0, 0x0

    .line 2629
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2631
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_3

    :goto_2
    #calls: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2632
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2631
    goto :goto_2

    .line 2635
    :cond_4
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 2636
    const/4 v0, 0x0

    .line 2637
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2639
    :cond_5
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_6

    :goto_3
    #calls: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2640
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 2639
    goto :goto_3

    .line 2644
    :cond_7
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v3, :cond_a

    .line 2645
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_8

    .line 2646
    const/4 v0, 0x0

    .line 2647
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2649
    :cond_8
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_9

    :goto_4
    #calls: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2650
    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    move v1, v2

    .line 2649
    goto :goto_4

    .line 2653
    :cond_a
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    .line 2654
    const/4 v0, 0x0

    .line 2655
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2657
    :cond_b
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_c

    :goto_5
    #calls: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2658
    const/4 v0, 0x1

    goto :goto_1

    :cond_c
    move v1, v2

    .line 2657
    goto :goto_5
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2682
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    .line 2683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    .line 2684
    return-void
.end method

.method public getCurOffset()F
    .locals 1

    .prologue
    .line 2675
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 2692
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    return v0
.end method

.method public positiveVelocity()Z
    .locals 1

    .prologue
    .line 2601
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v0, :cond_0

    .line 2602
    const/4 v0, 0x1

    .line 2604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(I)V
    .locals 3
    .parameter "velocity"

    .prologue
    const/high16 v2, 0x4120

    .line 2577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    .line 2578
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    .line 2579
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x258

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    .line 2585
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2586
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2593
    :goto_0
    return-void

    .line 2588
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    goto :goto_0
.end method
