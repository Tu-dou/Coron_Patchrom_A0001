.class public Lcom/oppo/rutils/RUtils;
.super Ljava/lang/Object;
.source "RUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mActivitymanager:Landroid/app/IActivityManager;

.field private static mOppoAm:Landroid/app/OppoActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "RUtils"

    sput-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 38
    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 43
    const-string v0, "rutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v1, "Load RUtils!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native NativeCustPartConfigItemClrFlagOps(ZI)I
.end method

.method public static native NativeCustPartConfigItemUsbOps(ZII)I
.end method

.method public static native NativeCustPartCustPartClearRebootNumber()I
.end method

.method public static native NativeCustPartCustPartGetMcpId()Ljava/lang/String;
.end method

.method public static native NativeCustPartCustPartGetRebootNumber()I
.end method

.method public static native NativeCustPartCustPartGetRebootReason()I
.end method

.method public static native NativeGetPidByName(Ljava/lang/String;)I
.end method

.method public static native NativeOppoRutilsTestValue()I
.end method

.method public static native NativeRUtilsChmod(Ljava/lang/String;I)I
.end method

.method public static native NativeRUtilsCmd(Ljava/lang/String;)I
.end method

.method public static native NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static RUtilsChmod(Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "mod"

    .prologue
    const/4 v0, -0x1

    .line 95
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    .line 100
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Permission Denied ~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeRUtilsChmod(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCmd(Ljava/lang/String;)I
    .locals 1
    .parameter "cmd"

    .prologue
    .line 110
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeRUtilsCmd(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartConfigItemClrFlagOps(ZI)I
    .locals 1
    .parameter "read"
    .parameter "source"

    .prologue
    .line 158
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeCustPartConfigItemClrFlagOps(ZI)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartConfigItemUsbOps(ZII)I
    .locals 1
    .parameter "read"
    .parameter "value"
    .parameter "voter"

    .prologue
    .line 151
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, -0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oppo/rutils/RUtils;->NativeCustPartConfigItemUsbOps(ZII)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartClearRebootNumber()I
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, -0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartClearRebootNumber()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartGetMcpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, ""

    .line 168
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartGetMcpId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartGetRebootNumber()I
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, -0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartGetRebootNumber()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartGetRebootReason()I
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, -0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartGetRebootReason()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsGetPidByName(Ljava/lang/String;)I
    .locals 1
    .parameter "processName"

    .prologue
    .line 118
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeGetPidByName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsSetSystemPropertiesString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, -0x1

    .line 136
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsSetSystemPropertiesStringInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, -0x1

    .line 125
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    if-eqz p0, :cond_0

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppo/rutils/RUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static isRUtilsEnable()Z
    .locals 3

    .prologue
    .line 48
    const-string v1, "oppo.service.rutils.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, value:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "isRUtilsEnable oppo.service.rutils.enable = 1!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    .line 53
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "isRUtilsEnable oppo.service.rutils.enable = 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static oppoRutilsTestValue()I
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, -0x1

    .line 199
    :goto_0
    return v0

    .line 198
    :cond_0
    sget-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v1, "RUtils oppoRutilsTestValue enter!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeOppoRutilsTestValue()I

    move-result v0

    goto :goto_0
.end method

.method private static setRutilsEnable()V
    .locals 4

    .prologue
    .line 58
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "mActivitymanager == null getService ACTIVITY_SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 62
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 65
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "mActivitymanager != null setRutilsEnable!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    const-string v2, "oppo.service.rutils.enable"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/app/OppoActivityManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 69
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0       #e:Landroid/os/RemoteException;
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static waitForRUtilsEnable()Z
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcom/oppo/rutils/RUtils;->isRUtilsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "waitForRUtilsEnable OK!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x1

    .line 91
    :goto_1
    return v1

    .line 84
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRutilsEnable times == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/oppo/rutils/RUtils;->setRutilsEnable()V

    .line 88
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "waitForRUtilsEnable Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    goto :goto_1
.end method
