.class Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;
.super Ljava/lang/Object;
.source "NetworkStatsHistoryMapForProc.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsHistoryMapForProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsHistoryMapForProc;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;->this$0:Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .parameter "first"
    .parameter "second"

    .prologue
    const-wide/16 v5, 0x0

    .line 543
    move-object v3, p1

    check-cast v3, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 544
    .local v3, firstKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;->this$0:Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    #getter for: Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->access$000(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .local v0, firstHistory:Landroid/net/NetworkStatsHistory;
    move-object v7, p2

    .line 546
    check-cast v7, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 547
    .local v7, secondKey:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$HistoryComparator;->this$0:Lcom/android/server/net/NetworkStatsHistoryMapForProc;

    #getter for: Lcom/android/server/net/NetworkStatsHistoryMapForProc;->mPidHistoryDataMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/net/NetworkStatsHistoryMapForProc;->access$000(Lcom/android/server/net/NetworkStatsHistoryMapForProc;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 549
    .local v4, secondHistory:Landroid/net/NetworkStatsHistory;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v1

    .line 550
    .local v1, firstHistoryTotalBytes:J
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v5

    .line 552
    .local v5, secondHistoryTotalBytes:J
    :cond_0
    cmp-long v8, v1, v5

    if-lez v8, :cond_2

    .line 553
    const/4 v8, -0x1

    .line 557
    :goto_1
    return v8

    .end local v1           #firstHistoryTotalBytes:J
    .end local v5           #secondHistoryTotalBytes:J
    :cond_1
    move-wide v1, v5

    .line 549
    goto :goto_0

    .line 554
    .restart local v1       #firstHistoryTotalBytes:J
    .restart local v5       #secondHistoryTotalBytes:J
    :cond_2
    cmp-long v8, v1, v5

    if-nez v8, :cond_3

    .line 555
    const/4 v8, 0x0

    goto :goto_1

    .line 557
    :cond_3
    const/4 v8, 0x1

    goto :goto_1
.end method
