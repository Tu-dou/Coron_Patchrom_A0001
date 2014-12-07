.class public final Lcom/android/server/oppo/OppoUsageService;
.super Landroid/os/IOppoUsageService$Stub;
.source "OppoUsageService.java"


# static fields
.field private static final DATA_TYPE_APP_USAGE:I = 0x9

.field private static final DATA_TYPE_BOOT_TIME:I = 0x1

.field private static final DATA_TYPE_COUNT:I = 0x9

.field private static final DATA_TYPE_DIAL_OUT_DURATION:I = 0x6

.field private static final DATA_TYPE_IMEI_NO:I = 0x2

.field private static final DATA_TYPE_INCOMING_DURATION:I = 0x7

.field private static final DATA_TYPE_MSG_RECEIVE:I = 0x5

.field private static final DATA_TYPE_MSG_SEND:I = 0x4

.field private static final DATA_TYPE_PCBA_NO:I = 0x3

.field private static final DATA_TYPE_PHONE_CALL_RECORD:I = 0x8

.field private static final DEBUG:Z = false

.field private static final DEBUG_D:Z = false

.field private static final DEBUG_E:Z = false

.field private static final DEBUG_I:Z = false

.field private static final DEBUG_W:Z = false

.field private static final MAX_BATCH_COUNT:I = 0xa

.field private static final MSG_GET_IMEI_NO:I = 0x1

.field private static final MSG_GET_PCBA_NO:I = 0x2

.field private static final MSG_SAVE_BOOT_TIME:I = 0x3

.field private static final NORMAL_MSG_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "OppoUsageService"

.field private static final mConnectorForPkgNameAndTime:Ljava/lang/String; = "|"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountOfReceivedMsg:I

.field private mCurrentCountOfSendedMsg:I

.field private mCurrentDialOutDuration:I

.field private mCurrentImeiNO:Ljava/lang/String;

.field private mCurrentIncomingDuration:I

.field private mCurrentPcbaNO:Ljava/lang/String;

.field private mGetImeiNORetry:I

.field private mGetPcbaNORetry:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasGotDialOutDuration:Z

.field private mHasGotHistoryCountOfReceivedMsg:Z

.field private mHasGotHistoryCountOfSendedMsg:Z

.field private mHasGotIncomingDuration:Z

.field private mRawPartionInitOk:Z

.field private mRecordStrSlitter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Landroid/os/IOppoUsageService$Stub;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/android/server/oppo/OppoUsageService;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "#"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mRawPartionInitOk:Z

    .line 62
    iput-object v2, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfSendedMsg:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfReceivedMsg:Z

    .line 67
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    .line 68
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    .line 70
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotDialOutDuration:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotIncomingDuration:Z

    .line 72
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    .line 73
    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    .line 75
    iput v3, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    .line 76
    iput v3, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    .line 83
    new-instance v0, Lcom/android/server/oppo/OppoUsageService$1;

    invoke-direct {v0, p0}, Lcom/android/server/oppo/OppoUsageService$1;-><init>(Lcom/android/server/oppo/OppoUsageService;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lcom/android/server/oppo/OppoUsageService;->mContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_initUsageRawPartition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mRawPartionInitOk:Z

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/oppo/OppoUsageService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    return p1
.end method

.method static synthetic access$010(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetImeiNORetry:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/oppo/OppoUsageService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getImeiNoFromPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/oppo/OppoUsageService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    return p1
.end method

.method static synthetic access$410(Lcom/android/server/oppo/OppoUsageService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/oppo/OppoUsageService;->mGetPcbaNORetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/oppo/OppoUsageService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getPcbaNoFromPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/oppo/OppoUsageService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/oppo/OppoUsageService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V

    return-void
.end method

.method private doSaveHistoryCount(IIZLjava/lang/String;)Z
    .locals 6
    .parameter "dataType"
    .parameter "saveValue"
    .parameter "isSingleRecord"
    .parameter "logTag"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, contentStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    move v4, v5

    .line 463
    :cond_1
    :goto_0
    return v4

    .line 462
    :cond_2
    if-eqz p3, :cond_3

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, writeRes:I
    if-gtz v2, :cond_1

    move v4, v5

    goto :goto_0

    .end local v2           #writeRes:I
    :cond_3
    move v3, v5

    .line 462
    goto :goto_1
.end method

.method private getAllHistoryRecordData(I)Ljava/util/List;
    .locals 10
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v3

    .line 170
    .local v3, recordCount:I
    if-gtz v3, :cond_1

    .line 173
    const/4 v4, 0x0

    .line 211
    :cond_0
    :goto_0
    return-object v4

    .line 175
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v4, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    div-int/lit8 v2, v3, 0xa

    .line 177
    .local v2, readBatchCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 179
    mul-int/lit8 v9, v1, 0xa

    add-int/lit8 v7, v9, 0x1

    .line 180
    .local v7, startIndex:I
    add-int/lit8 v9, v1, 0x1

    mul-int/lit8 v0, v9, 0xa

    .line 181
    .local v0, endIndex:I
    invoke-direct {p0, p1, v7, v0}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, tmpRes:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v0           #endIndex:I
    .end local v7           #startIndex:I
    .end local v8           #tmpRes:Ljava/lang/String;
    :cond_2
    mul-int/lit8 v9, v2, 0xa

    sub-int v5, v3, v9

    .line 191
    .local v5, remainCount:I
    if-lez v5, :cond_0

    .line 193
    mul-int/lit8 v9, v2, 0xa

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, p1, v9, v3}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, remainTmpRes:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v4}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_0
.end method

.method private getCurrentDateStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 161
    .local v0, timeObj:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 162
    const-string v2, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, timeStr:Ljava/lang/String;
    return-object v1
.end method

.method private getHistoryRecordByIndex(IIILjava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "dataType"
    .parameter "logTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 215
    if-lt p1, v10, :cond_0

    if-lt p2, v10, :cond_0

    if-le p1, p2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v4

    .line 223
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v3

    .line 224
    .local v3, recordCount:I
    if-gt p1, v3, :cond_0

    .line 229
    if-le p2, v3, :cond_2

    .line 232
    move p2, v3

    .line 235
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v4, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sub-int v10, p2, p1

    add-int/lit8 v0, v10, 0x1

    .line 237
    .local v0, attemptReadCount:I
    div-int/lit8 v2, v0, 0xa

    .line 238
    .local v2, readBatchCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 240
    mul-int/lit8 v10, v1, 0xa

    add-int v9, p1, v10

    .line 241
    .local v9, tmpStartIndex:I
    add-int/lit8 v10, v9, 0xa

    add-int/lit8 v7, v10, -0x1

    .line 242
    .local v7, tmpEndIndex:I
    invoke-direct {p0, p3, v9, v7}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, tmpRes:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v8, v10, v4}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v7           #tmpEndIndex:I
    .end local v8           #tmpRes:Ljava/lang/String;
    .end local v9           #tmpStartIndex:I
    :cond_3
    mul-int/lit8 v10, v2, 0xa

    sub-int v5, v0, v10

    .line 250
    .local v5, remainCount:I
    if-lez v5, :cond_0

    .line 252
    mul-int/lit8 v10, v2, 0xa

    add-int/2addr v10, p1

    invoke-direct {p0, p3, v10, p2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContent(III)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, remainTmpRes:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/oppo/OppoUsageService;->mRecordStrSlitter:Ljava/lang/String;

    invoke-direct {p0, v6, v10, v4}, Lcom/android/server/oppo/OppoUsageService;->splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_0
.end method

.method private getImeiNoFromPhone()Z
    .locals 5

    .prologue
    .line 570
    const/4 v2, 0x0

    .line 571
    .local v2, imei:Ljava/lang/String;
    const/4 v3, 0x0

    .line 573
    .local v3, result:Z
    :try_start_0
    const-string v4, "iphonesubinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 574
    .local v1, iPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_0

    .line 576
    const/4 v4, 0x0

    .line 585
    .end local v1           #iPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_0
    return v4

    .line 578
    .restart local v1       #iPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    const/4 v3, 0x1

    .end local v1           #iPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_1
    move v4, v3

    .line 585
    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getPcbaNoFromPhone()Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method private isValidDataType(I)Z
    .locals 2
    .parameter "dataType"

    .prologue
    const/4 v0, 0x1

    .line 563
    if-lt p1, v0, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 564
    :cond_0
    const/4 v0, 0x0

    .line 566
    :cond_1
    return v0
.end method

.method private native native_export_config()I
.end method

.method private native native_finalizeRawPartition()V
.end method

.method private native native_import_config_done()I
.end method

.method private native native_import_config_init()I
.end method

.method private native native_import_config_loop(Ljava/lang/String;)I
.end method

.method private native native_initUsageRawPartition()Z
.end method

.method private native native_readDataRecordCount(I)I
.end method

.method private native native_readDataStrContent(III)Ljava/lang/String;
.end method

.method private native native_readDataStrContentForSingleRecord(I)Ljava/lang/String;
.end method

.method private native native_writeStringContentData(ILjava/lang/String;I)I
.end method

.method private saveCurrentBootTime(Ljava/lang/String;)V
    .locals 3
    .parameter "bootTimeDateStr"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    .line 155
    .local v0, isSingleRecord:I
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, saveRes:I
    goto :goto_0
.end method

.method private saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V
    .locals 6
    .parameter "numberStr"
    .parameter "dataType"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v4

    .line 598
    .local v4, numberRecordCount:I
    const/4 v1, 0x1

    .line 599
    .local v1, isNewNumber:Z
    if-gtz v4, :cond_3

    .line 601
    const/4 v1, 0x1

    .line 621
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 622
    const/4 v5, 0x0

    invoke-direct {p0, p2, p1, v5}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    goto :goto_0

    .line 603
    :cond_3
    const/4 v3, 0x0

    .line 604
    .local v3, numberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    if-ne v5, p2, :cond_6

    .line 605
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryImeiNO()Ljava/util/List;

    move-result-object v3

    .line 609
    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 613
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 614
    .local v2, numberInList:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 615
    const/4 v1, 0x0

    .line 616
    goto :goto_1

    .line 606
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #numberInList:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x3

    if-ne v5, p2, :cond_4

    .line 607
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryPcbaNO()Ljava/util/List;

    move-result-object v3

    goto :goto_2
.end method

.method private splitStr(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "contentStr"
    .parameter "strSlitter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 637
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v3

    .line 641
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 646
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, tmpResArray:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 648
    array-length v1, v2

    .line 649
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, arrayIndex:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 650
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    .end local v0           #arrayIndex:I
    .end local v1           #size:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private strValueToIntValue(Ljava/lang/String;I)I
    .locals 3
    .parameter "strValue"
    .parameter "defaultValue"

    .prologue
    .line 484
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 498
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 489
    .restart local p2
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 491
    .local v1, intValue:I
    if-gez v1, :cond_2

    .line 493
    const/4 v1, 0x0

    :cond_2
    move p2, v1

    .line 495
    goto :goto_0

    .line 496
    .end local v1           #intValue:I
    :catch_0
    move-exception v0

    .line 498
    .local v0, exce:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private writeHistoryRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 7
    .parameter "contentStr"
    .parameter "dateTimeStr"
    .parameter "dataType"
    .parameter "isSingleRecord"
    .parameter "logTag"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    if-eqz p4, :cond_1

    if-eq p4, v3, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v4

    .line 350
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/oppo/OppoUsageService;->isValidDataType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 358
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object p2

    .line 362
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 369
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, lastContentStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 376
    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/oppo/OppoUsageService;->native_writeStringContentData(ILjava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, saveRes:I
    if-lez v1, :cond_4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public accumulateDialOutDuration(I)Z
    .locals 4
    .parameter "durationInMinute"

    .prologue
    const/4 v3, 0x1

    .line 503
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotDialOutDuration:Z

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getDialOutDuration()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    .line 505
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotDialOutDuration:Z

    .line 507
    :cond_0
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    .line 508
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentDialOutDuration:I

    const-string v2, "DialOutDuration"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public accumulateHistoryCountOfReceivedMsg(I)Z
    .locals 4
    .parameter "newCountIncrease"

    .prologue
    const/4 v3, 0x1

    .line 440
    if-gtz p1, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    .line 445
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfReceivedMsg:Z

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryCountOfReceivedMsg()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    .line 447
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfReceivedMsg:Z

    .line 449
    :cond_1
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    .line 450
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfReceivedMsg:I

    const-string v2, "ReceivedMsg"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public accumulateHistoryCountOfSendedMsg(I)Z
    .locals 4
    .parameter "newCountIncrease"

    .prologue
    const/4 v3, 0x1

    .line 426
    if-gtz p1, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    .line 431
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfSendedMsg:Z

    if-nez v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getHistoryCountOfSendedMsg()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    .line 433
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotHistoryCountOfSendedMsg:Z

    .line 435
    :cond_1
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    .line 436
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentCountOfSendedMsg:I

    const-string v2, "SendedMsg"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public accumulateInComingCallDuration(I)Z
    .locals 4
    .parameter "durationInMinute"

    .prologue
    const/4 v3, 0x1

    .line 512
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotIncomingDuration:Z

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoUsageService;->getInComingCallDuration()I

    move-result v0

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    .line 514
    iput-boolean v3, p0, Lcom/android/server/oppo/OppoUsageService;->mHasGotIncomingDuration:Z

    .line 516
    :cond_0
    iget v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    .line 517
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentIncomingDuration:I

    const-string v2, "IncomingDuration"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/oppo/OppoUsageService;->doSaveHistoryCount(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public export_mos_config()I
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_export_config()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_finalizeRawPartition()V

    .line 658
    invoke-super {p0}, Landroid/os/IOppoUsageService$Stub;->finalize()V

    .line 659
    return-void
.end method

.method public getAppUsageHistoryRecordCount()I
    .locals 2

    .prologue
    .line 339
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v0

    .line 341
    .local v0, recordCount:I
    return v0
.end method

.method public getAppUsageHistoryRecords(II)Ljava/util/List;
    .locals 2
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
    .line 390
    const/16 v0, 0x9

    const-string v1, "AppUsage"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getHistoryRecordByIndex(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialOutDuration()I
    .locals 3

    .prologue
    .line 470
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, historyDurationStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 473
    .local v0, duration:I
    return v0
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
    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->getAllHistoryRecordData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryCountOfReceivedMsg()I
    .locals 3

    .prologue
    .line 418
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, historyCountStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 422
    .local v0, historyCount:I
    return v0
.end method

.method public getHistoryCountOfSendedMsg()I
    .locals 3

    .prologue
    .line 410
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, historyCountStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, historyCount:I
    return v0
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
    .line 325
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->getAllHistoryRecordData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 332
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->getAllHistoryRecordData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryRecordsCountOfPhoneCalls()I
    .locals 2

    .prologue
    .line 525
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/oppo/OppoUsageService;->native_readDataRecordCount(I)I

    move-result v0

    .line 527
    .local v0, countOfRecord:I
    return v0
.end method

.method public getInComingCallDuration()I
    .locals 3

    .prologue
    .line 477
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/oppo/OppoUsageService;->native_readDataStrContentForSingleRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, historyDurationStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/oppo/OppoUsageService;->strValueToIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 480
    .local v0, duration:I
    return v0
.end method

.method public getPhoneCallHistoryRecords(II)Ljava/util/List;
    .locals 2
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
    .line 540
    const/16 v0, 0x8

    const-string v1, "PhoneCall"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/oppo/OppoUsageService;->getHistoryRecordByIndex(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public import_config_done()I
    .locals 2

    .prologue
    .line 671
    const-string v0, "OppoUsageService"

    const-string v1, "import_config_done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_import_config_done()I

    move-result v0

    return v0
.end method

.method public import_config_init()I
    .locals 2

    .prologue
    .line 663
    const-string v0, "OppoUsageService"

    const-string v1, "import_config_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->native_import_config_init()I

    move-result v0

    return v0
.end method

.method public import_config_loop(Ljava/lang/String;)I
    .locals 1
    .parameter "content"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->native_import_config_loop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public shutDown()V
    .locals 3

    .prologue
    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, shutDownTimeStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/oppo/OppoUsageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    return-void
.end method

.method public testSaveSomeData(ILjava/lang/String;)V
    .locals 5
    .parameter "dataType"
    .parameter "dataContent"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoUsageService;->isValidDataType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 272
    .local v0, dataStr:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 274
    :pswitch_0
    move-object v0, p2

    .line 275
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getCurrentDateStr()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoUsageService;->saveCurrentBootTime(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_1
    move-object v0, p2

    .line 283
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 284
    :cond_3
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getImeiNoFromPhone()Z

    move-result v1

    .line 285
    .local v1, getRes:Z
    if-eqz v1, :cond_4

    .line 286
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentImeiNO:Ljava/lang/String;

    .line 287
    invoke-direct {p0, v0, v3}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto :goto_0

    .line 291
    .end local v1           #getRes:Z
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto :goto_0

    .line 295
    :pswitch_2
    move-object v0, p2

    .line 296
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 297
    :cond_5
    invoke-direct {p0}, Lcom/android/server/oppo/OppoUsageService;->getPcbaNoFromPhone()Z

    move-result v1

    .line 298
    .restart local v1       #getRes:Z
    if-eqz v1, :cond_6

    .line 299
    iget-object v0, p0, Lcom/android/server/oppo/OppoUsageService;->mCurrentPcbaNO:Ljava/lang/String;

    .line 300
    invoke-direct {p0, v0, v4}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto :goto_0

    .line 304
    .end local v1           #getRes:Z
    :cond_6
    invoke-direct {p0, v0, v4}, Lcom/android/server/oppo/OppoUsageService;->saveImeiOrPcbaNoIfNew(Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "appName"
    .parameter "dateTime"

    .prologue
    .line 402
    const/4 v4, 0x0

    .line 403
    .local v4, isSingleRecord:I
    const/16 v3, 0x9

    const-string v5, "AppUsage"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/oppo/OppoUsageService;->writeHistoryRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNoStr"
    .parameter "dateTime"

    .prologue
    .line 552
    const/4 v4, 0x0

    .line 553
    .local v4, isSingleRecord:I
    const/16 v3, 0x8

    const-string v5, "PhoneCall"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/oppo/OppoUsageService;->writeHistoryRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
