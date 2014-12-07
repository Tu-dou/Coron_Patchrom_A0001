.class Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoGsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    const-string v2, "Receive broadcast ACTION_NEW_INCOMING_CALL"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, idx:I
    if-lez v0, :cond_0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    const-string v2, "oppo block the incoming and hangup it!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 116
    .end local v0           #idx:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    #setter for: Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->access$102(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    #setter for: Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->access$002(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;Landroid/os/Message;)Landroid/os/Message;

    .line 118
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    #setter for: Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->access$102(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method
