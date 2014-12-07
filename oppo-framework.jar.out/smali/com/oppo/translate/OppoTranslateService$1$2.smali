.class Lcom/oppo/translate/OppoTranslateService$1$2;
.super Ljava/lang/Object;
.source "OppoTranslateService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/translate/OppoTranslateService$1;


# direct methods
.method constructor <init>(Lcom/oppo/translate/OppoTranslateService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v0, v1}, Lcom/oppo/translate/OppoTranslateService;->access$202(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 148
    :cond_0
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDismiss : mAlwaysAccepted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v3, v3, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentAccepted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v3, v3, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$400(Lcom/oppo/translate/OppoTranslateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_accept"

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v1, v1, Lcom/oppo/translate/OppoTranslateService$1;->val$savedInstanceState:Lcom/oppo/translate/OppoTranslateState;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->val$listener:Lcom/oppo/translate/IOppoTranslateAskListener;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v3, v3, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v3

    #calls: Lcom/oppo/translate/OppoTranslateService;->onAskResult(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/oppo/translate/OppoTranslateService;->access$500(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    .line 151
    return-void
.end method
