.class Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoTranslateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateService;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateService;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;-><init>(Lcom/oppo/translate/OppoTranslateService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 299
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, reason:Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "OppoTranslateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloseSystemDialog : reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v1}, Lcom/oppo/translate/OppoTranslateService;->access$600(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v1}, Lcom/oppo/translate/OppoTranslateService;->access$600(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/app/OppoSecurityAlertDialog;->hide()V

    .line 306
    .end local v0           #reason:Ljava/lang/String;
    :cond_0
    return-void
.end method
