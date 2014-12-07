.class public Lcom/android/server/am/OppoActivityManagerService;
.super Lcom/android/server/am/ActivityManagerService;
.source "OppoActivityManagerService.java"

# interfaces
.implements Landroid/app/IOppoActivityManager;
.implements Landroid/app/IOppoActivityManager$Service;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoActivityManagerService"


# instance fields
.field mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 38
    iput-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    return-void
.end method


# virtual methods
.method public checkPermissionForProc(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 6
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "token"
    .parameter "callback"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object v5, p5

    check-cast v5, Lcom/android/server/am/OppoPermissionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->checkPermissionForProc(Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)I

    move-result v0

    return v0
.end method

.method public getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 144
    .local v2, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 145
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v2           #top:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v1

    .line 147
    .restart local v2       #top:Lcom/android/server/am/ActivityRecord;
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, name:Landroid/content/ComponentName;
    goto :goto_0

    .line 151
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #top:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPermissionInterceptEnabled()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled()Z

    move-result v0

    return v0
.end method

.method public killPidForce(I)V
    .locals 1
    .parameter "pid"

    .prologue
    .line 157
    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 158
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 43
    iget-object v10, p0, Lcom/android/server/am/OppoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v10, :cond_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/OppoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    iget-object v10, p0, Lcom/android/server/am/OppoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v10}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 49
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 52
    :pswitch_0
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v8

    .line 55
    .local v8, watcher:Landroid/app/IActivityController;
    invoke-virtual {p0, v8}, Lcom/android/server/am/OppoActivityManagerService;->setSecureController(Landroid/app/IActivityController;)V

    goto :goto_0

    .line 60
    .end local v8           #watcher:Landroid/app/IActivityController;
    :pswitch_1
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, permission:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, choice:I
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/am/OppoActivityManagerService;->updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #choice:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #permission:Ljava/lang/String;
    :pswitch_2
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 72
    .local v1, enabled:Z
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoActivityManagerService;->setPermissionInterceptEnable(Z)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v1           #enabled:Z
    :pswitch_3
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/am/OppoActivityManagerService;->isPermissionInterceptEnabled()Z

    move-result v1

    .line 80
    .restart local v1       #enabled:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v1           #enabled:Z
    :pswitch_4
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, properties:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, value:Ljava/lang/String;
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/OppoActivityManagerService;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v6           #properties:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :pswitch_5
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/OppoActivityManagerService;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 97
    .local v2, name:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {v2, p3}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    goto :goto_0

    .line 102
    .end local v2           #name:Landroid/content/ComponentName;
    :pswitch_6
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    .local v5, pid:I
    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoActivityManagerService;->killPidForce(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setPermissionInterceptEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->setPermissionInterceptEnable(Z)V

    .line 128
    return-void
.end method

.method public setSecureController(Landroid/app/IActivityController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/OppoSecureProtectUtils;->setSecureControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V

    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "properties"
    .parameter "value"

    .prologue
    .line 135
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"
    .parameter "choice"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    return-void
.end method
