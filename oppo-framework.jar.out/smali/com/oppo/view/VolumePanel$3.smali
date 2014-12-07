.class Lcom/oppo/view/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
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
    .line 466
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$3;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$3;->this$0:Lcom/oppo/view/VolumePanel;

    #calls: Lcom/oppo/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$500(Lcom/oppo/view/VolumePanel;)V

    .line 469
    const/4 v0, 0x0

    return v0
.end method
