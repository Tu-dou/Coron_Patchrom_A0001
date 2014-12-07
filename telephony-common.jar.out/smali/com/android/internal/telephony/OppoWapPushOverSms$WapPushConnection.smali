.class Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;
.super Ljava/lang/Object;
.source "OppoWapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OppoWapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WapPushConnection"
.end annotation


# instance fields
.field private mOwner:Landroid/content/Context;

.field private mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

.field final synthetic this$0:Lcom/android/internal/telephony/OppoWapPushOverSms;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/OppoWapPushOverSms;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ownerContext"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->this$0:Lcom/android/internal/telephony/OppoWapPushOverSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;)Lcom/android/internal/telephony/IWapPushManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    return-object v0
.end method

.method private rebindWapPushManager()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 112
    :cond_0
    move-object v0, p0

    .line 113
    .local v0, wapPushConnection:Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection$1;-><init>(Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;Landroid/content/ServiceConnection;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection$1;->start()V

    goto :goto_0
.end method


# virtual methods
.method public bindWapPushManager()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    move-object v0, p0

    .line 95
    .local v0, wapPushConnection:Landroid/content/ServiceConnection;
    sget-boolean v1, Landroid/telephony/OppoTelephonyConstant;->OPPO_RF_MODE:Z

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 70
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    .line 73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->this$0:Lcom/android/internal/telephony/OppoWapPushOverSms;

    #getter for: Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/OppoWapPushOverSms;->access$000(Lcom/android/internal/telephony/OppoWapPushOverSms;)Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->rebindWapPushManager()V

    .line 83
    return-void
.end method
