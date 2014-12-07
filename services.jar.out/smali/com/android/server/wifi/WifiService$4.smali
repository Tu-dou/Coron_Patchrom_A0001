.class Lcom/android/server/wifi/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    #calls: Lcom/android/server/wifi/WifiService;->autoConnectEnableAllNetworks()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1800(Lcom/android/server/wifi/WifiService;)V

    .line 1758
    return-void
.end method
