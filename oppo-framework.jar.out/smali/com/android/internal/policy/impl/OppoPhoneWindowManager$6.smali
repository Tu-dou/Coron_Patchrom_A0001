.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1717
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 1702
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProximityListener.onSensorChanged values[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1704
    :try_start_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 1707
    .local v0, distance:F
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    const/high16 v4, 0x4000

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    .line 1710
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProximityListener.onSensorChanged active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1712
    monitor-exit v2

    .line 1713
    return-void

    .line 1712
    .end local v0           #distance:F
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method