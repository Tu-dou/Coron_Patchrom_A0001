.class public abstract Lcom/oppo/translate/OppoTranslateService;
.super Landroid/app/Service;
.source "OppoTranslateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;,
        Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final KEY_ALWAYS_ACCEPT:Ljava/lang/String; = "always_accept"

.field private static final TAG:Ljava/lang/String; = "OppoTranslateService"


# instance fields
.field private mAlwaysAccepted:Z

.field private mCurrentAccepted:Z

.field private mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;

.field private mEngine:Lcom/oppo/translate/OppoTranslateEngine;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 62
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;

    .line 63
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    .line 64
    iput-boolean v2, p0, Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z

    .line 65
    iput-boolean v2, p0, Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z

    .line 66
    new-instance v0, Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;

    invoke-direct {v0, p0, v1}, Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;-><init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateService$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mReceiver:Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;

    .line 295
    return-void
.end method

.method static synthetic access$200(Lcom/oppo/translate/OppoTranslateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/translate/OppoTranslateService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/translate/OppoTranslateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/translate/OppoTranslateService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/translate/OppoTranslateService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/translate/OppoTranslateService;->onAskResult(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateService;->onError(Lcom/oppo/translate/IOppoTranslateResultListener;)V

    return-void
.end method

.method private createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    return-object v0
.end method

.method private onAskResult(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .locals 4
    .parameter "savedInstanceState"
    .parameter "listener"
    .parameter "accept"

    .prologue
    .line 205
    if-eqz p3, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-virtual {v1}, Lcom/oppo/translate/OppoTranslateEngine;->initialize()V

    .line 207
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-virtual {v1, p1}, Lcom/oppo/translate/OppoTranslateEngine;->onRestoreInstanceState(Lcom/oppo/translate/OppoTranslateState;)V

    .line 209
    :cond_0
    invoke-interface {p2, p3}, Lcom/oppo/translate/IOppoTranslateAskListener;->onAskResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onAskResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onError(Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 217
    const/4 v1, -0x1

    :try_start_0
    const-string v2, ""

    invoke-interface {p1, v1, v2}, Lcom/oppo/translate/IOppoTranslateResultListener;->onTransError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createEngine(Landroid/content/Context;)Lcom/oppo/translate/OppoTranslateEngine;
.end method

.method protected getSharedPrefName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 98
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "onBind"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;-><init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateService$1;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    const-string v0, "OppoTranslateService"

    const-string v1, "onCreate"

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    invoke-virtual {p0, p0}, Lcom/oppo/translate/OppoTranslateService;->createEngine(Landroid/content/Context;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    .line 76
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateService;->getSharedPrefName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/oppo/translate/OppoTranslateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 77
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "always_accept"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z

    .line 78
    const-string v0, "OppoTranslateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : mAlwaysAccepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mReceiver:Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;

    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateService;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/translate/OppoTranslateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mReceiver:Lcom/oppo/translate/OppoTranslateService$CloseSystemDialogReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/translate/OppoTranslateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 94
    return-void
.end method

.method protected onRestoreInstanceState(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateEngine;->onRestoreInstanceState(Lcom/oppo/translate/OppoTranslateState;)V

    .line 189
    return-void
.end method

.method protected onSaveInstanceState(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateEngine;->onSaveInstanceState(Lcom/oppo/translate/OppoTranslateState;)V

    .line 198
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 84
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "onStartCommand"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 104
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "onUnbind"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-virtual {v0}, Lcom/oppo/translate/OppoTranslateEngine;->recycle()V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected showPromptDialog(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)Z
    .locals 2
    .parameter "savedInstanceState"
    .parameter "listener"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/translate/OppoTranslateService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/translate/OppoTranslateService$1;-><init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    const/4 v0, 0x1

    return v0
.end method
