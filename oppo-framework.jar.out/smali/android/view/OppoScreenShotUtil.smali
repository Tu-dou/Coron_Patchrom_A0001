.class public Landroid/view/OppoScreenShotUtil;
.super Ljava/lang/Object;
.source "OppoScreenShotUtil.java"


# static fields
.field private static final PERSIST_KEY:Ljava/lang/String; = "persist.sys.oppo.screenshot"

.field private static final TAG:Ljava/lang/String; = "OppoScreenShotUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPauseDeliverPointer()Z
    .locals 2

    .prologue
    .line 53
    const-string v0, "persist.sys.oppo.screenshot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static dealPausedDeliverPointer(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 57
    const-string v1, "OppoScreenShotUtil"

    const-string v2, "dealPausedDeliverPointer ------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz p1, :cond_0

    .line 59
    move-object v0, p0

    .line 60
    .local v0, newEvent:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    .line 63
    .end local v0           #newEvent:Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public static pauseDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "persist.sys.oppo.screenshot"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static resumeDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "persist.sys.oppo.screenshot"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
