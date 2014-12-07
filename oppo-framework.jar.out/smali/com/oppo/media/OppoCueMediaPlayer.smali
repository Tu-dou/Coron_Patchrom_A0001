.class public Lcom/oppo/media/OppoCueMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "OppoCueMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;
    }
.end annotation


# static fields
.field private static final CUE_SUFFIX:Ljava/lang/String; = ".cue"

.field private static final DELAY_CHECK_POS:I = 0x12c

.field private static final MSG_CHECK_POS:I = 0x0

.field private static final MSG_CUE_TRACK_END:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoCueMediaPlayer"


# instance fields
.field private mCueParser:Lcom/oppo/media/OppoCueParser;

.field private mCueSheet:Lcom/oppo/media/OppoCueSheet;

.field private mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

.field private mCurTrackEndPos:I

.field private mCurTrackFilePath:Ljava/lang/String;

.field private mCurTrackIndex:I

.field private mCurTrackStartPos:I

.field private mHandler:Landroid/os/Handler;

.field private mbCue:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    .line 52
    new-instance v0, Lcom/oppo/media/OppoCueParser;

    invoke-direct {v0}, Lcom/oppo/media/OppoCueParser;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueParser:Lcom/oppo/media/OppoCueParser;

    .line 53
    new-instance v0, Lcom/oppo/media/OppoCueSheet;

    invoke-direct {v0}, Lcom/oppo/media/OppoCueSheet;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    .line 54
    iput v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    .line 55
    iput-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    .line 57
    iput v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    .line 59
    new-instance v0, Lcom/oppo/media/OppoCueMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/oppo/media/OppoCueMediaPlayer$1;-><init>(Lcom/oppo/media/OppoCueMediaPlayer;)V

    iput-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/media/OppoCueMediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    return v0
.end method

.method static synthetic access$101(Lcom/oppo/media/OppoCueMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/media/OppoCueMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/media/OppoCueMediaPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/media/OppoCueMediaPlayer;)Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/media/OppoCueMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    return v0
.end method

.method private checkCueSheet(Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const-string v2, "OppoCueMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCueSheet path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 252
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, suffix:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string v2, ".cue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    .line 258
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueParser:Lcom/oppo/media/OppoCueParser;

    iget-object v3, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v2, v3}, Lcom/oppo/media/OppoCueParser;->setCueSheet(Lcom/oppo/media/OppoCueSheet;)V

    .line 259
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueParser:Lcom/oppo/media/OppoCueParser;

    invoke-virtual {v2, p1}, Lcom/oppo/media/OppoCueParser;->parseCue(Ljava/lang/String;)Z

    .line 265
    .end local v0           #index:I
    .end local v1           #suffix:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private resetCueInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    .line 240
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v0}, Lcom/oppo/media/OppoCueSheet;->clear()V

    .line 241
    iput v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    .line 242
    iput v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    .line 243
    iput v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    .line 244
    return-void
.end method


# virtual methods
.method public getCueSheet()Lcom/oppo/media/OppoCueSheet;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    return-object v0
.end method

.method public getCurCueTrackIndex()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    sub-int/2addr v0, v1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    iget v1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    sub-int/2addr v0, v1

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public isCue()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    return v0
.end method

.method public openCueTrack(I)V
    .locals 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const-string v2, "OppoCueMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCueTrack, index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput p1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    .line 205
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    iget v3, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    invoke-virtual {v2, v3}, Lcom/oppo/media/OppoCueSheet;->getCueTrack(I)Lcom/oppo/media/OppoCueTrack;

    move-result-object v1

    .line 206
    .local v1, track:Lcom/oppo/media/OppoCueTrack;
    if-nez v1, :cond_0

    .line 207
    const-string v2, "OppoCueMediaPlayer"

    const-string v3, "openCueTrack, get track failed! track is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v1}, Lcom/oppo/media/OppoCueTrack;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, tmpFilePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    :cond_1
    iput-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    .line 214
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 215
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    invoke-super {p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 216
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 217
    const-string v2, "OppoCueMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCueTrack, prepared! mCurTrackFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    invoke-virtual {v1}, Lcom/oppo/media/OppoCueTrack;->getStartPos()I

    move-result v2

    iput v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    .line 222
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v2}, Lcom/oppo/media/OppoCueSheet;->getCueTrackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    .line 223
    invoke-super {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    .line 228
    :goto_1
    const-string v2, "OppoCueMediaPlayer"

    const-string v3, "openCueTrack, mCurTrackStartPos=%s, mCurTrackEndPos=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    invoke-super {p0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueSheet:Lcom/oppo/media/OppoCueSheet;

    iget v3, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/media/OppoCueSheet;->getCueTrack(I)Lcom/oppo/media/OppoCueTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/media/OppoCueTrack;->getStartPos()I

    move-result v2

    iput v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    goto :goto_1
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 138
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

    .line 157
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 158
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 146
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iput v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackFilePath:Ljava/lang/String;

    .line 149
    iput v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    .line 150
    iput v2, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I

    .line 151
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 152
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    if-eqz v0, :cond_1

    .line 178
    if-gez p1, :cond_2

    .line 179
    const/4 p1, 0x0

    .line 183
    :cond_0
    :goto_0
    iget v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackStartPos:I

    add-int/2addr p1, v0

    .line 185
    :cond_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 186
    return-void

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/media/OppoCueMediaPlayer;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/oppo/media/OppoCueMediaPlayer;->getDuration()I

    move-result p1

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Lcom/oppo/media/OppoCueMediaPlayer;->resetCueInfo()V

    .line 93
    const/4 v7, 0x0

    .line 95
    .local v7, path:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v8

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 118
    invoke-direct {p0, v7}, Lcom/oppo/media/OppoCueMediaPlayer;->checkCueSheet(Ljava/lang/String;)V

    .line 120
    :cond_2
    return-void

    .line 110
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 113
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/media/OppoCueMediaPlayer;->resetCueInfo()V

    .line 125
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoCueMediaPlayer;->checkCueSheet(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setOnCueTrackEndListener(Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

    .line 236
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 133
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 143
    return-void
.end method
