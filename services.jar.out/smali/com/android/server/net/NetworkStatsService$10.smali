.class Lcom/android/server/net/NetworkStatsService$10;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "msg"

    .prologue
    .line 1601
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 1669
    const/4 v12, 0x0

    :goto_0
    return v12

    .line 1603
    :pswitch_0
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 1609
    .local v9, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1610
    .local v3, currentTime:J
    const/4 v10, 0x0

    .line 1611
    .local v10, needToUpdatePidStats:Z
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mLastPerformPollTime:J
    invoke-static {v14}, Lcom/android/server/net/NetworkStatsService;->access$1900(Lcom/android/server/net/NetworkStatsService;)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 1612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #setter for: Lcom/android/server/net/NetworkStatsService;->mLastPerformPollTime:J
    invoke-static {v12, v3, v4}, Lcom/android/server/net/NetworkStatsService;->access$1902(Lcom/android/server/net/NetworkStatsService;J)J

    .line 1613
    const/4 v10, 0x1

    .line 1622
    :cond_0
    :goto_1
    if-nez v10, :cond_2

    .line 1623
    or-int/lit16 v11, v9, 0x1000

    .line 1624
    .local v11, newFlags:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    invoke-static {v12, v11}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1629
    .end local v11           #newFlags:I
    :goto_2
    const/4 v12, 0x1

    goto :goto_0

    .line 1615
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mLastPerformPollTime:J
    invoke-static {v12}, Lcom/android/server/net/NetworkStatsService;->access$1900(Lcom/android/server/net/NetworkStatsService;)J

    move-result-wide v12

    sub-long v7, v3, v12

    .line 1616
    .local v7, elapseTime:J
    const-wide/32 v12, 0x1b7740

    cmp-long v12, v7, v12

    if-ltz v12, :cond_0

    .line 1617
    const/4 v10, 0x1

    .line 1618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #setter for: Lcom/android/server/net/NetworkStatsService;->mLastPerformPollTime:J
    invoke-static {v12, v3, v4}, Lcom/android/server/net/NetworkStatsService;->access$1902(Lcom/android/server/net/NetworkStatsService;J)J

    goto :goto_1

    .line 1626
    .end local v7           #elapseTime:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    invoke-static {v12, v9}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;I)V

    goto :goto_2

    .line 1637
    .end local v3           #currentTime:J
    .end local v9           #flags:I
    .end local v10           #needToUpdatePidStats:Z
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1638
    .local v1, currentIfaceUpdateTime:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/net/NetworkStatsService;->mIgnoreResponseIfaceUpdateMsgForPidState:Z
    invoke-static {v12, v13}, Lcom/android/server/net/NetworkStatsService;->access$2002(Lcom/android/server/net/NetworkStatsService;Z)Z

    .line 1639
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mLastUpdateIfaceTime:J
    invoke-static {v14}, Lcom/android/server/net/NetworkStatsService;->access$2100(Lcom/android/server/net/NetworkStatsService;)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 1640
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #setter for: Lcom/android/server/net/NetworkStatsService;->mLastUpdateIfaceTime:J
    invoke-static {v12, v1, v2}, Lcom/android/server/net/NetworkStatsService;->access$2102(Lcom/android/server/net/NetworkStatsService;J)J

    .line 1641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/net/NetworkStatsService;->mIgnoreResponseIfaceUpdateMsgForPidState:Z
    invoke-static {v12, v13}, Lcom/android/server/net/NetworkStatsService;->access$2002(Lcom/android/server/net/NetworkStatsService;Z)Z

    .line 1650
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    invoke-static {v12}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)V

    .line 1652
    const/4 v12, 0x1

    goto :goto_0

    .line 1643
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mLastUpdateIfaceTime:J
    invoke-static {v12}, Lcom/android/server/net/NetworkStatsService;->access$2100(Lcom/android/server/net/NetworkStatsService;)J

    move-result-wide v12

    sub-long v5, v1, v12

    .line 1644
    .local v5, elapseIfaceTime:J
    const-wide/32 v12, 0x2bf20

    cmp-long v12, v5, v12

    if-ltz v12, :cond_3

    .line 1645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #setter for: Lcom/android/server/net/NetworkStatsService;->mLastUpdateIfaceTime:J
    invoke-static {v12, v1, v2}, Lcom/android/server/net/NetworkStatsService;->access$2102(Lcom/android/server/net/NetworkStatsService;J)J

    .line 1646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/net/NetworkStatsService;->mIgnoreResponseIfaceUpdateMsgForPidState:Z
    invoke-static {v12, v13}, Lcom/android/server/net/NetworkStatsService;->access$2002(Lcom/android/server/net/NetworkStatsService;Z)Z

    goto :goto_3

    .line 1655
    .end local v1           #currentIfaceUpdateTime:J
    .end local v5           #elapseIfaceTime:J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V
    invoke-static {v12}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)V

    .line 1656
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1662
    :pswitch_3
    sget-boolean v12, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v12, :cond_5

    const-string v12, "NetworkStats"

    const-string v13, "MSG_RESET_KERNEL_PID_STATS_RECORDER begin:"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_5
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelPidStats()V

    .line 1664
    sget-boolean v12, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v12, :cond_6

    const-string v12, "NetworkStats"

    const-string v13, "MSG_RESET_KERNEL_PID_STATS_RECORDER end."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
