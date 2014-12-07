.class Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSeekBar:Landroid/widget/OppoSeekBar;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 330
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 331
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 332
    iput-object p2, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/widget/OppoSeekBar;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"
    .parameter "seekbar"

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 339
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 340
    iput-object p2, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 341
    iput-object p3, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    invoke-static {}, Lcom/oppo/view/VolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 358
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 361
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 365
    :cond_0
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 350
    invoke-static {}, Lcom/oppo/view/VolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 351
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
