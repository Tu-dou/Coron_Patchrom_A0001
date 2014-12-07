.class public Lcom/oppo/translate/OppoTranslateManagerService;
.super Lcom/oppo/translate/IOppoTranslateManager$Stub;
.source "OppoTranslateManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/OppoTranslateManagerService$1;,
        Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final SERVICE:Ljava/lang/String; = "OppoTranslateManagerService"

.field private static final TAG:Ljava/lang/String; = "OppoTranslateManagerService"

.field private static final TRANSLATE_ACTION:Ljava/lang/String; = "com.oppo.intent.action.TRANSLATE"

.field private static sInstance:Lcom/oppo/translate/OppoTranslateManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/translate/OppoTranslateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

.field private final mMyPackageMonitor:Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

.field private mService:Lcom/oppo/translate/IOppoTranslateService;

.field private final mSettings:Lcom/oppo/translate/OppoTranslateSettings;

.field private mState:Lcom/oppo/translate/OppoTranslateState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;-><init>()V

    .line 68
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    .line 69
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mState:Lcom/oppo/translate/OppoTranslateState;

    .line 70
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    .line 71
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    .line 74
    new-instance v2, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

    invoke-direct {v2, p0, v6}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;-><init>(Lcom/oppo/translate/OppoTranslateManagerService;Lcom/oppo/translate/OppoTranslateManagerService$1;)V

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mMyPackageMonitor:Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

    .line 86
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, userId:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 94
    new-instance v2, Lcom/oppo/translate/OppoTranslateSettings;

    invoke-direct {v2, v1}, Lcom/oppo/translate/OppoTranslateSettings;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    .line 95
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/oppo/translate/OppoTranslateManagerService;->buildEngineListLocked(Ljava/util/List;)V

    .line 96
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z

    .line 97
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mMyPackageMonitor:Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 98
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OppoTranslateManagerService"

    const-string v3, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v2, v3, v0}, Lcom/oppo/util/OppoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/oppo/translate/OppoTranslateManagerService;->setEngineEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateManagerService;->buildEngineListLocked(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/translate/OppoTranslateManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method private bindCurrentTranslateService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    const-string v0, "OppoTranslateManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v2}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method private buildEngineListLocked(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/translate/OppoTranslateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/translate/OppoTranslateInfo;>;"
    const/4 v6, 0x1

    const-string v7, "OppoTranslateManagerService"

    const-string v8, "--- re-buildInputMethodList"

    invoke-static {v6, v7, v8}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 308
    iget-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 309
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.oppo.intent.action.TRANSLATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v7, 0x8080

    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v8}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 313
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 314
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 315
    .local v4, si:Landroid/content/pm/ServiceInfo;
    new-instance v5, Lcom/oppo/translate/OppoTranslateInfo;

    iget-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/oppo/translate/OppoTranslateInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 316
    .local v5, ti:Lcom/oppo/translate/OppoTranslateInfo;
    iget-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    .end local v4           #si:Landroid/content/pm/ServiceInfo;
    .end local v5           #ti:Lcom/oppo/translate/OppoTranslateInfo;
    :cond_0
    return-void
.end method

.method private calledFromValidUser()Z
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v2, 0x1

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 257
    .local v0, uid:I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 258
    .local v1, userId:I
    const-string v3, "OppoTranslateManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- calledFromForegroundUserOrSystemProcess ? calling uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " system uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calling userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", foreground user id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v5}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", calling pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/oppo/translate/OppoTranslateUtils;->getApiCallStack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eq v0, v6, :cond_0

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v3}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 275
    const-string v3, "OppoTranslateManagerService"

    const-string v4, "--- Access granted because the calling process has the INTERACT_ACROSS_USERS_FULL permission"

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_2
    const-string v2, "OppoTranslateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/oppo/translate/OppoTranslateUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/util/OppoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private chooseNewDefaultEngineLocked()Z
    .locals 4

    .prologue
    .line 330
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/translate/OppoTranslateInfo;

    .line 332
    .local v1, ti:Lcom/oppo/translate/OppoTranslateInfo;
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v1}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/translate/OppoTranslateSettings;->setSelectedEngine(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v1           #ti:Lcom/oppo/translate/OppoTranslateInfo;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, defComp:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/translate/OppoTranslateInfo;

    .line 287
    .local v4, ti:Lcom/oppo/translate/OppoTranslateInfo;
    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 288
    .local v0, compName:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v5}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    move-object v1, v0

    .line 293
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v4           #ti:Lcom/oppo/translate/OppoTranslateInfo;
    :cond_1
    const-string v5, "OppoTranslateManagerService"

    const-string v6, "============================================="

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.oppo.intent.action.TRANSLATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 296
    const-string v5, "OppoTranslateManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defComp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 300
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 299
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_2
    const-string v5, "OppoTranslateManagerService"

    const-string v6, "defComp=null"

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oppo/translate/OppoTranslateManagerService;
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    sget-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/oppo/translate/OppoTranslateManagerService;

    invoke-direct {v0, p0}, Lcom/oppo/translate/OppoTranslateManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    .line 107
    :cond_0
    sget-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    return-object v0
.end method

.method private notifyServiceConnection(Z)V
    .locals 4
    .parameter "result"

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateServiceListener;->onServiceConnected(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onServiceConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onServiceConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEngineEnabledLocked(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .locals 5
    .parameter "savedInstanceState"
    .parameter "listener"
    .parameter "prompt"

    .prologue
    const/4 v4, 0x0

    .line 167
    const/4 v1, 0x1

    const-string v2, "OppoTranslateManagerService"

    const-string v3, "ask"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1, p2, p3}, Lcom/oppo/translate/IOppoTranslateService;->ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 5
    .parameter "content"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 195
    const/4 v1, 0x1

    const-string v2, "OppoTranslateManagerService"

    const-string v3, "dict"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1, p2}, Lcom/oppo/translate/IOppoTranslateService;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : dict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : dict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public getEngineList()Ljava/util/List;
    .locals 3
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
    .line 157
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    monitor-enter v1

    .line 161
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 223
    const/4 v2, 0x1

    const-string v3, "OppoTranslateManagerService"

    const-string v4, "getUri"

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v2, p1}, Lcom/oppo/translate/IOppoTranslateService;->getUri(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "OppoTranslateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : getUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v5}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OppoTranslateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : getUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, v5}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    .line 115
    const-string v0, "OppoTranslateManagerService"

    const-string v1, "onServiceConnected"

    invoke-static {v2, v0, v1}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lcom/oppo/translate/IOppoTranslateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    .line 117
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, v2}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 124
    const/4 v0, 0x1

    const-string v1, "OppoTranslateManagerService"

    const-string v2, "onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    .line 126
    return-void
.end method

.method public pronounce(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    const/4 v4, 0x0

    .line 209
    const/4 v1, 0x1

    const-string v2, "OppoTranslateManagerService"

    const-string v3, "pronounce"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateService;->pronounce(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : pronounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 215
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : pronounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public start(Lcom/oppo/translate/IOppoTranslateServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 130
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    .line 131
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->createIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->bindCurrentTranslateService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 132
    .local v0, result:Z
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start : bindService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 133
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public stop(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 5
    .parameter "outState"

    .prologue
    const/4 v4, 0x0

    .line 140
    const/4 v1, 0x1

    const-string v2, "OppoTranslateManagerService"

    const-string v3, "stop"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateService;->stop(Lcom/oppo/translate/OppoTranslateState;)V

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/translate/OppoTranslateState;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 152
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 5
    .parameter "content"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 181
    const/4 v1, 0x1

    const-string v2, "OppoTranslateManagerService"

    const-string v3, "translate"

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1, p2}, Lcom/oppo/translate/IOppoTranslateService;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : translate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : translate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method
