.class public Landroid/hardware/cabc/CabcManager;
.super Ljava/lang/Object;
.source "CabcManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final OFF_MODE:I = 0x0

.field public static final PIC_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CabcManager"

.field public static final UI_MODE:I = 0x1

.field public static final VIDEO_MODE:I = 0x3

.field private static mCabcManagerInstance:Landroid/hardware/cabc/CabcManager;


# instance fields
.field private mMode:I

.field private sService:Lcom/android/internal/cabc/ICabcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/cabc/CabcManager;->mCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/cabc/CabcManager;->mMode:I

    .line 51
    invoke-direct {p0}, Landroid/hardware/cabc/CabcManager;->init()V

    .line 52
    return-void
.end method

.method public static getCabcManagerInstance()Landroid/hardware/cabc/CabcManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/hardware/cabc/CabcManager;->mCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/hardware/cabc/CabcManager;

    invoke-direct {v0}, Landroid/hardware/cabc/CabcManager;-><init>()V

    sput-object v0, Landroid/hardware/cabc/CabcManager;->mCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    .line 68
    :cond_0
    sget-object v0, Landroid/hardware/cabc/CabcManager;->mCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    if-nez v1, :cond_0

    .line 58
    const-string v1, "cabc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/cabc/ICabcManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/cabc/ICabcManager;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    .line 61
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeCabc()V
    .locals 3

    .prologue
    .line 121
    const-string v1, "CabcManager"

    const-string v2, "closeCabc========"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    invoke-interface {v1}, Lcom/android/internal/cabc/ICabcManager;->closeCabc()V

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v1, "CabcManager"

    const-string v2, "closeCabc failed: sService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMode()I
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    invoke-interface {v1}, Lcom/android/internal/cabc/ICabcManager;->getMode()I

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 106
    :cond_0
    const-string v1, "CabcManager"

    const-string v2, "getMode failed: sService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v1, 0x3

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openCabc()V
    .locals 3

    .prologue
    .line 144
    const-string v1, "CabcManager"

    const-string/jumbo v2, "openCabc========"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    invoke-interface {v1}, Lcom/android/internal/cabc/ICabcManager;->openCabc()V

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v1, "CabcManager"

    const-string/jumbo v2, "openCabc failed: sService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 75
    const-string v1, "CabcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode======mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/hardware/cabc/CabcManager;->sService:Lcom/android/internal/cabc/ICabcManager;

    invoke-interface {v1, p1}, Lcom/android/internal/cabc/ICabcManager;->setMode(I)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v1, "CabcManager"

    const-string/jumbo v2, "setMode failed: sService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
