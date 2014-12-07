.class public Lcom/android/server/OppoLightsService$ButtonLight;
.super Lcom/android/server/LightsService$Light;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonLight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_DEFAULT:I = 0x64

.field private static final MESSAGE_TURN_LIGHT_OFF:I = 0x3e8

.field public static final MODE_ALWAYS_OFF:I = 0x2

.field public static final MODE_ALWAYS_ON:I = 0x1

.field public static final MODE_AUTO_SENSOR:I = 0x4

.field public static final MODE_AUTO_TIMEOUT:I = 0x3

.field public static final TIMEOUT_DEFAULT:J = 0x1770L


# instance fields
.field private mBrightnessMode:I

.field private mButtonLightMode:I

.field private mButtonLightTimeout:J

.field private mColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHasEnabled:Z

.field private mIsTurnOn:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/OppoLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/OppoLightsService;I)V
    .locals 4
    .parameter
    .parameter "nId"

    .prologue
    const/4 v3, 0x0

    .line 151
    iput-object p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->this$0:Lcom/android/server/OppoLightsService;

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    .line 81
    new-instance v2, Lcom/android/server/OppoLightsService$ButtonLight$1;

    invoke-direct {v2, p0}, Lcom/android/server/OppoLightsService$ButtonLight$1;-><init>(Lcom/android/server/OppoLightsService$ButtonLight;)V

    iput-object v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    .line 95
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mColor:I

    .line 96
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mMode:I

    .line 97
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOnMS:I

    .line 98
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOffMS:I

    .line 99
    iput v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mBrightnessMode:I

    .line 100
    iput-boolean v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHasEnabled:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mIsTurnOn:Z

    .line 104
    new-instance v2, Lcom/android/server/OppoLightsService$ButtonLight$2;

    invoke-direct {v2, p0}, Lcom/android/server/OppoLightsService$ButtonLight$2;-><init>(Lcom/android/server/OppoLightsService$ButtonLight;)V

    iput-object v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v1, Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;-><init>(Lcom/android/server/OppoLightsService$ButtonLight;Landroid/os/Handler;)V

    .line 155
    .local v1, observer:Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/OppoLightsService$ButtonLight$SettingsObserver;->observe()V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    #getter for: Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/OppoLightsService;->access$200(Lcom/android/server/OppoLightsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OppoLightsService;ILcom/android/server/OppoLightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/OppoLightsService$ButtonLight;-><init>(Lcom/android/server/OppoLightsService;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OppoLightsService$ButtonLight;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/OppoLightsService$ButtonLight;->turnButtonLightOff()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mBrightnessMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/OppoLightsService$ButtonLight;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightMode:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/OppoLightsService$ButtonLight;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightTimeout:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/OppoLightsService$ButtonLight;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHasEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOnMS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/OppoLightsService$ButtonLight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOffMS:I

    return v0
.end method

.method private turnButtonLightOff()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string v0, "OppoLightsService"

    const-string v2, "+++++++ turnButtonLightOff in"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 164
    invoke-super/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 165
    const-string v0, "OppoLightsService"

    const-string v1, "+++++++ turnButtonLightOff out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method setLightLocked(IIIII)V
    .locals 6
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHasEnabled:Z

    .line 176
    iget-object v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightMode:I

    packed-switch v0, :pswitch_data_0

    .line 200
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 203
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mColor:I

    .line 204
    iput p2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mMode:I

    .line 205
    iput p3, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOnMS:I

    .line 206
    iput p4, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mOffMS:I

    .line 207
    iput p5, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mBrightnessMode:I

    .line 208
    return-void

    .line 180
    :pswitch_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 181
    const-string v0, "OppoLightsService"

    const-string v1, "+++++++setLightLocked mButtonLightMode = MODE_ALWAYS_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 185
    invoke-super/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 186
    const-string v0, "OppoLightsService"

    const-string v1, "+++++++setLightLocked mButtonLightMode = MODE_ALWAYS_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :pswitch_3
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 191
    iget-object v0, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/OppoLightsService$ButtonLight;->mButtonLightTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    const-string v0, "OppoLightsService"

    const-string v1, "+++++++setLightLocked mButtonLightMode = MODE_AUTO_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
