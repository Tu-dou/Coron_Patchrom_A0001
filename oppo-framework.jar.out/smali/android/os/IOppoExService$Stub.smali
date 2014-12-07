.class public abstract Landroid/os/IOppoExService$Stub;
.super Landroid/os/Binder;
.source "IOppoExService.java"

# interfaces
.implements Landroid/os/IOppoExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOppoExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOppoExService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IOppoExService"

.field static final TRANSACTION_dealScreenoffGesture:I = 0x7

.field static final TRANSACTION_getGestureState:I = 0x9

.field static final TRANSACTION_pauseExInputEvent:I = 0x3

.field static final TRANSACTION_registerInputEvent:I = 0x1

.field static final TRANSACTION_registerScreenoffGesture:I = 0x5

.field static final TRANSACTION_resumeExInputEvent:I = 0x4

.field static final TRANSACTION_setGestureState:I = 0x8

.field static final TRANSACTION_unregisterInputEvent:I = 0x2

.field static final TRANSACTION_unregisterScreenoffGesture:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.IOppoExService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOppoExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.os.IOppoExService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOppoExService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/os/IOppoExService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/os/IOppoExService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IOppoExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IOppoExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExInputCallBack;

    move-result-object v0

    .line 50
    .local v0, _arg0:Landroid/os/IOppoExInputCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->registerInputEvent(Landroid/os/IOppoExInputCallBack;)Z

    move-result v2

    .line 51
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/os/IOppoExInputCallBack;
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IOppoExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExInputCallBack;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Landroid/os/IOppoExInputCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->unregisterInputEvent(Landroid/os/IOppoExInputCallBack;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/os/IOppoExInputCallBack;
    :sswitch_3
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/IOppoExService$Stub;->pauseExInputEvent()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/IOppoExService$Stub;->resumeExInputEvent()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IOppoGestureCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoGestureCallBack;

    move-result-object v0

    .line 83
    .local v0, _arg0:Landroid/os/IOppoGestureCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->registerScreenoffGesture(Landroid/os/IOppoGestureCallBack;)Z

    move-result v2

    .line 84
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Landroid/os/IOppoGestureCallBack;
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IOppoGestureCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoGestureCallBack;

    move-result-object v0

    .line 93
    .restart local v0       #_arg0:Landroid/os/IOppoGestureCallBack;
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->unregisterScreenoffGesture(Landroid/os/IOppoGestureCallBack;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:Landroid/os/IOppoGestureCallBack;
    :sswitch_7
    const-string v3, "android.os.IOppoExService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->dealScreenoffGesture(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 108
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 113
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/os/IOppoExService$Stub;->setGestureState(IZ)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_2
    move v1, v3

    .line 112
    goto :goto_1

    .line 119
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v5, "android.os.IOppoExService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IOppoExService$Stub;->getGestureState(I)Z

    move-result v2

    .line 123
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
