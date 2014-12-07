.class public Lcom/android/server/OppoLightsService;
.super Lcom/android/server/LightsService;
.source "OppoLightsService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jun.Zhang@Plf.Framework, add for button light"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoLightsService$ButtonLight;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoLightsService"


# instance fields
.field mCameraLightReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v1, Lcom/android/server/OppoLightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/OppoLightsService$1;-><init>(Lcom/android/server/OppoLightsService;)V

    iput-object v1, p0, Lcom/android/server/OppoLightsService;->mCameraLightReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Lcom/android/server/OppoLightsService$ButtonLight;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/OppoLightsService$ButtonLight;-><init>(Lcom/android/server/OppoLightsService;ILcom/android/server/OppoLightsService$1;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/OppoLightsService;->setLight(ILcom/android/server/LightsService$Light;)V

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.oppo.camera.OpenLight"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OppoLightsService;->mCameraLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OppoLightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method setLight(ILcom/android/server/LightsService$Light;)V
    .locals 1
    .parameter "id"
    .parameter "light"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/OppoLightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aput-object p2, v0, p1

    .line 62
    return-void
.end method
