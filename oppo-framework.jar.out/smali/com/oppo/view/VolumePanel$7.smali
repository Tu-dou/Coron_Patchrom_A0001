.class Lcom/oppo/view/VolumePanel$7;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/VolumePanel;
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
    .line 1242
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/view/VolumePanel;->access$800()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1247
    const-string v3, "OppoVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The action is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_0
    const-string v3, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1250
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, v4, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    #calls: Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/oppo/view/VolumePanel;->access$900(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V

    .line 1251
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    #calls: Lcom/oppo/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1000(Lcom/oppo/view/VolumePanel;)V

    .line 1265
    :cond_1
    :goto_0
    return-void

    .line 1252
    :cond_2
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, v4, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    #calls: Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/oppo/view/VolumePanel;->access$900(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V

    .line 1254
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    #calls: Lcom/oppo/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1000(Lcom/oppo/view/VolumePanel;)V

    goto :goto_0

    .line 1255
    :cond_3
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1256
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    #getter for: Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1100(Lcom/oppo/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1257
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1258
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v3, v3, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05044a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1261
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1262
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    iget-object v4, v4, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    #calls: Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/oppo/view/VolumePanel;->access$900(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V

    .line 1263
    iget-object v3, p0, Lcom/oppo/view/VolumePanel$7;->this$0:Lcom/oppo/view/VolumePanel;

    #calls: Lcom/oppo/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Lcom/oppo/view/VolumePanel;->access$1000(Lcom/oppo/view/VolumePanel;)V

    goto :goto_0
.end method
