.class public Lcom/oppo/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/media/VolumeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/view/VolumePanel$WarningDialogReceiver;,
        Lcom/oppo/view/VolumePanel$StreamControl;,
        Lcom/oppo/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ACTION_MEDIA_VOLUME_MODE_CHANGED:Ljava/lang/String; = "action_media_volume_mode_changed"

.field private static final ACTION_SKIN_CHANGED:Ljava/lang/String; = "android.intent.action.SKIN_CHANGED"

.field private static final ACTION_SYSTEM_VOLUME_MODE_CHANGED:Ljava/lang/String; = "action_system_volume_mode_changed"

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final OPPO_UNIFORM_VOLUME_SETTINGS_ENABLED:Ljava/lang/String; = "oppo_uniform_volume_settings_enabled"

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "OppoVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final WAIT_TIME_RELEASE_LOCK:I = 0x64

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private lp:Landroid/view/ViewGroup$LayoutParams;

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFromUser:Z

.field private mOppoVolumeDisk:Landroid/view/ViewGroup;

.field private mOppoVolumeIcon:Landroid/widget/ImageView;

.field private mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

.field private mOppoVolumeTitle:Landroid/widget/TextView;

.field private mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRingIsSilent:Z

.field private mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowCombinedVolumes:Z

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    sput-boolean v2, Lcom/oppo/view/VolumePanel;->LOGD:Z

    .line 273
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/view/VolumePanel$StreamResources;

    sget-object v1, Lcom/oppo/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->SystemStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 11
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 156
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    .line 169
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    .line 1242
    new-instance v8, Lcom/oppo/view/VolumePanel$7;

    invoke-direct {v8, p0}, Lcom/oppo/view/VolumePanel$7;-><init>(Lcom/oppo/view/VolumePanel;)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    iput-object p1, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 371
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 372
    iput-object p2, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0406

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 377
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_1

    .line 378
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v8, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 379
    sget-object v8, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v5, v8, v1

    .line 380
    .local v5, streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    iget v8, v5, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 384
    .end local v1           #i:I
    .end local v5           #streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V

    .line 386
    new-instance v8, Lcom/oppo/view/VolumePanel$1;

    const v9, 0xc030407

    invoke-direct {v8, p0, p1, v9}, Lcom/oppo/view/VolumePanel$1;-><init>(Lcom/oppo/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 397
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v9, "Volume control"

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->lp:Landroid/view/ViewGroup$LayoutParams;

    .line 399
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/oppo/view/VolumePanel;->lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v9, Lcom/oppo/view/VolumePanel$2;

    invoke-direct {v9, p0}, Lcom/oppo/view/VolumePanel$2;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 407
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 408
    .local v7, window:Landroid/view/Window;
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 409
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 410
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 412
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05044a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 414
    const/16 v8, 0x7e4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 415
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 416
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 417
    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 418
    const v8, 0x40528

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 422
    const-string v8, "OppoVolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VolumePanel lp.x= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lp.y= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    new-array v8, v8, [Landroid/media/ToneGenerator;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 425
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 429
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0406

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 442
    .local v4, masterVolumeOnly:Z
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0407

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 445
    .local v3, masterVolumeKeySounds:Z
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/oppo/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 446
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->listenToRingerMode()V

    .line 448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/oppo/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    .line 457
    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    const v9, 0x1000000a

    const-string v10, "VolumePanel.mSafeVolumeWakeLock"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 460
    return-void

    .line 445
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    return-void
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    sput-object p0, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oppo/view/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/view/VolumePanel;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/view/VolumePanel;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->inflaterBaseUI(Landroid/content/Context;)V

    return-void
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 624
    iget-boolean v3, p0, Lcom/oppo/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 636
    :cond_0
    return-void

    .line 626
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 628
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 629
    .local v2, streamType:I
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 626
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_3
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 633
    .local v1, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 634
    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private addUnifiedControl()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1502
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1504
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0xc09044b

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1505
    .local v2, layout:Landroid/view/View;
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1506
    const v6, 0xc0204a3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    .line 1507
    .local v3, uc:Landroid/widget/CompoundButton;
    if-eqz v3, :cond_0

    .line 1508
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oppo_uniform_volume_settings_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1510
    .local v0, enabled:I
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1511
    if-ne v0, v4, :cond_1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1512
    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1514
    .end local v0           #enabled:I
    :cond_0
    return-void

    .restart local v0       #enabled:I
    :cond_1
    move v4, v5

    .line 1511
    goto :goto_0
.end method

.method private collapse()V
    .locals 4

    .prologue
    .line 697
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 698
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 699
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 545
    sget-boolean v7, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    const-string v7, "OppoVolumePanel"

    const-string v9, "createSliders()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    .line 547
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 548
    iput-object v10, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 550
    :cond_1
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 552
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v9, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v9, v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 553
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 554
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 555
    sget-object v7, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 556
    .local v5, streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    iget v6, v5, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 562
    .local v6, streamType:I
    new-instance v4, Lcom/oppo/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v10}, Lcom/oppo/view/VolumePanel$StreamControl;-><init>(Lcom/oppo/view/VolumePanel;Lcom/oppo/view/VolumePanel$1;)V

    .line 563
    .local v4, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    iput v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    .line 564
    const v7, 0xc090434

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 565
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 566
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045c

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    .line 567
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    iget v9, v5, Lcom/oppo/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 568
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045d

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 569
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 570
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v5, Lcom/oppo/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    .line 573
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 574
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->circleIconRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    .line 575
    iget v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->circleIconMuteRes:I

    iput v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconMuteRes:I

    .line 576
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v4, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 581
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045e

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/OppoSeekBar;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    .line 582
    const/4 v7, 0x3

    if-ne v7, v6, :cond_2

    .line 583
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 584
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/OppoSeekBar;->setOppoSeekBarFromUserChangeListener(Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;)V

    .line 587
    :cond_2
    iget-boolean v7, v5, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    iput-boolean v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->show:Z

    .line 588
    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    if-nez v6, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 590
    .local v2, plusOne:I
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    if-lt v6, v7, :cond_5

    .line 554
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v2           #plusOne:I
    :cond_4
    move v2, v8

    .line 588
    goto :goto_1

    .line 593
    .restart local v2       #plusOne:I
    :cond_5
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-direct {p0, v6}, Lcom/oppo/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/OppoSeekBar;->setMax(I)V

    .line 594
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/OppoSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 595
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/OppoSeekBar;->setTag(Ljava/lang/Object;)V

    .line 596
    iget-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc020423

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/oppo/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 597
    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 599
    .end local v2           #plusOne:I
    .end local v4           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_6
    return-void
.end method

.method private expand()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 679
    sget-boolean v4, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "OppoVolumePanel"

    const-string v5, "expand()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 681
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 682
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 683
    .local v3, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_1

    .line 684
    iget-object v4, v3, Lcom/oppo/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v3           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_2
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 689
    .local v2, position:[I
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 690
    const-string v4, "OppoVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expand position[0]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position[1]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 693
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 694
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1342
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1343
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1344
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1192
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 1196
    iget-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 1197
    const/4 p1, 0x1

    .line 1202
    :cond_0
    monitor-enter p0

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1205
    :try_start_1
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1213
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 1199
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1208
    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 515
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 517
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 525
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 530
    :goto_0
    return v0

    .line 527
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private inflaterBaseUI(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 463
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 465
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0xc090433

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    .line 466
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v2, Lcom/oppo/view/VolumePanel$3;

    invoke-direct {v2, p0}, Lcom/oppo/view/VolumePanel$3;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 472
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc02045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 473
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc020425

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 474
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc02049f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    .line 475
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc0204a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoVolumeProgress;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

    .line 477
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc0204a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    .line 478
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xc0204a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeTitle:Landroid/widget/TextView;

    .line 479
    return-void
.end method

.method private isMuted(I)Z
    .locals 2
    .parameter "streamType"

    .prologue
    const/4 v0, 0x0

    .line 503
    const/16 v1, -0x64

    if-ne p1, v1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    const/16 v1, -0xc8

    if-ne p1, v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oppo/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lcom/oppo/view/VolumePanel$4;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 602
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 603
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorderSliders() activeStreamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 605
    .local v0, active:Lcom/oppo/view/VolumePanel$StreamControl;
    if-nez v0, :cond_1

    .line 606
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    .line 616
    :goto_0
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->addOtherVolumes()V

    .line 619
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->addUnifiedControl()V

    .line 621
    return-void

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 610
    iput p1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    .line 612
    invoke-direct {p0, v0}, Lcom/oppo/view/VolumePanel;->updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 613
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1337
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1338
    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1339
    return-void
.end method

.method private ringImageClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1453
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1460
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private setMusicIcon(II)V
    .locals 4
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    const/4 v3, 0x3

    .line 1223
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1224
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1225
    iput p1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    .line 1226
    iput p2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1227
    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1229
    :cond_0
    return-void

    .line 1227
    :cond_1
    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 535
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V
    .locals 8
    .parameter "sc"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 640
    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    sget-boolean v2, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "OppoVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider() type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActiveStreamType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_2
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v1

    .line 647
    .local v1, muted:Z
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    iget v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OppoSeekBar;->setProgress(I)V

    .line 648
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 649
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

    iget v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoVolumeProgress;->updateProgress(I)V

    .line 652
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->updateVolumeIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 653
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 655
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0xc080499

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    :goto_1
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/16 v3, -0xc8

    if-ne v2, v3, :cond_7

    .line 664
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 671
    :goto_2
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oppo_uniform_volume_settings_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 673
    .local v0, enabled:I
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_0

    if-ne v0, v5, :cond_0

    .line 674
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 656
    .end local v0           #enabled:I
    :cond_4
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_6

    .line 657
    iget-object v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_3

    .line 659
    :cond_6
    invoke-virtual {p0, p1}, Lcom/oppo/view/VolumePanel;->changeStreamIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .line 665
    :cond_7
    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v3

    if-eq v2, v3, :cond_8

    if-eqz v1, :cond_8

    .line 666
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 667
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/OppoSeekBar;->setPressed(Z)V

    goto :goto_2

    .line 669
    :cond_8
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 5

    .prologue
    .line 704
    sget-boolean v3, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "OppoVolumePanel"

    const-string v4, "updateStates()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 706
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 707
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 714
    .local v2, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_1

    .line 715
    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->updateSlider(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 706
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    .end local v2           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_2
    return-void
.end method

.method private updateVolumeIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V
    .locals 7
    .parameter "sc"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 1417
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolumeIcon() streamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mActiveStreamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    iget v2, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_2

    .line 1450
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 1424
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    const v2, 0xc0804b9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1425
    :cond_3
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v5, :cond_5

    .line 1426
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconMuteRes:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    goto :goto_1

    .line 1429
    :cond_5
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x380

    if-eqz v1, :cond_7

    .line 1434
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_6

    const v1, 0xc0804bd

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const v1, 0xc0804bc

    goto :goto_2

    .line 1437
    :cond_7
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-eq v1, v4, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-eq v1, v6, :cond_8

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-nez v1, :cond_a

    .line 1443
    :cond_8
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1444
    .local v0, volume:I
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconMuteRes:I

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_9
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    goto :goto_3

    .line 1445
    .end local v0           #volume:I
    :cond_a
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1446
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeIcon:Landroid/widget/ImageView;

    iget v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->circleIconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private volumeImageClick(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1463
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_media_volume_mode_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_system_volume_mode_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public changeStreamIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V
    .locals 3
    .parameter "sc"

    .prologue
    .line 1473
    if-eqz p1, :cond_1

    .line 1474
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1480
    :cond_0
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1481
    .local v0, volume:I
    iget-object v2, p1, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1482
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->updateVolumeIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 1485
    .end local v0           #volume:I
    :cond_1
    return-void

    .line 1481
    .restart local v0       #volume:I
    :cond_2
    iget v1, p1, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1270
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1273
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1278
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1283
    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1288
    :pswitch_3
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1293
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1298
    :pswitch_5
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1303
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1305
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1310
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1312
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1318
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1323
    :pswitch_9
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1327
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1331
    :pswitch_b
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onDisplaySafeVolumeWarning()V

    goto :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 1518
    if-nez p2, :cond_2

    .line 1519
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1520
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v4, v6, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 1521
    .local v4, streamType:I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1522
    .local v3, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v6, :cond_1

    .line 1523
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/oppo/view/VolumePanel$StreamControl;->show:Z

    if-nez v6, :cond_1

    .line 1519
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1527
    :cond_1
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq v4, v6, :cond_0

    const/16 v6, -0xc8

    if-eq v4, v6, :cond_0

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1529
    iget-object v6, v3, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/OppoSeekBar;->setPressed(Z)V

    .line 1530
    iget-object v6, v3, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 1534
    .end local v1           #i:I
    .end local v3           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    .end local v4           #streamType:I
    :cond_2
    if-eqz p2, :cond_5

    .line 1535
    const/4 v0, 0x2

    .line 1536
    .local v0, baseStreamType:I
    invoke-direct {p0, v8}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    .line 1537
    .local v2, progress:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 1539
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget-boolean v6, v6, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    if-ne v6, v8, :cond_4

    .line 1537
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1542
    :cond_4
    sget-object v6, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-direct {p0, v6, v2, v5}, Lcom/oppo/view/VolumePanel;->setStreamVolume(III)V

    goto :goto_3

    .line 1545
    .end local v0           #baseStreamType:I
    .end local v1           #i:I
    .end local v2           #progress:I
    :cond_5
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oppo_uniform_volume_settings_enabled"

    if-eqz p2, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1547
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1548
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 1385
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    if-ne p1, v4, :cond_1

    .line 1386
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->expand()V

    .line 1413
    :cond_0
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1414
    return-void

    .line 1388
    :cond_1
    sget-object v4, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1389
    sget-object v4, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v3, v4, v1

    .line 1390
    .local v3, streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v5, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1391
    .local v2, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_2

    .line 1392
    iget v4, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_3

    .line 1393
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->ringImageClick()V

    .line 1388
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1394
    :cond_3
    iget-object v4, v2, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_2

    iget v4, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1401
    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oppo_uniform_volume_settings_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1403
    .local v0, enabled:I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 1404
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->ringImageClick()V

    goto :goto_1

    .line 1406
    :cond_4
    iget v4, v3, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    invoke-direct {p0, v4}, Lcom/oppo/view/VolumePanel;->volumeImageClick(I)V

    goto :goto_1
.end method

.method protected onDisplaySafeVolumeWarning()V
    .locals 6

    .prologue
    .line 1113
    sget-object v3, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1114
    :try_start_0
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1115
    monitor-exit v3

    .line 1186
    :goto_0
    return-void

    .line 1117
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0xc0404c7

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    new-instance v5, Lcom/oppo/view/VolumePanel$6;

    invoke-direct {v5, p0}, Lcom/oppo/view/VolumePanel$6;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    new-instance v5, Lcom/oppo/view/VolumePanel$5;

    invoke-direct {v5, p0}, Lcom/oppo/view/VolumePanel$5;-><init>(Lcom/oppo/view/VolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1157
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 1158
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1159
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_4

    .line 1160
    new-instance v1, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    iget-object v5, v0, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-direct {v1, v2, v4, v5}, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/widget/OppoSeekBar;)V

    .line 1167
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    .local v1, warning:Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    :goto_1
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 1168
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1169
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1171
    :cond_1
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1173
    :cond_2
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 1174
    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1175
    .restart local v0       #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_3

    .line 1176
    const-string v2, "OppoVolumePanel"

    const-string v4, "post_setEnabled_true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 1181
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_3
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1182
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d9

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1184
    sget-object v2, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1185
    monitor-exit v3

    goto/16 :goto_0

    .end local v1           #warning:Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1162
    .restart local v0       #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, v2, v4}, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .restart local v1       #warning:Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    goto :goto_1

    .line 1165
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    .end local v1           #warning:Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    :cond_5
    new-instance v1, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, v2, v4}, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #warning:Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
    goto :goto_1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1232
    monitor-enter p0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1237
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1233
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1239
    :cond_1
    monitor-exit p0

    .line 1240
    return-void

    .line 1239
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 853
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 856
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 857
    iget-object v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 860
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/VolumePanel;->onVolumeChanged(II)V

    .line 861
    return-void

    .line 857
    :cond_2
    iget v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method public onOppoSeekBarProgressrFromUserChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1489
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1490
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lcom/oppo/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1491
    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1492
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    const/4 v2, 0x3

    iget v3, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1494
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/view/VolumePanel;->setStreamVolume(III)V

    .line 1497
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1498
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 1008
    invoke-virtual {p0, v2}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {p0, v2}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1011
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    .line 1014
    :cond_0
    monitor-enter p0

    .line 1015
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1016
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 1017
    const/16 v1, 0x21

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1018
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1020
    :cond_1
    monitor-exit p0

    .line 1021
    return-void

    .line 1020
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1348
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1349
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Lcom/oppo/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    .line 1350
    sget-boolean v2, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "OppoVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged() progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 1351
    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1352
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 1353
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/view/VolumePanel;->setStreamVolume(III)V

    .line 1357
    :cond_1
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1359
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    .line 1363
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1364
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1050
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1053
    :cond_1
    monitor-enter p0

    .line 1054
    :try_start_0
    iget v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1055
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/oppo/view/VolumePanel;->reorderSliders(I)V

    .line 1057
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1058
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 1064
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1065
    invoke-virtual {p0, v4, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1068
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 1069
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1070
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    .line 1074
    :cond_5
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 1075
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1077
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 1078
    return-void

    .line 1058
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1060
    :cond_6
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "OppoVolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1081
    sget-boolean v0, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoVolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1085
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1087
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v11, -0xc8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 864
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v1

    .line 866
    .local v1, index:I
    iput-boolean v10, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    .line 868
    sget-boolean v6, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_0

    .line 869
    const-string v6, "OppoVolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v2

    .line 877
    .local v2, max:I
    sparse-switch p1, :sswitch_data_0

    .line 948
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 949
    .local v4, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v4, :cond_6

    .line 950
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6}, Landroid/widget/OppoSeekBar;->getMax()I

    move-result v6

    if-eq v6, v2, :cond_2

    .line 951
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/OppoSeekBar;->setMax(I)V

    .line 954
    :cond_2
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v1}, Landroid/widget/OppoSeekBar;->setProgress(I)V

    .line 955
    sget-boolean v6, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_3

    const-string v6, "OppoVolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShowVolumeChanged mActiveStreamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", streamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_3
    iget v6, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne p1, v6, :cond_4

    .line 958
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeProgress:Lcom/oppo/widget/OppoVolumeProgress;

    mul-int/lit8 v7, v1, 0x64

    div-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoVolumeProgress;->updateProgress(I)V

    .line 960
    :cond_4
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oppo_uniform_volume_settings_enabled"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 963
    .local v0, enabled:I
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq p1, v6, :cond_a

    if-eq p1, v11, :cond_a

    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 966
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v10}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 967
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v10}, Landroid/widget/OppoSeekBar;->setPressed(Z)V

    .line 972
    :goto_1
    iget v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v6, v9, :cond_5

    if-ne v0, v9, :cond_5

    .line 973
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    .line 977
    :cond_5
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->changeStreamIcon(Lcom/oppo/view/VolumePanel$StreamControl;)V

    .line 981
    .end local v0           #enabled:I
    :cond_6
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    .line 982
    if-ne p1, v11, :cond_b

    const/4 v5, -0x1

    .line 984
    .local v5, stream:I
    :goto_2
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 985
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lcom/oppo/view/VolumePanel;->mView:Landroid/view/View;

    iget-object v8, p0, Lcom/oppo/view/VolumePanel;->lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 993
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mOppoVolumeDisk:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 994
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 998
    .end local v5           #stream:I
    :cond_7
    if-eq p1, v11, :cond_8

    and-int/lit8 v6, p2, 0x10

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 1002
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {p0, v6, v7, v8}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1004
    :cond_8
    return-void

    .line 881
    .end local v4           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 883
    .local v3, ringuri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 884
    iput-boolean v9, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 891
    .end local v3           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v6

    and-int/lit16 v6, v6, 0x380

    if-eqz v6, :cond_9

    .line 895
    const v6, 0xc08045f

    const v7, 0xc080461

    invoke-direct {p0, v6, v7}, Lcom/oppo/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 897
    :cond_9
    const v6, 0xc08049b

    const v7, 0xc080493

    invoke-direct {p0, v6, v7}, Lcom/oppo/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 913
    :sswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 914
    add-int/lit8 v2, v2, 0x1

    .line 915
    goto/16 :goto_0

    .line 923
    :sswitch_4
    iget-object v6, p0, Lcom/oppo/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 925
    .restart local v3       #ringuri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 926
    iput-boolean v9, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 937
    .end local v3           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 938
    add-int/lit8 v2, v2, 0x1

    .line 939
    goto/16 :goto_0

    .line 943
    :sswitch_6
    sget-boolean v6, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "OppoVolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showing remote volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " over "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 969
    .restart local v0       #enabled:I
    .restart local v4       #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_a
    iget-object v6, v4, Lcom/oppo/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/OppoSeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v0           #enabled:I
    :cond_b
    move v5, p1

    .line 982
    goto/16 :goto_2

    .line 877
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1098
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "OppoVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1100
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1101
    sget-object v3, Lcom/oppo/view/VolumePanel;->STREAMS:[Lcom/oppo/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1102
    .local v2, streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    iget v3, v2, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1103
    iput-boolean v1, v2, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    .line 1104
    if-nez v1, :cond_1

    iget v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1105
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    .end local v2           #streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1099
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1100
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1098
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lcom/oppo/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1368
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1025
    monitor-enter p0

    .line 1026
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1027
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1028
    iget-object v3, p0, Lcom/oppo/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1029
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1030
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1027
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1033
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1034
    return-void

    .line 1033
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 1371
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1372
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/oppo/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1373
    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 1378
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1379
    invoke-direct {p0, v3}, Lcom/oppo/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1382
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 807
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    const/4 v0, 0x1

    .line 812
    .local v0, update:Z
    if-eqz p1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 814
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    if-ne v4, v1, :cond_2

    .line 815
    const/4 v0, 0x0

    .line 817
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mFromUser:Z

    .line 821
    :cond_3
    if-eqz v0, :cond_5

    .line 822
    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 824
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 831
    :cond_4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_5
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/oppo/view/VolumePanel;->mRingIsSilent:Z

    if-nez v1, :cond_6

    .line 835
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 836
    invoke-virtual {p0, v5, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 839
    :cond_6
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_7

    .line 840
    invoke-virtual {p0, v5}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 841
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 842
    invoke-virtual {p0}, Lcom/oppo/view/VolumePanel;->onStopSounds()V

    .line 845
    :cond_7
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 846
    invoke-virtual {p0, v4}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 848
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->resetTimeout()V

    .line 849
    return-void

    .line 825
    :cond_8
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    .line 826
    :try_start_1
    iget v1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq v1, p1, :cond_9

    .line 827
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel;->reorderSliders(I)V

    .line 829
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/VolumePanel;->onShowVolumeChanged(II)V

    goto :goto_0

    .line 831
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .parameter "flags"

    .prologue
    const/16 v1, 0xb

    .line 796
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    :goto_0
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 770
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 792
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/oppo/view/VolumePanel;->postMuteChanged(II)V

    .line 793
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 777
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/oppo/view/VolumePanel;->postVolumeChanged(II)V

    .line 778
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 782
    :cond_0
    monitor-enter p0

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    .line 786
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 788
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 754
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 756
    return-void

    .line 754
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 743
    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    :goto_0
    return-void

    .line 744
    :cond_0
    monitor-enter p0

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    .line 748
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 750
    invoke-virtual {p0, v1, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 722
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoVolumePanel"

    const-string v2, "postVolumeChanged() ======================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    sget-boolean v1, Lcom/oppo/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postVolumeChanged() streamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/oppo/view/VolumePanel;->mActiveStreamType:I

    if-eq p1, v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamControl;

    .line 728
    .local v0, sc:Lcom/oppo/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/oppo/view/VolumePanel$StreamControl;->show:Z

    if-nez v1, :cond_3

    .line 740
    .end local v0           #sc:Lcom/oppo/view/VolumePanel$StreamControl;
    :cond_2
    :goto_0
    return-void

    .line 733
    :cond_3
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 735
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->createSliders()V

    .line 737
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/view/VolumePanel;->removeMessages(I)V

    .line 739
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/oppo/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/oppo/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 483
    invoke-direct {p0}, Lcom/oppo/view/VolumePanel;->updateStates()V

    .line 484
    return-void
.end method
