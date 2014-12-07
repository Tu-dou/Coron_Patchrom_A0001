.class Lcom/oppo/widget/OppoOptionMenuBar$9;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationUp(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$elementItem:Landroid/widget/TextView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;ILandroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$elementItem:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)[Z

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 2515
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1800(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2516
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)[Z

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 2509
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1800(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2510
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)[Z

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 2504
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/high16 v3, 0x3f80

    .line 2496
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)[Z

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 2497
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$elementItem:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2498
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$elementItem:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 2499
    return-void
.end method
