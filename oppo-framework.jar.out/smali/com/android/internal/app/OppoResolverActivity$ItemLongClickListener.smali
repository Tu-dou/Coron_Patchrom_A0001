.class Lcom/android/internal/app/OppoResolverActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "OppoResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoResolverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/internal/app/OppoResolverActivity$ItemLongClickListener;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/app/OppoResolverActivity$ItemLongClickListener;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mAdapter:Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/OppoResolverActivity;->access$000(Lcom/android/internal/app/OppoResolverActivity;)Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 839
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/OppoResolverActivity$ItemLongClickListener;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/OppoResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 840
    const/4 v1, 0x1

    return v1
.end method
