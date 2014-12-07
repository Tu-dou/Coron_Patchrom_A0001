.class public Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;
.super Ljava/lang/Object;
.source "NetworkStatsHistoryMapForProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsHistoryMapForProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataForNoteRecorded"
.end annotation


# instance fields
.field public endMillis:J

.field public startMillis:J

.field public totalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->startMillis:J

    .line 81
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->endMillis:J

    .line 82
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsHistoryMapForProc$DataForNoteRecorded;->totalBytes:J

    .line 83
    return-void
.end method
