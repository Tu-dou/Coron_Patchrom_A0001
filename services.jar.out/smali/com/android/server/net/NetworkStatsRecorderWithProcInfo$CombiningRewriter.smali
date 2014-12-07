.class Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorderWithProcInfo.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombiningRewriter"
.end annotation


# instance fields
.field private final mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const-string v0, "missing NetworkStatsCollectionWithProcInfo"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 353
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->read(Ljava/io/InputStream;)V

    .line 363
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->write(Ljava/io/DataOutputStream;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 374
    return-void
.end method
