.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;
.super Landroid/content/BroadcastReceiver;
.source "OppoPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.END_CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$702(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v2, "com.oppo.intent.action.START_SPEECH_ENABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "receive START_SPEECH_ENABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    goto :goto_0

    .line 332
    :cond_2
    const-string v2, "com.oppo.intent.action.START_SPEECH_DISABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "receive START_SPEECH_DISABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    goto :goto_0

    .line 337
    :cond_3
    const-string v2, "oppo.intent.action.SCREEN_SHOT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_SCREEN_SHOT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v5, "direction"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->shotScreen(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V

    goto :goto_0

    .line 344
    :cond_4
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, state:Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J
    invoke-static {v2, v7, v8}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J

    goto :goto_0

    .line 348
    :cond_5
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J

    goto/16 :goto_0

    .line 350
    :cond_6
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J
    invoke-static {v2, v7, v8}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J

    goto/16 :goto_0
.end method
