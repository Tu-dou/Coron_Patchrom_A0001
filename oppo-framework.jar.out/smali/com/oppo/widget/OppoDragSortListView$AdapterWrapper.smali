.class Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .parameter "adapter"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    .line 608
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 609
    iput-object p2, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 611
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;-><init>(Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;Lcom/oppo/widget/OppoDragSortListView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 621
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 679
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 680
    check-cast v2, Lcom/oppo/widget/OppoDragSortItemView;

    .line 681
    .local v2, v:Lcom/oppo/widget/OppoDragSortItemView;
    invoke-virtual {v2, v5}, Lcom/oppo/widget/OppoDragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 683
    .local v1, oldChild:Landroid/view/View;
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-interface {v3, p1, v1, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 687
    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v2, v5}, Lcom/oppo/widget/OppoDragSortItemView;->removeViewAt(I)V

    .line 690
    :cond_0
    invoke-virtual {v2, v0}, Lcom/oppo/widget/OppoDragSortItemView;->addView(Landroid/view/View;)V

    .line 707
    .end local v1           #oldChild:Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    #calls: Lcom/oppo/widget/OppoDragSortListView;->adjustItem(ILandroid/view/View;Z)V
    invoke-static {v3, v4, v2, v5}, Lcom/oppo/widget/OppoDragSortListView;->access$200(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V

    .line 709
    return-object v2

    .line 693
    .end local v0           #child:Landroid/view/View;
    .end local v2           #v:Lcom/oppo/widget/OppoDragSortItemView;
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-interface {v3, p1, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 694
    .restart local v0       #child:Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    .line 695
    new-instance v2, Lcom/oppo/widget/OppoDragSortItemViewCheckable;

    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/widget/OppoDragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 699
    .restart local v2       #v:Lcom/oppo/widget/OppoDragSortItemView;
    :goto_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    invoke-virtual {v2, v0, v7, v6}, Lcom/oppo/widget/OppoDragSortItemView;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 697
    .end local v2           #v:Lcom/oppo/widget/OppoDragSortItemView;
    :cond_3
    new-instance v2, Lcom/oppo/widget/OppoDragSortItemView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/widget/OppoDragSortItemView;-><init>(Landroid/content/Context;)V

    .restart local v2       #v:Lcom/oppo/widget/OppoDragSortItemView;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
