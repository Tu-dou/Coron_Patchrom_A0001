.class Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final FLIGHT_MODE:I

.field private final ITEM_IDS:[I

.field private final NORMAL_MODE:I

.field private final SILENT_MODE:I

.field private final TEXT_IDS:[I

.field private final VIBRATE_MODE:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field protected mFlightState:Z

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 677
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 664
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    .line 671
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 672
    iput v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->SILENT_MODE:I

    .line 673
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->VIBRATE_MODE:I

    .line 674
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->NORMAL_MODE:I

    .line 675
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->FLIGHT_MODE:I

    .line 678
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 679
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 680
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 681
    return-void

    .line 663
    nop

    :array_0
    .array-data 0x4
        0x88t 0x4t 0x2t 0xct
        0x89t 0x4t 0x2t 0xct
        0x8at 0x4t 0x2t 0xct
        0x8bt 0x4t 0x2t 0xct
    .end array-data

    .line 664
    :array_1
    .array-data 0x4
        0x8et 0x4t 0x2t 0xct
        0x8ft 0x4t 0x2t 0xct
        0x90t 0x4t 0x2t 0xct
        0x91t 0x4t 0x2t 0xct
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 690
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 685
    return p1
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .parameter "buttonOn"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    #setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1002(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 695
    const v7, 0xc09043f

    invoke-virtual {p4, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 697
    .local v5, v:Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v3

    .line 698
    .local v3, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 699
    if-ne v3, v0, :cond_1

    const/4 v2, 0x1

    .line 700
    .local v2, selected:Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 701
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 703
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v7, v7, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 704
    .local v1, itemView:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 706
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 707
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    aget v7, v7, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 709
    .local v4, t:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc060405

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 698
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #itemView:Landroid/view/View;
    .end local v2           #selected:Z
    .end local v4           #t:Landroid/widget/TextView;
    :cond_1
    move v2, v6

    .line 699
    goto :goto_1

    .line 713
    .restart local v1       #itemView:Landroid/view/View;
    .restart local v2       #selected:Z
    .restart local v4       #t:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc060406

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 717
    .end local v1           #itemView:Landroid/view/View;
    .end local v2           #selected:Z
    .end local v4           #t:Landroid/widget/TextView;
    :cond_3
    return-object v5
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v5, 0x0

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 803
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 778
    .local v1, index:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    .line 779
    .local v2, mode:I
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    .line 780
    .local v3, selected:Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 782
    .local v0, flightOn:Z
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 798
    const-string v4, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #flightOn:Z
    :cond_1
    move v0, v5

    .line 780
    goto :goto_1

    .line 784
    .restart local v0       #flightOn:Z
    :pswitch_0
    if-nez v3, :cond_2

    .line 785
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 790
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 793
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->onToggle(Z)V

    .line 794
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->changeStateFromPress(Z)V

    goto :goto_2

    .line 782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method onToggle(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$802(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 752
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 757
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #calls: Lcom/android/internal/policy/impl/OppoGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$900(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 742
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 738
    return-void
.end method
