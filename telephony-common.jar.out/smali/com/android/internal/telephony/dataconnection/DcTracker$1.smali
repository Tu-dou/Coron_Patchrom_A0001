.class Lcom/android/internal/telephony/dataconnection/DcTracker$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1505
    const-wide/16 v2, -0x1

    .local v2, preTxPkts:J
    const-wide/16 v0, -0x1

    .line 1506
    .local v0, preRxPkts:J
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1508
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->acquireWakeLock(I)V

    .line 1510
    sput v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_idle_times:I

    .line 1512
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v2, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts_dormant:J

    .line 1513
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v0, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts_dormant:J

    .line 1516
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts_dormant:J

    .line 1517
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts_dormant:J

    .line 1521
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts_dormant:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preRxPkts= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts_dormant:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preTxPkts= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enablePoll="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->enableDormantPoll:Z
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->enableDormantPoll:Z
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v4

    if-eqz v4, :cond_2

    cmp-long v4, v2, v10

    if-gez v4, :cond_0

    cmp-long v4, v0, v10

    if-ltz v4, :cond_2

    .line 1528
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts_dormant:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts_dormant:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 1530
    sget v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_times:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_times:I

    .line 1533
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data connection is inactive : state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", poll_times="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_times:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHaveSentGoDormantCmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1537
    sget v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_times:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 1538
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$100()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1539
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->goDormant()V

    .line 1540
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$102(Z)Z

    .line 1542
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseWakeLock()V

    .line 1543
    sput v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_times:I

    .line 1563
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1770

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetDormantPollPeriod:I

    .line 1565
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->enableDormantPoll:Z
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_idle_times:I

    if-ge v4, v9, :cond_3

    .line 1566
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetDormantPollPeriod:I

    int-to-long v5, v5

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1568
    :cond_3
    return-void

    .line 1546
    :cond_4
    sput v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_times:I

    .line 1547
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$102(Z)Z

    .line 1549
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "data connection is active"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1557
    :cond_5
    sget v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_idle_times:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_idle_times:I

    .line 1558
    sget v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->m_poll_idle_times:I

    if-lt v4, v9, :cond_2

    .line 1559
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseWakeLock()V

    goto :goto_0
.end method
