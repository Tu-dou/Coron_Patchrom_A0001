.class Landroid/net/NetworkStats$DataComparator;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataComparator"
.end annotation


# instance fields
.field private mProcessRootUid:Z

.field private mTotalSize:I

.field final synthetic this$0:Landroid/net/NetworkStats;


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;ZI)V
    .locals 1
    .parameter
    .parameter "processRootUid"
    .parameter "totalSize"

    .prologue
    const/4 v0, 0x0

    .line 1153
    iput-object p1, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iput-boolean v0, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    .line 1151
    iput v0, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    .line 1154
    iput-boolean p2, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    .line 1155
    iput p3, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    .line 1156
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .parameter "first"
    .parameter "second"

    .prologue
    .line 1163
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1164
    .local v0, firstIndex:I
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1165
    .local v4, secondIndex:I
    iget v8, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    if-ge v0, v8, :cond_0

    iget v8, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    if-lt v4, v8, :cond_1

    .line 1166
    :cond_0
    const-string v8, "DataComparator"

    const-string v9, "compare, index out of index!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v8, 0x1

    .line 1223
    :goto_0
    return v8

    .line 1171
    :cond_1
    if-ltz v0, :cond_2

    if-gez v4, :cond_3

    .line 1174
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 1177
    :cond_3
    const-wide/16 v1, 0x0

    .line 1178
    .local v1, firstTotal:J
    const-wide/16 v5, 0x0

    .line 1179
    .local v5, secondTotal:J
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->uid:[I
    invoke-static {v8}, Landroid/net/NetworkStats;->access$000(Landroid/net/NetworkStats;)[I

    move-result-object v8

    aget v3, v8, v0

    .line 1180
    .local v3, firstUid:I
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->uid:[I
    invoke-static {v8}, Landroid/net/NetworkStats;->access$000(Landroid/net/NetworkStats;)[I

    move-result-object v8

    aget v7, v8, v4

    .line 1181
    .local v7, secondUid:I
    iget-boolean v8, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    if-eqz v8, :cond_9

    .line 1182
    if-nez v3, :cond_6

    if-nez v7, :cond_6

    .line 1183
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v0

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v0

    add-long v1, v8, v10

    .line 1184
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v4

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v4

    add-long v5, v8, v10

    .line 1186
    cmp-long v8, v1, v5

    if-lez v8, :cond_4

    .line 1187
    const/4 v8, -0x1

    goto :goto_0

    .line 1188
    :cond_4
    cmp-long v8, v1, v5

    if-nez v8, :cond_5

    .line 1189
    const/4 v8, 0x0

    goto :goto_0

    .line 1191
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 1193
    :cond_6
    if-nez v3, :cond_7

    if-eqz v7, :cond_7

    .line 1195
    const/4 v8, -0x1

    goto :goto_0

    .line 1196
    :cond_7
    if-eqz v3, :cond_8

    if-nez v7, :cond_8

    .line 1198
    const/4 v8, 0x1

    goto :goto_0

    .line 1201
    :cond_8
    const/4 v8, 0x0

    goto :goto_0

    .line 1204
    :cond_9
    if-eqz v3, :cond_c

    if-eqz v7, :cond_c

    .line 1205
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v0

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v0

    add-long v1, v8, v10

    .line 1206
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v4

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    #getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v4

    add-long v5, v8, v10

    .line 1208
    cmp-long v8, v1, v5

    if-lez v8, :cond_a

    .line 1209
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 1210
    :cond_a
    cmp-long v8, v1, v5

    if-nez v8, :cond_b

    .line 1211
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1213
    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1215
    :cond_c
    if-eqz v3, :cond_d

    if-nez v7, :cond_d

    .line 1217
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 1218
    :cond_d
    if-nez v3, :cond_e

    if-eqz v7, :cond_e

    .line 1220
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1223
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public isProcessRootUid()Z
    .locals 1

    .prologue
    .line 1159
    iget-boolean v0, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    return v0
.end method
