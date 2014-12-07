.class Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;
.super Ljava/lang/Object;
.source "OppoShotScreenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoShotScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v1, v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    #getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$000(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 60
    :cond_0
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
