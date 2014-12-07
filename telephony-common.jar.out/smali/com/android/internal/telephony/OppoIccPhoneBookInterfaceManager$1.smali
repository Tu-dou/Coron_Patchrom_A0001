.class Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "OppoIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 102
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    .local v0, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 76
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 77
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 78
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    :goto_1
    iput-boolean v3, v6, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 79
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 80
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    move v3, v4

    .line 78
    goto :goto_1

    .line 83
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 84
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_1
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 87
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 88
    .local v2, fieldInfo:[I
    array-length v3, v2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 89
    iget-object v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    const/4 v5, 0x0

    aget v5, v2, v5

    #setter for: Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;I)I

    .line 90
    iget-object v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    const/4 v5, 0x1

    aget v5, v2, v5

    #setter for: Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->access$102(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;I)I

    .line 95
    .end local v2           #fieldInfo:[I
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 96
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 92
    .restart local v2       #fieldInfo:[I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    const-string v5, "OPPO_EVENT_GET_ADN_SIZE_DONE: error."

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method
