.class Lcom/oppo/widget/OppoOptionMenuBar$8;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$isScrollDown:Z


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1906
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1852
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v4, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$302(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 1857
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1858
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setClickable(Z)V

    .line 1861
    :cond_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    if-eqz v4, :cond_5

    .line 1862
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v4, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$402(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 1864
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1865
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1868
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #calls: Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V
    invoke-static {v4, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    .line 1870
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1871
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1875
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #calls: Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1600(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;

    move-result-object v3

    .line 1877
    .local v3, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1882
    .local v0, e:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1883
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1886
    .end local v0           #e:Landroid/view/View;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1887
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/oppo/widget/OppoMenuItem;)Z

    .line 1888
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v4, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 1889
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    const/4 v5, 0x0

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$702(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;

    .line 1899
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    :goto_1
    return-void

    .line 1892
    :cond_5
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$402(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 1895
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationUp()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1844
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setClickable(Z)V

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->access$302(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 1833
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    if-eqz v0, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationDown()V

    .line 1837
    :cond_1
    return-void
.end method
