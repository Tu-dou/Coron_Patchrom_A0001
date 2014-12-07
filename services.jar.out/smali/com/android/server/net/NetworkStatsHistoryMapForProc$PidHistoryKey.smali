.class Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
.super Ljava/lang/Object;
.source "NetworkStatsHistoryMapForProc.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsHistoryMapForProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PidHistoryKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;",
        ">;"
    }
.end annotation


# instance fields
.field public commValue:Ljava/lang/String;

.field private final hashCode:I

.field public pidValue:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3
    .parameter "pid"
    .parameter "command"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    .line 93
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->hashCode:I

    .line 96
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    long-to-int v0, v0

    iget-wide v1, p1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->pidValue:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->compareTo(Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 105
    instance-of v2, p1, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;

    .line 107
    .local v0, key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 108
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 113
    .end local v0           #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    :cond_0
    :goto_0
    return v1

    .line 110
    .restart local v0       #key:Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->commValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$PidHistoryKey;->hashCode:I

    return v0
.end method
