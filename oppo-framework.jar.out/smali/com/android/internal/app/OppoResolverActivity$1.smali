.class Lcom/android/internal/app/OppoResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "OppoResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoResolverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/app/OppoResolverActivity$1;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$1;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mAdapter:Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/OppoResolverActivity;->access$000(Lcom/android/internal/app/OppoResolverActivity;)Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 96
    return-void
.end method
