.class Lcom/oppo/view/VolumePanel$2;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
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
    .line 400
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$2;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$2;->this$0:Lcom/oppo/view/VolumePanel;

    const/4 v1, -0x1

    #setter for: Lcom/oppo/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/oppo/view/VolumePanel;->access$302(Lcom/oppo/view/VolumePanel;I)I

    .line 403
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$2;->this$0:Lcom/oppo/view/VolumePanel;

    #getter for: Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$400(Lcom/oppo/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/view/VolumePanel$2;->this$0:Lcom/oppo/view/VolumePanel;

    #getter for: Lcom/oppo/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/oppo/view/VolumePanel;->access$300(Lcom/oppo/view/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 404
    return-void
.end method
