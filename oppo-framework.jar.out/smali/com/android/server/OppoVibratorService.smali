.class public Lcom/android/server/OppoVibratorService;
.super Lcom/android/server/VibratorService;
.source "OppoVibratorService.java"

# interfaces
.implements Landroid/os/IOppoExVibrator;


# static fields
.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IOppoExVibrator"

.field private static final TAG:Ljava/lang/String; = "OppoVibratorService"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/OppoVibratorService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OppoVibratorService;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/android/server/OppoVibratorService;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 50
    :pswitch_0
    const-string v1, "android.os.IOppoExVibrator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, token:Landroid/os/IBinder;
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
    .end packed-switch
.end method

.method public vibrateNotCheck(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 6
    .parameter "uid"
    .parameter "packageName"
    .parameter "token"

    .prologue
    .line 62
    sget-object v3, Lcom/android/server/OppoVibratorService;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/OppoVibratorService;->vibratePatternNotCheck(ILjava/lang/String;[JILandroid/os/IBinder;)V

    .line 63
    return-void
.end method

.method public vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V
    .locals 2
    .parameter "uid"
    .parameter "packageName"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/OppoVibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/server/VibratorService;->vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V

    .line 75
    return-void
.end method

.method public vibratePatternNotCheck(ILjava/lang/String;[JILandroid/os/IBinder;)V
    .locals 0
    .parameter "uid"
    .parameter "packageName"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Lcom/android/server/VibratorService;->vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V

    .line 67
    return-void
.end method
