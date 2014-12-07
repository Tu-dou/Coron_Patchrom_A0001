.class Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 6
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    .line 638
    const v1, 0xc080483

    const v2, 0xc080484

    const v3, 0xc040490

    const v4, 0xc040491

    const v5, 0xc040492

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 642
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    return v0
.end method
