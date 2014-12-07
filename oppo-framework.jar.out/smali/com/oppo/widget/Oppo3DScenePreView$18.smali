.class Lcom/oppo/widget/Oppo3DScenePreView$18;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->onProgressStart(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    if-nez v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollStart()V

    .line 2885
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->val$progress:F

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgress:F

    .line 2887
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 2888
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2889
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2890
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2891
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2892
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2894
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$18;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 2895
    return-void
.end method
