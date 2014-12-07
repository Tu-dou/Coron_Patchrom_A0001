.class Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;
.super Lcom/oppo/translate/IOppoTranslateService$Stub;
.source "OppoTranslateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoTranslateServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateService;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateService;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;-><init>(Lcom/oppo/translate/OppoTranslateService;)V

    return-void
.end method

.method private isAccepted(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)Z
    .locals 2
    .parameter "savedInstanceState"
    .parameter "listener"
    .parameter "prompt"

    .prologue
    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v1}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v1}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/translate/OppoTranslateService;->showPromptDialog(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .locals 2
    .parameter "savedInstanceState"
    .parameter "listener"
    .parameter "prompt"

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->isAccepted(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #setter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0, v1}, Lcom/oppo/translate/OppoTranslateService;->access$302(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 246
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #calls: Lcom/oppo/translate/OppoTranslateService;->onAskResult(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/oppo/translate/OppoTranslateService;->access$500(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    .line 248
    :cond_0
    return-void
.end method

.method public dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 3
    .parameter "content"
    .parameter "listener"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "dict"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/translate/OppoTranslateEngine;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #calls: Lcom/oppo/translate/OppoTranslateService;->onError(Lcom/oppo/translate/IOppoTranslateResultListener;)V
    invoke-static {v0, p2}, Lcom/oppo/translate/OppoTranslateService;->access$800(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    goto :goto_0
.end method

.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "content"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "getUri"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateEngine;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pronounce(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "pronounce"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateEngine;->pronounce(Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public stop(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 236
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateService;->onSaveInstanceState(Lcom/oppo/translate/OppoTranslateState;)V

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/translate/OppoTranslateState;->dump(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/translate/OppoTranslateEngine;->recycle()V

    .line 240
    return-void
.end method

.method public translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 3
    .parameter "content"
    .parameter "listener"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "translate"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/translate/OppoTranslateEngine;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    #calls: Lcom/oppo/translate/OppoTranslateService;->onError(Lcom/oppo/translate/IOppoTranslateResultListener;)V
    invoke-static {v0, p2}, Lcom/oppo/translate/OppoTranslateService;->access$800(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    goto :goto_0
.end method
