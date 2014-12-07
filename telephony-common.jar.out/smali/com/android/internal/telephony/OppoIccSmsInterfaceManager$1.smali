.class Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "OppoIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 107
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    const-string v2, "OPPO_EVENT_SET_SMSC"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 112
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->bSetSmscAddress:Z

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    const-string v3, "failed to set smsc"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    const-string v2, "OPPO_EVENT_GET_SMSC"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 126
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->SmscAddress:Ljava/lang/String;

    .line 132
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 130
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;

    const-string v3, "failed to get smsc"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OppoIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
