.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private final mBatteryChargingARGB:I

.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private mBatteryLowHint:Z

.field private final mBatteryMediumARGB:I

.field private mChargingHint:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightHandler:Landroid/os/Handler;

.field private mNotificationLightStateDetector:Lcom/android/server/LightsService$LightStateDetector;

.field private mScreenOn:Z

.field private mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    const/4 v6, 0x1

    .line 834
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const v2, -0x1ffffa6

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryChargingARGB:I

    .line 806
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/server/BatteryService$SettingsObserver;

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

    .line 811
    new-instance v2, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 818
    new-instance v2, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 835
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 837
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 839
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 841
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 845
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "ONEPLUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 847
    const/16 v2, 0xbb8

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 864
    :goto_0
    new-instance v2, Lcom/android/server/LightsService$LightStateDetector;

    const/4 v3, 0x4

    invoke-direct {v2, p3, v3}, Lcom/android/server/LightsService$LightStateDetector;-><init>(Lcom/android/server/LightsService;I)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLightStateDetector:Lcom/android/server/LightsService$LightStateDetector;

    .line 865
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 866
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 871
    .local v1, handler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/BatteryService$Led$3;

    const-string v5, "oppo_breath_led_low_power"

    invoke-direct {v4, p0, v1, v5, p1}, Lcom/android/server/BatteryService$Led$3;-><init>(Lcom/android/server/BatteryService$Led;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/BatteryService;)V

    aput-object v4, v2, v3

    .line 880
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

    new-instance v3, Lcom/android/server/BatteryService$Led$4;

    const-string v4, "oppo_breath_led_charge"

    invoke-direct {v3, p0, v1, v4, p1}, Lcom/android/server/BatteryService$Led$4;-><init>(Lcom/android/server/BatteryService$Led;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/BatteryService;)V

    aput-object v3, v2, v6

    .line 889
    iput-boolean v6, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 891
    return-void

    .line 849
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #handler:Landroid/os/Handler;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 851
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    goto :goto_0
.end method

.method static synthetic access$402(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 790
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService$Led;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 790
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService$Led;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 790
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    return p1
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/16 v5, 0x64

    const/4 v6, 0x1

    .line 899
    const-string v2, "BatteryLed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mBatteryLowHint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mChargingHint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLightStateDetector:Lcom/android/server/LightsService$LightStateDetector;

    invoke-virtual {v2}, Lcom/android/server/LightsService$LightStateDetector;->getLightState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 916
    .local v0, level:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 917
    .local v1, status:I
    const-string v2, "BatteryLed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 946
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_4

    .line 952
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLightFlashing:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 954
    if-lt v0, v5, :cond_2

    .line 957
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 962
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 967
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const v3, -0x1ffffa6

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 975
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 977
    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    if-lt v0, v5, :cond_6

    .line 979
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto/16 :goto_0

    .line 981
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 983
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 987
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_0
.end method
