.class public Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
.super Ljava/lang/Object;
.source "NetworkStatsCollectionWithProcInfo.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    }
.end annotation


# static fields
.field private static final COMPRESS_SMALL_BYTES_RECORD:Z = false

.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final TAG:Ljava/lang/String; = "NetworkStatsCollectionWithProcInfo"

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;",
            "Lcom/android/server/net/NetworkStatsHistoryMapForProc;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "bucketDuration"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    .line 73
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    .line 74
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 75
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistoryMapForPid(Lcom/android/server/net/NetworkIdentitySet;III)Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .locals 5
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 242
    new-instance v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 243
    .local v2, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .line 245
    .local v0, existing:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    const/4 v1, 0x0

    .line 246
    .local v1, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    if-nez v0, :cond_0

    .line 247
    new-instance v1, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .end local v1           #historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    invoke-direct {v1, v3, v4}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;-><init>(J)V

    .line 248
    .restart local v1       #historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 251
    .end local v0           #existing:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    :cond_0
    return-object v0
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 2
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "totalBytes"

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    .line 347
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    .line 348
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    .line 350
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;JLjava/lang/String;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .parameter "key"
    .parameter "pid"
    .parameter "comm"
    .parameter "history"

    .prologue
    .line 199
    invoke-virtual {p5}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    invoke-virtual {p5}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v1

    invoke-virtual {p5}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v3

    invoke-virtual {p5}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->noteRecordedHistory(JJJ)V

    .line 207
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .line 208
    .local v7, targetMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    if-nez v7, :cond_2

    .line 209
    new-instance v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .end local v7           #targetMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    invoke-virtual {p5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;-><init>(J)V

    .line 210
    .restart local v7       #targetMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    invoke-virtual {v7, p5, p2, p3, p4}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->recordEntireHistory(Landroid/net/NetworkStatsHistory;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private recordNetworkStatsHistoryMapForPid(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;Lcom/android/server/net/NetworkStatsHistoryMapForProc;)V
    .locals 9
    .parameter "key"
    .parameter "historyMap"

    .prologue
    .line 229
    iget-object v0, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget v1, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    iget v3, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->findOrCreateHistoryMapForPid(Lcom/android/server/net/NetworkIdentitySet;III)Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    move-result-object v8

    .line 231
    .local v8, target:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    const/4 v7, 0x0

    .line 232
    .local v7, data:Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
    invoke-virtual {v8, p2}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->recordNetorkStatsHistoryMap(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;

    move-result-object v7

    .line 235
    if-eqz v7, :cond_0

    iget-wide v0, v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 236
    iget-wide v1, v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->startMillis:J

    iget-wide v3, v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->endMillis:J

    iget-wide v5, v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->noteRecordedHistory(JJJ)V

    .line 238
    :cond_0
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .parameter "template"
    .parameter "identSet"

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 363
    .local v1, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/4 v2, 0x1

    .line 367
    .end local v1           #ident:Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    .line 115
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 391
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 392
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 395
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 396
    .local v2, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    const-string v4, "ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 397
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 398
    const-string v4, " set="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    const-string v4, " tag="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .line 402
    .local v0, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 403
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 404
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 406
    .end local v0           #historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .end local v2           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    :cond_0
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 94
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHistoryMap(Landroid/net/NetworkTemplate;IIII)Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .locals 10
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"

    .prologue
    .line 127
    const-wide/high16 v6, -0x8000

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getHistoryMap(Landroid/net/NetworkTemplate;IIIIJJ)Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMap(Landroid/net/NetworkTemplate;IIIIJJ)Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .locals 10
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 132
    new-instance v1, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->estimateBuckets()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, p5}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;-><init>(JII)V

    .line 135
    .local v1, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 136
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;Lcom/android/server/net/NetworkStatsHistoryMapForProc;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 137
    .local v8, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    iget v2, v8, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 v9, 0x1

    .line 138
    .local v9, setMatches:Z
    :goto_1
    iget v2, v8, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    if-ne v2, p2, :cond_0

    if-eqz v9, :cond_0

    iget v2, v8, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    if-ne v2, p4, :cond_0

    iget-object v2, v8, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .local v0, srcEntry:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->recordHistoryMap(Lcom/android/server/net/NetworkStatsHistoryMapForProc;JJ)Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;

    goto :goto_0

    .line 137
    .end local v0           #srcEntry:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .end local v9           #setMatches:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 144
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;Lcom/android/server/net/NetworkStatsHistoryMapForProc;>;"
    .end local v8           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    :cond_3
    return-object v1
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 14
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 154
    .local v6, now:J
    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 155
    .local v1, stats:Landroid/net/NetworkStats;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 157
    cmp-long v2, p2, p4

    if-nez v2, :cond_1

    .line 171
    :cond_0
    return-object v1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 162
    .local v13, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;Lcom/android/server/net/NetworkStatsHistoryMapForProc;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 163
    .local v12, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    iget-object v2, v12, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .line 166
    .local v0, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    iget v8, v12, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    iget v9, v12, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    iget v10, v12, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->combineValuesToNetworkStats(Landroid/net/NetworkStats;JJJIII)V

    goto :goto_0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutData(Ljava/lang/String;)V
    .locals 8
    .parameter "prefix"

    .prologue
    .line 371
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 372
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 375
    const-string v5, "NetworkStatsCollectionWithProcInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------------------NetworkStatsCollectionWithProcInfo["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] begin------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v2, 0x0

    .line 378
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

    check-cast v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 379
    .local v3, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    const-string v5, "NetworkStatsCollectionWithProcInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 381
    const-string v5, "NetworkStatsCollectionWithProcInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ident="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", set="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    invoke-static {v7}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    invoke-static {v7}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .line 385
    .local v0, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->logoutData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v0           #historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    :cond_0
    const-string v5, "NetworkStatsCollectionWithProcInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------------------NetworkStatsCollectionWithProcInfo["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] end  ------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 16
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 262
    .local v7, magic:I
    const v13, 0x414e4554

    if-eq v7, v13, :cond_0

    .line 263
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 266
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 267
    .local v12, version:I
    packed-switch v12, :pswitch_data_0

    .line 288
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 269
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 270
    .local v4, identSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 271
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 273
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 274
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 276
    .local v11, uid:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 277
    .local v8, set:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 279
    .local v10, tag:I
    new-instance v6, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 281
    .local v6, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    new-instance v1, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v13, v14}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;-><init>(Ljava/io/DataInputStream;J)V

    .line 282
    .local v1, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    .end local v1           #historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .end local v6           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    .end local v8           #set:I
    .end local v10           #tag:I
    .end local v11           #uid:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v5           #j:I
    .end local v9           #size:I
    :cond_2
    return-void

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->read(Ljava/io/DataInputStream;)V

    .line 257
    return-void
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V
    .locals 4
    .parameter "another"

    .prologue
    .line 220
    if-nez p1, :cond_1

    .line 226
    :cond_0
    return-void

    .line 223
    :cond_1
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;Lcom/android/server/net/NetworkStatsHistoryMapForProc;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordNetworkStatsHistoryMapForPid(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;Lcom/android/server/net/NetworkStatsHistoryMapForProc;)V

    goto :goto_0
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 15
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "start"
    .parameter "end"
    .parameter "entry"

    .prologue
    .line 179
    move-object/from16 v0, p9

    iget-wide v11, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 180
    .local v11, pid:J
    move-object/from16 v0, p9

    iget-object v9, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 181
    .local v9, comm:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 182
    :cond_0
    const-string v2, "NetworkStatsCollectionWithProcInfo"

    const-string v3, "recordData:comm illegal!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->findOrCreateHistoryMapForPid(Lcom/android/server/net/NetworkIdentitySet;III)Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    move-result-object v1

    .local v1, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    .line 186
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->recordData(JJLandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStatsHistory;

    move-result-object v10

    .line 187
    .local v10, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v3

    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v5

    move-object/from16 v0, p9

    iget-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v13, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v7, v13

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->noteRecordedHistory(JJJ)V

    goto :goto_0
.end method

.method public removeUids([I)V
    .locals 4
    .parameter "uids"

    .prologue
    .line 333
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 334
    .local v2, knownKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 337
    .local v1, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    iget v3, v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    goto :goto_0

    .line 343
    .end local v1           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    .line 80
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    .line 83
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 296
    .local v6, keysByIdent:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;>;"
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 297
    .local v4, key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 298
    .local v5, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    if-nez v5, :cond_0

    .line 299
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 300
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    .end local v4           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    .end local v5           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    :cond_1
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 306
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 309
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 310
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 311
    .restart local v5       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 313
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 316
    .restart local v4       #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 318
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    .line 322
    .local v0, historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 326
    .end local v0           #historyMap:Lcom/android/server/net/NetworkStatsHistoryMapForProc;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v4           #key:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    .end local v5           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 327
    return-void
.end method
