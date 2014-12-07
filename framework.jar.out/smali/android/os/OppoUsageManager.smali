.class public final Landroid/os/OppoUsageManager;
.super Ljava/lang/Object;
.source "OppoUsageManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_E:Z = false

.field private static final DEBUG_W:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "usage"

.field public static final TAG:Ljava/lang/String; = "OppoUsageManager"

.field private static mInstance:Landroid/os/OppoUsageManager;


# instance fields
.field private mOppoUsageService:Landroid/os/IOppoUsageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    .line 33
    const-string/jumbo v1, "usage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    .local v0, serviceBinder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IOppoUsageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoUsageService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    .line 35
    return-void
.end method

.method public static getOppoUsageManager()Landroid/os/OppoUsageManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/OppoUsageManager;

    invoke-direct {v0}, Landroid/os/OppoUsageManager;-><init>()V

    sput-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    .line 41
    :cond_0
    sget-object v0, Landroid/os/OppoUsageManager;->mInstance:Landroid/os/OppoUsageManager;

    return-object v0
.end method


# virtual methods
.method public accumulateDialOutDuration(I)Z
    .locals 1
    .parameter "durationInMinute"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->accumulateDialOutDuration(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public accumulateHistoryCountOfReceivedMsg(I)Z
    .locals 2
    .parameter "newCountIncrease"

    .prologue
    const/4 v0, 0x0

    .line 228
    if-gtz p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->accumulateHistoryCountOfReceivedMsg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public accumulateHistoryCountOfSendedMsg(I)Z
    .locals 2
    .parameter "newCountIncrease"

    .prologue
    const/4 v0, 0x0

    .line 207
    if-gtz p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v1, p1}, Landroid/os/IOppoUsageService;->accumulateHistoryCountOfSendedMsg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public accumulateInComingCallDuration(I)Z
    .locals 1
    .parameter "durationInMinute"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->accumulateInComingCallDuration(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public export_mos_config()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->export_mos_config()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 423
    :catch_0
    move-exception v0

    .line 430
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAppUsageHistoryRecordCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getAppUsageHistoryRecordCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppUsageHistoryRecords(II)Ljava/util/List;
    .locals 1
    .parameter "startIndex"
    .parameter "endIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->getAppUsageHistoryRecords(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialOutDuration()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getDialOutDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 253
    :catch_0
    move-exception v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryBootTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryBootTime()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryCountOfReceivedMsg()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryCountOfReceivedMsg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryCountOfSendedMsg()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryCountOfSendedMsg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryImeiNO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryImeiNO()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryPcbaNO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryPcbaNO()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryRecordsCountOfPhoneCalls()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getHistoryRecordsCountOfPhoneCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 328
    :goto_0
    return v0

    .line 321
    :catch_0
    move-exception v0

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInComingCallDuration()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->getInComingCallDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneCallHistoryRecords(II)Ljava/util/List;
    .locals 1
    .parameter "startIndex"
    .parameter "endIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->getPhoneCallHistoryRecords(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 344
    :catch_0
    move-exception v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public import_config_done()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->import_config_done()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 416
    :goto_0
    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 416
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public import_config_init()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0}, Landroid/os/IOppoUsageService;->import_config_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 388
    :goto_0
    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 388
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public import_config_loop(Ljava/lang/String;)I
    .locals 1
    .parameter "content"

    .prologue
    .line 392
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1}, Landroid/os/IOppoUsageService;->import_config_loop(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 402
    :goto_0
    return v0

    .line 395
    :catch_0
    move-exception v0

    .line 402
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public testSaveSomeData(ILjava/lang/String;)V
    .locals 1
    .parameter "dataType"
    .parameter "dataContent"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->testSaveSomeData(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "appName"
    .parameter "dateTime"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNoStr"
    .parameter "dateTime"

    .prologue
    .line 363
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/os/OppoUsageManager;->mOppoUsageService:Landroid/os/IOppoUsageService;

    invoke-interface {v0, p1, p2}, Landroid/os/IOppoUsageService;->writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 373
    :goto_0
    return v0

    .line 366
    :catch_0
    move-exception v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
