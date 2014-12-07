.class public Lcom/oppo/media/OppoMediaPlayer;
.super Ljava/lang/Object;
.source "OppoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;,
        Lcom/oppo/media/OppoMediaPlayer$EventHandler;,
        Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoMediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCurrentPosition:I

.field private mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mSeekPosition:I

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "OppoMediaPlayer"

    const-string v1, "system load"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v0, "atrc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 548
    const-string v0, "rv20"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 549
    const-string v0, "x13"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 550
    const-string v0, "rv40"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 551
    const-string v0, "oppostagefright"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 552
    const-string v0, "oppoplayer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/oppo/media/OppoMediaPlayer;->native_init()V

    .line 555
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object v3, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 584
    const-string v1, "OppoMediaPlayer"

    const-string v2, "OppoMediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 587
    new-instance v1, Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;-><init>(Lcom/oppo/media/OppoMediaPlayer;Lcom/oppo/media/OppoMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    .line 598
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/oppo/media/OppoMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 599
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    iput v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    .line 600
    return-void

    .line 588
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 589
    new-instance v1, Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;-><init>(Lcom/oppo/media/OppoMediaPlayer;Lcom/oppo/media/OppoMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    goto :goto_0

    .line 591
    :cond_1
    iput-object v3, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/oppo/media/OppoMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/media/OppoMediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/media/OppoMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/media/OppoMediaPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/media/OppoMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/media/OppoMediaPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 1671
    const-string v0, "application/x-subrip"

    if-ne p0, v0, :cond_0

    .line 1672
    const/4 v0, 0x1

    .line 1674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Lcom/oppo/media/OppoMediaPlayer;
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 829
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 830
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 848
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 833
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v0}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    .line 834
    .local v0, mp:Lcom/oppo/media/OppoMediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 835
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 836
    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 838
    .end local v0           #mp:Lcom/oppo/media/OppoMediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 839
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "OppoMediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 848
    goto :goto_0

    .line 841
    :catch_1
    move-exception v7

    .line 842
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "OppoMediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 844
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 845
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "OppoMediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/oppo/media/OppoMediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 771
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/media/OppoMediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/oppo/media/OppoMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/oppo/media/OppoMediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 790
    :try_start_0
    new-instance v1, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v1}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    .line 791
    .local v1, mp:Lcom/oppo/media/OppoMediaPlayer;
    invoke-virtual {v1, p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 792
    if-eqz p2, :cond_0

    .line 793
    invoke-virtual {v1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 795
    :cond_0
    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 808
    .end local v1           #mp:Lcom/oppo/media/OppoMediaPlayer;
    :goto_0
    return-object v1

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "OppoMediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 800
    :catch_1
    move-exception v0

    .line 801
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "OppoMediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 803
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 804
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "OppoMediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 2411
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2055
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/media/OppoMediaPlayer;

    .line 2056
    .local v1, mp:Lcom/oppo/media/OppoMediaPlayer;
    if-nez v1, :cond_1

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 2063
    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->start()V

    .line 2065
    :cond_2
    iget-object v2, v1, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2066
    iget-object v2, v1, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2067
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 3
    .parameter "index"
    .parameter "select"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1870
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1873
    .local v0, reply:Landroid/os/Parcel;
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    invoke-virtual {p0, v1, v0}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1880
    return-void

    .line 1873
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 1877
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 955
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 957
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 958
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 959
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 960
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 964
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1110
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1116
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mStayAwake:Z

    .line 1117
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 1118
    return-void

    .line 1112
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1124
    :cond_0
    return-void

    .line 1122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native _getCurrentPosition()I
.end method

.method public native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1732
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1733
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_1
    :goto_0
    return-void

    .line 1737
    :cond_2
    const/4 v0, 0x0

    .line 1739
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1740
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1741
    if-nez v0, :cond_3

    .line 1747
    if-eqz v0, :cond_1

    .line 1748
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1744
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1747
    if-eqz v0, :cond_1

    .line 1748
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1746
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    .line 1747
    if-eqz v0, :cond_1

    .line 1748
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1746
    :catch_1
    move-exception v3

    .line 1747
    if-eqz v0, :cond_1

    .line 1748
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1747
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 1748
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1795
    invoke-static {p6}, Lcom/oppo/media/OppoMediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1796
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mimeType for timed text source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1800
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1801
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1804
    .local v0, reply:Landroid/os/Parcel;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1806
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1807
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1808
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p0, v1, v0}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    return-void

    .line 1811
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1772
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 1773
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1697
    invoke-static {p2}, Lcom/oppo/media/OppoMediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1699
    .local v3, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1702
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1703
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1704
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1705
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1706
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1712
    return-void

    .line 1710
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1865
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/media/OppoMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1866
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1936
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->native_finalize()V

    .line 1937
    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    if-ltz v0, :cond_0

    .line 1181
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    .line 1183
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/media/OppoMediaPlayer;->_getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public native getDuration()I
.end method

.method public getTrackInfo()[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1643
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1646
    .local v0, reply:Landroid/os/Parcel;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    invoke-virtual {p0, v1, v0}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1648
    sget-object v3, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    .local v2, trackInfo:[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1651
    .end local v2           #trackInfo:[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 646
    invoke-direct {p0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 647
    .local v0, retcode:I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 648
    if-eqz v0, :cond_0

    .line 649
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 628
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    return-object v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1049
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1050
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_pause()V

    .line 1051
    return-void
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1283
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 1284
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    .line 1285
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    .line 1286
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    .line 1287
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    .line 1288
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    .line 1289
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    .line 1290
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    .line 1291
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnTimedTextListener:Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

    .line 1292
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_release()V

    .line 1293
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1303
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_reset()V

    .line 1305
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1306
    return-void
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
    .line 1162
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    .line 1163
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    if-gez v0, :cond_0

    .line 1164
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    .line 1165
    invoke-virtual {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->_seekTo(I)V

    .line 1170
    :goto_0
    return-void

    .line 1167
    :cond_0
    const-string v0, "OppoMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek in progress - queue up seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 1846
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/media/OppoMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1847
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setAuxEffectSendLevel(F)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
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
    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 861
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
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
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 874
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, scheme:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 904
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    const/4 v6, 0x0

    .line 882
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 883
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 884
    if-nez v6, :cond_3

    .line 897
    if-eqz v6, :cond_1

    .line 898
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 890
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 891
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 897
    :goto_1
    if-eqz v6, :cond_1

    .line 898
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 893
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 896
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 897
    if-eqz v6, :cond_5

    .line 898
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 902
    :cond_5
    :goto_2
    const-string v0, "OppoMediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 896
    :catch_1
    move-exception v0

    .line 897
    if-eqz v6, :cond_5

    .line 898
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 897
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 898
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 979
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 980
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 923
    invoke-direct {p0, p1, v0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 936
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 937
    .local v3, keys:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 939
    .local v4, values:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 940
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 941
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 943
    const/4 v1, 0x0

    .line 944
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 945
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 946
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "sh"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 666
    if-eqz p1, :cond_0

    .line 667
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 671
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 672
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 673
    return-void

    .line 669
    .end local v0           #surface:Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setOnBufferingUpdateListener(Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    .line 2149
    return-void
.end method

.method public setOnCompletionListener(Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    .line 2118
    return-void
.end method

.method public setOnErrorListener(Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    .line 2291
    return-void
.end method

.method public setOnInfoListener(Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    .line 2403
    return-void
.end method

.method public setOnPreparedListener(Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    .line 2092
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2173
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    .line 2174
    return-void
.end method

.method public setOnTimedTextListener(Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnTimedTextListener:Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

    .line 2229
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    .line 2204
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1100
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1101
    const-string v0, "OppoMediaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    iput-boolean p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1104
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 1106
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 693
    const-string v0, "OppoMediaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 696
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 697
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 698
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 745
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 746
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 749
    .local v1, reply:Landroid/os/Parcel;
    const/4 v3, 0x6

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {p0, v2, v1}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    return-void

    .line 753
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1073
    const/4 v1, 0x0

    .line 1074
    .local v1, washeld:Z
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    const/4 v1, 0x1

    .line 1077
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1079
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1082
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1083
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1085
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1086
    if-eqz v1, :cond_2

    .line 1087
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1089
    :cond_2
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1025
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1026
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_start()V

    .line 1027
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1038
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_stop()V

    .line 1039
    return-void
.end method
