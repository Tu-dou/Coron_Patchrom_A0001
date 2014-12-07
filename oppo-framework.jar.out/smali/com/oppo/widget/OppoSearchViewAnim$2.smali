.class Lcom/oppo/widget/OppoSearchViewAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoSearchViewAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchViewAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchViewAnim;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchViewAnim;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 101
    const/16 v0, 0x3eb

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$200(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$200(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;->onHideAnimationEnd()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/16 v1, 0x3e9

    #setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I

    .line 110
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$700(Lcom/oppo/widget/OppoSearchViewAnim;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$102(Lcom/oppo/widget/OppoSearchViewAnim;Z)Z

    .line 113
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$500(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method
