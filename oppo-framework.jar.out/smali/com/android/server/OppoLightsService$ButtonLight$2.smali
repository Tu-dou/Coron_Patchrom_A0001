.class Lcom/android/server/OppoLightsService$ButtonLight$2;
.super Landroid/content/BroadcastReceiver;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoLightsService$ButtonLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OppoLightsService$ButtonLight;


# direct methods
.method constructor <init>(Lcom/android/server/OppoLightsService$ButtonLight;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/OppoLightsService$ButtonLight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/OppoLightsService$ButtonLight;

    #calls: Lcom/android/server/OppoLightsService$ButtonLight;->turnButtonLightOff()V
    invoke-static {v0}, Lcom/android/server/OppoLightsService$ButtonLight;->access$100(Lcom/android/server/OppoLightsService$ButtonLight;)V

    .line 108
    return-void
.end method
