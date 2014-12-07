.class Lcom/android/server/power/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1507
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const v7, 0x4604d000

    const v6, 0x44898000

    const/high16 v5, 0x43fa

    .line 1480
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1487
    .local v1, time:J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 1490
    .local v0, lux:F
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 1502
    .end local v0           #lux:F
    .end local v1           #time:J
    :cond_0
    :goto_0
    return-void

    .line 1491
    .restart local v0       #lux:F
    .restart local v1       #time:J
    :cond_1
    const/high16 v3, 0x41a0

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/high16 v4, 0x4220

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1496
    :goto_1
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$900()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1497
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PowerMS L-Sensor Changed out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;JF)V

    goto :goto_0

    .line 1492
    :cond_3
    cmpg-float v3, v0, v5

    if-gtz v3, :cond_4

    const/high16 v0, 0x4120

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/high16 v4, 0x4120

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const v4, 0x44098000

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1

    .line 1493
    :cond_4
    cmpg-float v3, v0, v6

    if-gtz v3, :cond_5

    const/high16 v0, 0x43fa

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v3, v5}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/high16 v4, 0x4496

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1

    .line 1494
    :cond_5
    cmpg-float v3, v0, v7

    if-gtz v3, :cond_6

    const v0, 0x44898000

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v3, v6}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const v4, 0x460ca000

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1

    .line 1495
    :cond_6
    const v0, 0x4604d000

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v3, v7}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const v4, 0x469c4000

    #setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v3, v4}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1
.end method
