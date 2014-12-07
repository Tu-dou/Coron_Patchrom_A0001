.class Lcom/android/server/am/OppoPermissionInterceptPolicy$2;
.super Landroid/os/Handler;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 226
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 228
    :pswitch_0
    const/4 v2, 0x0

    .line 229
    .local v2, pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 231
    :try_start_0
    const-string v3, "OppoPermissionInterceptPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage DO_CHECK_PERMISSION,  size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sPermissionCheckMsgList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 235
    monitor-exit v4

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 237
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    move-object v2, v0

    .line 238
    if-nez v2, :cond_1

    .line 239
    monitor-exit v4

    goto :goto_0

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    #calls: Lcom/android/server/am/OppoPermissionInterceptPolicy;->showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    invoke-static {v3, v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, iex:Ljava/lang/InterruptedException;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
