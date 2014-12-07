.class Lcom/android/internal/telephony/SMSDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 1869
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$1;->getResultCode()I

    move-result v6

    if-nez v6, :cond_3

    .line 1870
    if-eqz p2, :cond_0

    .line 1871
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, action:Ljava/lang/String;
    const-string v6, "errorCode"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1873
    .local v1, error:I
    if-eqz p2, :cond_0

    .line 1874
    const-string v6, "android.intent.action.NEW_SMS_TO_BLACKLIST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1875
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v5, smsIntent:Landroid/content/Intent;
    invoke-virtual {v5, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1877
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v7, "android.permission.RECEIVE_SMS"

    const/16 v8, 0x10

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1898
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    .end local v5           #smsIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1878
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_1
    const-string v6, "android.intent.action.NEW_WAPPUSH_TO_BLACKLIST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1879
    const-string v6, "mimeType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, mimeType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1881
    .local v3, permission:Ljava/lang/String;
    const-string v6, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1882
    const-string v3, "android.permission.RECEIVE_MMS"

    .line 1886
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v4, pushIntent:Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1888
    invoke-virtual {v4, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1890
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v7, 0x12

    invoke-virtual {v6, v4, v3, v7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    .line 1884
    .end local v4           #pushIntent:Landroid/content/Intent;
    :cond_2
    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    goto :goto_1

    .line 1895
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #permission:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$1;->abortBroadcast()V

    .line 1896
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0
.end method
