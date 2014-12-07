.class public Lcom/android/server/net/NetworkStatsHistoryMapForProc;
.super Ljava/lang/Object;
.source "NetworkStatsHistoryMapForProc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;,
        Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;,
        Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    }
.end annotation


# static fields
.field private static final MAX_TOP_RECORD_COUNT_TO_KEEP:I = 0x50

.field private static final MIN_HISTORY_COUNT_TO_START_COMPRESS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "NetworkStatsHistoryMapForProc"


# instance fields
.field private mBucketDuration:J

.field private mHistoryComparator:Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

.field private mPidHistoryDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "bucketDuration"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    .line 72
    new-instance v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;-><init>(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mHistoryComparator:Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    .line 123
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    .line 124
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1
    .parameter "bucketDuration"
    .parameter "initialSize"
    .parameter "fields"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    .line 72
    new-instance v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;-><init>(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mHistoryComparator:Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    .line 127
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;J)V
    .locals 12
    .parameter "in"
    .parameter "bucketDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    .line 72
    new-instance v8, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    invoke-direct {v8, p0}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;-><init>(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)V

    iput-object v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mHistoryComparator:Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    .line 131
    iput-wide p2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    .line 133
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 134
    .local v6, size:I
    const-wide/16 v4, 0x0

    .line 135
    .local v4, pidValue:J
    const/4 v0, 0x0

    .line 136
    .local v0, comm:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 137
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 138
    invoke-static {p1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->readVarString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 140
    :cond_0
    const-string v0, "UNKNOWN"

    .line 142
    :cond_1
    new-instance v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 143
    .local v3, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-direct {v1, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 144
    .local v1, history:Landroid/net/NetworkStatsHistory;
    const/4 v7, 0x0

    .line 145
    .local v7, updateHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 146
    new-instance v7, Landroid/net/NetworkStatsHistory;

    .end local v7           #updateHistory:Landroid/net/NetworkStatsHistory;
    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    invoke-direct {v7, v1, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .line 149
    .restart local v7       #updateHistory:Landroid/net/NetworkStatsHistory;
    :cond_2
    if-eqz v7, :cond_3

    .line 150
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 155
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .end local v7           #updateHistory:Landroid/net/NetworkStatsHistory;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private calculateDataForNoteRecorded(Landroid/net/NetworkStatsHistory;Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;Z)V
    .locals 8
    .parameter "history"
    .parameter "data"
    .parameter "firstOne"

    .prologue
    .line 311
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    .line 315
    .local v2, historyStart:J
    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    .line 316
    .local v0, historyEnd:J
    if-eqz p3, :cond_3

    .line 317
    iput-wide v2, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->startMillis:J

    .line 318
    iput-wide v0, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->endMillis:J

    .line 327
    :cond_2
    :goto_1
    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    goto :goto_0

    .line 320
    :cond_3
    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->startMillis:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_4

    .line 321
    iput-wide v2, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->startMillis:J

    .line 323
    :cond_4
    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->endMillis:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_2

    .line 324
    iput-wide v0, p2, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->endMillis:J

    goto :goto_1
.end method

.method private findOrCreateNewHistory(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "key"

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v2, 0x0

    .line 293
    :goto_0
    return-object v2

    .line 278
    :cond_0
    new-instance v1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    iget-wide v3, p1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    iget-object v5, p1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 279
    .local v1, localKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 282
    .local v0, existing:Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 283
    .local v2, updated:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_2

    .line 284
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2           #updated:Landroid/net/NetworkStatsHistory;
    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 289
    .restart local v2       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 286
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2           #updated:Landroid/net/NetworkStatsHistory;
    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    invoke-direct {v2, v0, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .restart local v2       #updated:Landroid/net/NetworkStatsHistory;
    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 293
    goto :goto_0
.end method

.method private getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .parameter "pid"
    .parameter "processName"
    .parameter "logTag"

    .prologue
    .line 162
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 163
    .local v2, recordSize:I
    if-gtz v2, :cond_0

    .line 164
    const-string v3, "NetworkStatsHistoryMapForProc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getPidHistoryDataEntry:mPidHistoryDataMap is empty!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 168
    .local v1, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 169
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    goto :goto_0
.end method

.method public static readVarString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeVarString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    const-string v0, "NetworkStatsHistoryMapForProc"

    const-string v1, "writeUTF: str is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public combineValuesToNetworkStats(Landroid/net/NetworkStats;JJJIII)V
    .locals 13
    .parameter "stats"
    .parameter "start"
    .parameter "end"
    .parameter "now"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 332
    if-nez p1, :cond_1

    .line 333
    const-string v2, "NetworkStatsHistoryMapForProc"

    const-string v3, "combineValuesToNetworkStats:stats is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    return-void

    .line 337
    :cond_1
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 338
    .local v9, entry:Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 340
    .local v8, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 341
    .local v12, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 343
    .local v11, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, history:Landroid/net/NetworkStatsHistory;
    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 344
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 346
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 347
    move/from16 v0, p8

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 348
    move/from16 v0, p9

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 349
    move/from16 v0, p10

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 350
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 351
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 352
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 353
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 354
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->operations:J

    .line 356
    iget-wide v2, v11, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->pid:J

    .line 357
    iget-object v2, v11, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 359
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    invoke-virtual {p1, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0
.end method

.method public compressSmallHistory()Z
    .locals 15

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 459
    .local v14, size:I
    if-gtz v14, :cond_0

    .line 462
    const/4 v2, 0x0

    .line 533
    :goto_0
    return v2

    .line 464
    :cond_0
    const/16 v2, 0x64

    if-gt v14, v2, :cond_1

    .line 467
    const/4 v2, 0x0

    goto :goto_0

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 472
    .local v12, mapKeySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;>;"
    if-nez v12, :cond_2

    .line 474
    const/4 v2, 0x0

    goto :goto_0

    .line 476
    :cond_2
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v13

    .line 477
    .local v13, setSize:I
    if-gtz v13, :cond_3

    .line 479
    const/4 v2, 0x0

    goto :goto_0

    .line 483
    :cond_3
    :try_start_0
    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    .line 485
    .local v10, keyArray:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mHistoryComparator:Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;

    invoke-static {v10, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 488
    array-length v11, v10

    .line 489
    .local v11, len:I
    if-lez v11, :cond_4

    const/16 v2, 0x50

    if-gt v11, v2, :cond_5

    .line 491
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 493
    :cond_5
    const/4 v7, 0x0

    .line 494
    .local v7, currentKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    const/4 v1, 0x0

    .line 495
    .local v1, currentHistory:Landroid/net/NetworkStatsHistory;
    new-instance v6, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    const-wide/16 v2, 0x0

    const-string v4, "CompressRecord"

    invoke-direct {v6, v2, v3, v4}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 496
    .local v6, compressedKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->findOrCreateNewHistory(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 507
    .local v0, compressedHistory:Landroid/net/NetworkStatsHistory;
    const/16 v9, 0x50

    .local v9, index:I
    :goto_1
    if-ge v9, v11, :cond_9

    .line 508
    aget-object v7, v10, v9

    .end local v7           #currentKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    check-cast v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 509
    .restart local v7       #currentKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    if-eqz v7, :cond_6

    .line 510
    invoke-virtual {v7, v6}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 507
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 514
    :cond_7
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentHistory:Landroid/net/NetworkStatsHistory;
    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 515
    .restart local v1       #currentHistory:Landroid/net/NetworkStatsHistory;
    if-eqz v1, :cond_8

    .line 518
    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 521
    :cond_8
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 529
    .end local v0           #compressedHistory:Landroid/net/NetworkStatsHistory;
    .end local v1           #currentHistory:Landroid/net/NetworkStatsHistory;
    .end local v6           #compressedKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .end local v7           #currentKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .end local v9           #index:I
    .end local v10           #keyArray:[Ljava/lang/Object;
    .end local v11           #len:I
    :catch_0
    move-exception v8

    .line 530
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "NetworkStatsHistoryMapForProc"

    const-string v3, "compressSmallHistory: sort failed!"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v2, 0x0

    goto :goto_0

    .line 533
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v0       #compressedHistory:Landroid/net/NetworkStatsHistory;
    .restart local v1       #currentHistory:Landroid/net/NetworkStatsHistory;
    .restart local v6       #compressedKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .restart local v7       #currentKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .restart local v9       #index:I
    .restart local v10       #keyArray:[Ljava/lang/Object;
    .restart local v11       #len:I
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 8
    .parameter "pw"
    .parameter "fullHistory"

    .prologue
    .line 578
    const-string v5, "NetworkStatsHistoryMapForProc: mBucketDuration="

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mBucketDuration:J

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 580
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 581
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 582
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, index:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 586
    .local v3, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- history line["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", comm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 587
    add-int/lit8 v2, v2, 0x1

    .line 589
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 590
    .local v0, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    goto :goto_0

    .line 592
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    :cond_0
    return-void
.end method

.method public getBucketDuration(JLjava/lang/String;)J
    .locals 3
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 182
    const-string v1, "getBucketDuration"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 183
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v1

    .line 187
    :goto_0
    return-wide v1

    .line 186
    :cond_0
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "getBucketDuration:dataEntry is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getDataForNoteRecordedOfNewHistoryMap()Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    .locals 9

    .prologue
    .line 298
    new-instance v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;-><init>()V

    .line 299
    .local v0, data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    const/4 v1, 0x1

    .line 300
    .local v1, firstOne:Z
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 301
    .local v4, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 302
    .local v2, history:Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->calculateDataForNoteRecorded(Landroid/net/NetworkStatsHistory;Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;Z)V

    .line 303
    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x0

    goto :goto_0

    .line 307
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v4           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    :cond_1
    const-wide/16 v5, 0x0

    iget-wide v7, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    const/4 v0, 0x0

    .end local v0           #data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    :cond_2
    return-object v0
.end method

.method public getEnd(JLjava/lang/String;)J
    .locals 3
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 201
    const-string v1, "getEnd"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 202
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_0

    .line 203
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "getEnd:dataEntry is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-wide v1, 0x7fffffffffffffffL

    .line 206
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getIndexAfter(JJLjava/lang/String;)I
    .locals 3
    .parameter "time"
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 229
    const-string v1, "getIndexAfter"

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 230
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_0

    .line 231
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "getIndexAfter:dataEntry is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, -0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v1

    goto :goto_0
.end method

.method public getIndexBefore(JJLjava/lang/String;)I
    .locals 3
    .parameter "time"
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 219
    const-string v1, "getIndexBefore"

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 220
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_0

    .line 221
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "getIndexBefore:dataEntry is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, -0x1

    .line 225
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v1

    goto :goto_0
.end method

.method public getNetworkStatsHistoryMapSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;",
            "Landroid/net/NetworkStatsHistory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStart(JLjava/lang/String;)J
    .locals 3
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 192
    const-string v1, "getStart"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 193
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_0

    .line 194
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "getStart:dataEntry is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-wide v1, 0x7fffffffffffffffL

    .line 197
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getTotalBytes(JLjava/lang/String;)J
    .locals 3
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 210
    const-string v1, "getTotalBytes"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 211
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_0

    .line 212
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "getTotalBytes:dataEntry is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-wide/16 v1, 0x0

    .line 215
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;JLjava/lang/String;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 4
    .parameter "i"
    .parameter "recycle"
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 238
    const-string v2, "getValues"

    invoke-direct {p0, p3, p4, p5, v2}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 239
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 240
    const-string v2, "NetworkStatsHistoryMapForProc"

    const-string v3, "getValues:dataEntry is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 244
    :goto_0
    return-object v1

    .line 241
    :cond_0
    new-instance v1, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    goto :goto_0
.end method

.method public logoutData(Ljava/lang/String;)V
    .locals 9
    .parameter "prefix"

    .prologue
    .line 563
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 564
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 565
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, index:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 569
    .local v3, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    const-string v5, "NetworkStatsHistoryMapForProc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- history line["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", comm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    add-int/lit8 v2, v2, 0x1

    .line 572
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 573
    .local v0, history:Landroid/net/NetworkStatsHistory;
    const-string v5, "NetworkStatsHistoryMapForProc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "histroy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    :cond_0
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStatsHistory;
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "entry"

    .prologue
    .line 366
    if-nez p5, :cond_0

    .line 367
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "recordData: entry is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    .line 370
    :cond_0
    iget-wide v8, p5, Landroid/net/NetworkStats$Entry;->pid:J

    .line 371
    .local v8, pid:J
    iget-object v6, p5, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 372
    .local v6, comm:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 373
    :cond_1
    const-string v6, "UNKNOWN"

    .line 376
    :cond_2
    new-instance v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    invoke-direct {v7, v8, v9, v6}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 377
    .local v7, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->findOrCreateNewHistory(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 378
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_0
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;JLjava/lang/String;)V
    .locals 9
    .parameter "input"
    .parameter "pid"
    .parameter "comm"

    .prologue
    .line 384
    const-wide/high16 v5, -0x8000

    const-wide v7, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->recordHistory(Landroid/net/NetworkStatsHistory;JLjava/lang/String;JJ)V

    .line 385
    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JLjava/lang/String;JJ)V
    .locals 7
    .parameter "input"
    .parameter "pid"
    .parameter "comm"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 388
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    new-instance v6, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    invoke-direct {v6, p2, p3, p4}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 393
    .local v6, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->findOrCreateNewHistory(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 394
    .local v0, targetHistory:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_2

    .line 395
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "recordHistory: can not find or create history."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p1

    move-wide v2, p5

    move-wide v4, p7

    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_0
.end method

.method public recordHistoryMap(Lcom/android/server/net/NetworkStatsHistoryMapForProc;JJ)Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    .locals 20
    .parameter "ouput"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 248
    new-instance v8, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;

    invoke-direct {v8}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;-><init>()V

    .line 250
    .local v8, data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    const-wide/16 v13, 0x0

    .line 251
    .local v13, historyStart:J
    const-wide/16 v11, 0x0

    .line 252
    .local v11, historyEnd:J
    const-wide/16 v15, 0x0

    .line 253
    .local v15, historyTotalBytes:J
    const/4 v10, 0x1

    .line 254
    .local v10, firstOne:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 255
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 256
    .local v18, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 259
    .local v3, input:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v10}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->calculateDataForNoteRecorded(Landroid/net/NetworkStatsHistory;Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;Z)V

    .line 260
    if-eqz v10, :cond_0

    .line 261
    const/4 v10, 0x0

    .line 265
    :cond_0
    new-instance v19, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;-><init>(JLjava/lang/String;)V

    .line 266
    .local v19, newKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->findOrCreateNewHistory(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    .local v2, targetHistory:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 267
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_0

    .line 270
    .end local v2           #targetHistory:Landroid/net/NetworkStatsHistory;
    .end local v3           #input:Landroid/net/NetworkStatsHistory;
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    .end local v18           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .end local v19           #newKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    :cond_1
    const-wide/16 v4, 0x0

    iget-wide v6, v8, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v8, 0x0

    .end local v8           #data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    :cond_2
    return-object v8
.end method

.method public recordNetorkStatsHistoryMap(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    .locals 12
    .parameter "historyMap"

    .prologue
    const/4 v7, 0x0

    .line 402
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return-object v7

    .line 406
    :cond_0
    new-instance v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;-><init>()V

    .line 407
    .local v0, data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    const/4 v1, 0x1

    .line 408
    .local v1, firstOne:Z
    invoke-virtual {p1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getNetworkStatsHistoryMapSet()Ljava/util/Set;

    move-result-object v3

    .line 410
    .local v3, historyMapEntrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 411
    .local v6, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 412
    .local v5, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 413
    .local v2, history:Landroid/net/NetworkStatsHistory;
    iget-wide v8, v5, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    iget-object v10, v5, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    invoke-virtual {p0, v2, v8, v9, v10}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->recordEntireHistory(Landroid/net/NetworkStatsHistory;JLjava/lang/String;)V

    .line 416
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->calculateDataForNoteRecorded(Landroid/net/NetworkStatsHistory;Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;Z)V

    .line 417
    if-eqz v1, :cond_1

    .line 418
    const/4 v1, 0x0

    goto :goto_1

    .line 422
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v5           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    .end local v6           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    :cond_2
    const-wide/16 v8, 0x0

    iget-wide v10, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move-object v0, v7

    .end local v0           #data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    :cond_3
    move-object v7, v0

    goto :goto_0
.end method

.method public size(JLjava/lang/String;)I
    .locals 3
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 173
    const-string v1, "size"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->getPidHistoryDataEntry(JLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 174
    .local v0, dataEntry:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_0

    .line 175
    const-string v1, "NetworkStatsHistoryMapForProc"

    const-string v2, "size:dataEntry null, return 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    goto :goto_0
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 439
    .local v4, size:I
    if-gez v4, :cond_0

    .line 440
    const/4 v4, 0x0

    .line 442
    :cond_0
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 444
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 446
    .local v3, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 449
    .local v1, history:Landroid/net/NetworkStatsHistory;
    iget-wide v5, v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    invoke-virtual {p1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 450
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->writeVarString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 455
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;Landroid/net/NetworkStatsHistory;>;"
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    :cond_1
    return-void
.end method
