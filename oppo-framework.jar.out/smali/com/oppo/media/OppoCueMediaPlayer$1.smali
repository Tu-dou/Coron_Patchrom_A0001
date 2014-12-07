.class Lcom/oppo/media/OppoCueMediaPlayer$1;
.super Landroid/os/Handler;
.source "OppoCueMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoCueMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/media/OppoCueMediaPlayer;


# direct methods
.method constructor <init>(Lcom/oppo/media/OppoCueMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mbCue:Z
    invoke-static {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->access$000(Lcom/oppo/media/OppoCueMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #calls: Landroid/media/MediaPlayer;->getCurrentPosition()I
    invoke-static {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->access$101(Lcom/oppo/media/OppoCueMediaPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackEndPos:I
    invoke-static {v1}, Lcom/oppo/media/OppoCueMediaPlayer;->access$200(Lcom/oppo/media/OppoCueMediaPlayer;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->pause()V

    .line 70
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->access$300(Lcom/oppo/media/OppoCueMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->access$300(Lcom/oppo/media/OppoCueMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;
    invoke-static {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->access$400(Lcom/oppo/media/OppoCueMediaPlayer;)Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mCueTrackEndListener:Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;
    invoke-static {v0}, Lcom/oppo/media/OppoCueMediaPlayer;->access$400(Lcom/oppo/media/OppoCueMediaPlayer;)Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    iget-object v2, p0, Lcom/oppo/media/OppoCueMediaPlayer$1;->this$0:Lcom/oppo/media/OppoCueMediaPlayer;

    #getter for: Lcom/oppo/media/OppoCueMediaPlayer;->mCurTrackIndex:I
    invoke-static {v2}, Lcom/oppo/media/OppoCueMediaPlayer;->access$500(Lcom/oppo/media/OppoCueMediaPlayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oppo/media/OppoCueMediaPlayer$OnCueTrackEndListener;->onCueTrackEnd(Lcom/oppo/media/OppoCueMediaPlayer;I)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
