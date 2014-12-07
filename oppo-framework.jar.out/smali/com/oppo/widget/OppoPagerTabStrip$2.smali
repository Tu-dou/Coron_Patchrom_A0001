.class Lcom/oppo/widget/OppoPagerTabStrip$2;
.super Ljava/lang/Object;
.source "OppoPagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoPagerTabStrip;->addTab(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoPagerTabStrip;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoPagerTabStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip$2;->this$0:Lcom/oppo/widget/OppoPagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip$2;->this$0:Lcom/oppo/widget/OppoPagerTabStrip;

    #getter for: Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I
    invoke-static {v1}, Lcom/oppo/widget/OppoPagerTabStrip;->access$000(Lcom/oppo/widget/OppoPagerTabStrip;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip$2;->this$0:Lcom/oppo/widget/OppoPagerTabStrip;

    #getter for: Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/oppo/widget/OppoPagerTabStrip;->access$100(Lcom/oppo/widget/OppoPagerTabStrip;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip$2;->this$0:Lcom/oppo/widget/OppoPagerTabStrip;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoPagerTabStrip;->access$202(Lcom/oppo/widget/OppoPagerTabStrip;Z)Z

    .line 358
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip$2;->this$0:Lcom/oppo/widget/OppoPagerTabStrip;

    #getter for: Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;
    invoke-static {v1}, Lcom/oppo/widget/OppoPagerTabStrip;->access$300(Lcom/oppo/widget/OppoPagerTabStrip;)Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;->onTabChanged(I)V

    .line 353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    return-void
.end method
