.class Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "BluetoothManagerService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
    note = "LiangJing.Fu@Plf.Framework 2014.09.09 modify for BPM"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoRemoteCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    .local p0, this:Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList;,"Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList<TE;>;"
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1445
    .local p0, this:Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList;,"Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 1446
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$OppoRemoteCallbackList;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService;->mCallbackPids:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    return-void
.end method
