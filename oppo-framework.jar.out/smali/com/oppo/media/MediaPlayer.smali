.class public Lcom/oppo/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/MediaPlayer$OnInfoListener;,
        Lcom/oppo/media/MediaPlayer$OnErrorListener;,
        Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/oppo/media/MediaPlayer$OnCompletionListener;,
        Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;,
        Lcom/oppo/media/MediaPlayer$OnPreparedListener;,
        Lcom/oppo/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_HAS_UNSUPPORT_VIDEO:I = 0x35c

.field public static final MEDIA_PLAYER_IDLE:I = 0x1

.field public static final MEDIA_PLAYER_INITIALIZED:I = 0x2

.field public static final MEDIA_PLAYER_PAUSED:I = 0x20

.field public static final MEDIA_PLAYER_PLAYBACK_COMPLETE:I = 0x80

.field public static final MEDIA_PLAYER_PREPARED:I = 0x8

.field public static final MEDIA_PLAYER_PREPARING:I = 0x4

.field public static final MEDIA_PLAYER_STARTED:I = 0x10

.field public static final MEDIA_PLAYER_STOPPED:I = 0x40

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isOppoCreat:Z

.field private mAudioSessionId:I

.field private mAudioStreamType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedSeeking:Z

.field private mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

.field private mPath:Ljava/lang/String;

.field private mPrepareAsync:Z

.field private mScreenOn:Z

.field private mSeekMs:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mfd:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com_oppo_media_MediaPlayer"

    sput-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 62
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 63
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 66
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 67
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 70
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 71
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    .line 72
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 73
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 77
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 78
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 79
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 80
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 83
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "com_oppo_media_MediaPlayer is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 86
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 88
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$1;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 97
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$2;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 107
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$3;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 116
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$4;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 133
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$5;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 143
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$6;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 155
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$7;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private createOppoMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 254
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 257
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 259
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->reset()V

    .line 347
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v0}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 266
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    if-ltz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioSessionId(I)V

    .line 269
    :cond_2
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    if-ltz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioStreamType(I)V

    .line 273
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/oppo/media/OppoMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$8;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnPreparedListener(Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;)V

    .line 287
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$9;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$9;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnBufferingUpdateListener(Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;)V

    .line 297
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$10;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$10;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnCompletionListener(Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;)V

    .line 306
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$11;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$11;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnErrorListener(Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;)V

    .line 317
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$12;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$12;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnSeekCompleteListener(Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;)V

    .line 326
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$13;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$13;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnVideoSizeChangedListener(Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;)V

    .line 337
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$14;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$14;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnInfoListener(Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;)V

    goto :goto_0
.end method

.method private handleMediaPlayerError()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 172
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaPlayerError() mCurrentState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 175
    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 176
    .local v2, mChangeState:I
    iput v7, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 178
    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_4

    .line 181
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(FileDescriptor)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v3}, Lcom/oppo/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 212
    :cond_0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 213
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaPlayerError() mOppoMediaPlayer prepare mPrepareAsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-eqz v3, :cond_7

    .line 217
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :cond_1
    :goto_1
    iget v3, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    if-ltz v3, :cond_2

    .line 241
    iput-boolean v7, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 244
    :cond_2
    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 245
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaPlayerError() mOppoMediaPlayer start mPrepareAsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-nez v3, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->start()V

    .line 251
    :cond_3
    :goto_2
    return-void

    .line 184
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 185
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(String)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOppoMediaPlayer setDataSource error mPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    invoke-interface {v3, p0, v7, v8}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    goto :goto_2

    .line 187
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_6

    .line 188
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(Context, Uri, Map)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 192
    :cond_6
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 194
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 218
    :catch_1
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() prepareAsync error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 221
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    invoke-interface {v3, p0, v7, v8}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    goto/16 :goto_2

    .line 228
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->prepare()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 229
    :catch_2
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() prepare error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    invoke-interface {v3, p0, v7, v8}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->deselectTrack(I)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioSessionId() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 382
    :goto_0
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    return v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 866
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 867
    const/4 v0, 0x0

    .line 873
    :goto_0
    return v0

    .line 870
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 852
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 853
    const/4 v0, -0x1

    .line 859
    :goto_0
    return v0

    .line 856
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackInfo()[Lcom/oppo/media/MediaPlayer$TrackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 458
    .local v1, mParcel:Landroid/os/Parcel;
    iget-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v4, :cond_0

    .line 459
    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer;->getTrackInfo()[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    move-result-object v2

    .line 460
    .local v2, mtrackInfo:[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v3, v4, [Lcom/oppo/media/MediaPlayer$TrackInfo;

    .line 461
    .local v3, trackInfo:[Lcom/oppo/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 462
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 463
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 466
    new-instance v4, Lcom/oppo/media/MediaPlayer$TrackInfo;

    invoke-direct {v4, v1}, Lcom/oppo/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v3, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v0           #i:I
    .end local v2           #mtrackInfo:[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .end local v3           #trackInfo:[Lcom/oppo/media/MediaPlayer$TrackInfo;
    :cond_0
    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 470
    .local v2, mtrackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v3, v4, [Lcom/oppo/media/MediaPlayer$TrackInfo;

    .line 471
    .restart local v3       #trackInfo:[Lcom/oppo/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 472
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 473
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 476
    new-instance v4, Lcom/oppo/media/MediaPlayer$TrackInfo;

    invoke-direct {v4, v1}, Lcom/oppo/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v3, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    .end local v2           #mtrackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 481
    return-object v3
.end method

.method public getVideoHeight()I
    .locals 3

    .prologue
    .line 798
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getVideoHeight()I

    move-result v0

    .line 803
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 3

    .prologue
    .line 788
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 793
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->isLooping()Z

    move-result v0

    .line 738
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->isPlaying()Z

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/16 v0, 0x20

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 842
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->pause()V

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 770
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare() isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 773
    const/4 v1, 0x4

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 775
    iget-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V

    .line 785
    :goto_0
    return-void

    .line 779
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 782
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 757
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAsync() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 760
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 762
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->prepareAsync()V

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 576
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 580
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->release()V

    .line 582
    iput-object v5, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 586
    iput-object v5, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 588
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 589
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 590
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 591
    iput-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 592
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 545
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 548
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 550
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->reset()V

    .line 552
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 556
    :goto_0
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 557
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 878
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 882
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->seekTo(I)V

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->selectTrack(I)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 3
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 362
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioSessionId() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 366
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioSessionId(I)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .parameter "streamtype"

    .prologue
    .line 708
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 709
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioStreamType(I)V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
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
    .line 596
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(Context, Uri) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 599
    iput-object p2, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 600
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 606
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 607
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 609
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(Context, Uri, Map) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 618
    iput-object p2, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 619
    iput-object p3, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    .line 620
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 626
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 627
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 628
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 629
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 4
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(FileDescriptor) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 656
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 662
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 663
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 665
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource(FileDescriptor, long, long) isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 674
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 685
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v6

    .line 679
    .local v6, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 680
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 681
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 682
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 683
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(String) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 638
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 644
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 646
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 647
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "sh"

    .prologue
    .line 688
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 692
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "looping"

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setLooping(Z)V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    .line 910
    return-void
.end method

.method public setOnCompletionListener(Lcom/oppo/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 905
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    .line 906
    return-void
.end method

.method public setOnErrorListener(Lcom/oppo/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 921
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    .line 922
    return-void
.end method

.method public setOnInfoListener(Lcom/oppo/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

    .line 926
    return-void
.end method

.method public setOnPreparedListener(Lcom/oppo/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    .line 902
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    .line 914
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 918
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    .line 743
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOnWhilePlaying() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 751
    :goto_0
    if-eqz p1, :cond_0

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 754
    :cond_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 3
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 350
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leftVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rightVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setVolume(FF)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 890
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWakeMode() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 897
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/16 v0, 0x10

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 822
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 823
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    if-eqz v0, :cond_0

    .line 824
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOppoMediaPlayer start seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    invoke-virtual {p0, v0}, Lcom/oppo/media/MediaPlayer;->seekTo(I)V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 828
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->start()V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v0, 0x40

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 567
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->stop()V

    .line 572
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 573
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method
