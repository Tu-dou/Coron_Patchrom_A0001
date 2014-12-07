.class public final Lcom/oppo/translate/OppoTranslateManager;
.super Ljava/lang/Object;
.source "OppoTranslateManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoTranslateManager"

.field private static sInstance:Lcom/oppo/translate/OppoTranslateManager;


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private final mService:Lcom/oppo/translate/IOppoTranslateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/translate/OppoTranslateManager;->sInstance:Lcom/oppo/translate/OppoTranslateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v1, "OppoTranslateManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, service:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateManager;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateManager;->mMainLooper:Landroid/os/Looper;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/oppo/translate/OppoTranslateManager;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/oppo/translate/OppoTranslateManager;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/oppo/translate/OppoTranslateManager;->sInstance:Lcom/oppo/translate/OppoTranslateManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/oppo/translate/OppoTranslateManager;

    invoke-direct {v0}, Lcom/oppo/translate/OppoTranslateManager;-><init>()V

    sput-object v0, Lcom/oppo/translate/OppoTranslateManager;->sInstance:Lcom/oppo/translate/OppoTranslateManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/oppo/translate/OppoTranslateManager;->sInstance:Lcom/oppo/translate/OppoTranslateManager;

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static peekInstance()Lcom/oppo/translate/OppoTranslateManager;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/oppo/translate/OppoTranslateManager;->sInstance:Lcom/oppo/translate/OppoTranslateManager;

    return-object v0
.end method


# virtual methods
.method public getEngineList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/translate/OppoTranslateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManager;->mService:Lcom/oppo/translate/IOppoTranslateManager;

    invoke-interface {v1}, Lcom/oppo/translate/IOppoTranslateManager;->getEngineList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
