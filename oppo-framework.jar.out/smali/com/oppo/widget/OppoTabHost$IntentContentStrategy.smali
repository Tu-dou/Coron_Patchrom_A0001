.class Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Lcom/oppo/widget/OppoTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p2, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 806
    iput-object p3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 807
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/oppo/widget/OppoTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 797
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 6

    .prologue
    .line 810
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    iget-object v3, v3, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v3, :cond_0

    .line 811
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    iget-object v3, v3, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v4, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 815
    .local v1, w:Landroid/view/Window;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 816
    .local v2, wd:Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 817
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 818
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "LaunchedView of the intent has parent!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 815
    .end local v2           #wd:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 821
    .restart local v2       #wd:Landroid/view/View;
    :cond_2
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 829
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 830
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 832
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/high16 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 835
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mUseFragment:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoTabHost;->access$1100(Lcom/oppo/widget/OppoTabHost;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 838
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;
    invoke-static {v3}, Lcom/oppo/widget/OppoTabHost;->access$1200(Lcom/oppo/widget/OppoTabHost;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    iget v4, v4, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    .line 839
    .local v0, mSpec:Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 842
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    iget-object v3, v3, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    .line 845
    .end local v0           #mSpec:Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v3
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 852
    :cond_0
    return-void
.end method
