.class public Lcom/oppo/app/OppoAppProtectController;
.super Landroid/app/IActivityController$Stub;
.source "OppoAppProtectController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .parameter "intent"
    .parameter "pkg"

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 1
    .parameter "processName"
    .parameter "pid"
    .parameter "shortMsg"
    .parameter "longMsg"
    .parameter "timeMillis"
    .parameter "stackTrace"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "processName"
    .parameter "pid"
    .parameter "annotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "processName"
    .parameter "pid"
    .parameter "processStats"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    const/4 v0, -0x1

    return v0
.end method
