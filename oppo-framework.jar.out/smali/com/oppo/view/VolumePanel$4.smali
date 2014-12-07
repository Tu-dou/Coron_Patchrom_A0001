.class Lcom/oppo/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$4;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x6

    .line 492
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/oppo/view/VolumePanel$4;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-virtual {v1, v3}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 496
    iget-object v1, p0, Lcom/oppo/view/VolumePanel$4;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel$4;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-virtual {v2, v3}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 498
    :cond_0
    return-void
.end method
