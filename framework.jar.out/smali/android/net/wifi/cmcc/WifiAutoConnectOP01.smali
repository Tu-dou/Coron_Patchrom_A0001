.class public Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
.super Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;
.source "WifiAutoConnectOP01.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAMEWORK_SCAN_INTERVAL_MS:I = 0x3a98

.field private static final SUSPEND_NOTIFICATION_DURATION:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "WifiAutoConnectOP01"

.field private static final WIFISETTINGS_CLASSNAME:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"


# instance fields
.field private mCellToWiFiPolicy:I

.field private mConnectPolicy:I

.field private mConnectTypeObserver:Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

.field private mSuspendNotificationTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;-><init>(Landroid/content/Context;)V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    .line 49
    iput v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    .line 50
    iput v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendUpdateSettingsBroadcast()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    return-wide p1
.end method

.method private sendEnableAllNetworksBroadcast()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method private sendUpdateSettingsBroadcast()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    return-void
.end method


# virtual methods
.method public defaultFrameworkScanIntervalMs()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x3a98

    return v0
.end method

.method public getApDefaultSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, "MTK Athens15"

    return-object v0
.end method

.method public hasConnectableAP()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 289
    const-string v0, "WifiAutoConnectOP01"

    const-string v1, "Scan for checking connectable AP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCustomizedAutoConnect()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;->init()V

    .line 58
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    .line 60
    new-instance v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;-><init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectTypeObserver:Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

    .line 61
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;-><init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public isWifiConnecting(ILjava/util/List;)Z
    .locals 24
    .parameter "connectingNetworkId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, disconnectNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 127
    .local v14, isConnecting:Z
    const/4 v3, 0x0

    .line 128
    .local v3, autoConnect:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "wifi_select_ssid_type"

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 131
    .local v17, reselectType:I
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isWifiConnecting, mConnectPolicy:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mCellToWiFiPolicy:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", connectingNetworkId:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reselectType:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 136
    .local v5, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 137
    .local v12, info:Landroid/net/NetworkInfo;
    if-nez v12, :cond_3

    .line 138
    const-string v20, "WifiAutoConnectOP01"

    const-string v21, "No active network."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    const/4 v9, 0x0

    .line 143
    .local v9, highestPriorityNetworkSSID:Ljava/lang/String;
    const/4 v7, -0x1

    .line 144
    .local v7, highestPriority:I
    const/4 v8, -0x1

    .line 145
    .local v8, highestPriorityNetworkId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v16

    .line 146
    .local v16, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v18

    .line 147
    .local v18, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v16, :cond_4

    if-eqz v18, :cond_4

    .line 148
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 149
    .local v15, network:Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    .line 150
    .local v19, scanresult:Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 153
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v7, :cond_2

    .line 154
    iget v7, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 155
    iget v8, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 156
    iget-object v9, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 158
    :cond_2
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 159
    const/4 v14, 0x1

    goto :goto_1

    .line 140
    .end local v7           #highestPriority:I
    .end local v8           #highestPriorityNetworkId:I
    .end local v9           #highestPriorityNetworkSSID:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v16           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v18           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v19           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_3
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active network type:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .restart local v7       #highestPriority:I
    .restart local v8       #highestPriorityNetworkId:I
    .restart local v9       #highestPriorityNetworkSSID:Ljava/lang/String;
    .restart local v16       #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v18       #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "highestPriorityNetworkId:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", highestPriorityNetworkSSID:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", currentTimeMillis:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mSuspendNotificationTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-nez v14, :cond_5

    .line 171
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    if-nez v20, :cond_f

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 174
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/32 v22, 0x36ee80

    cmp-long v20, v20, v22

    if-lez v20, :cond_5

    .line 176
    const-string v20, "WifiAutoConnectOP01"

    const-string/jumbo v21, "send WIFI_NOTIFICATION_ACTION 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v13, intent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const-string/jumbo v20, "ssid"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v20, "network_id"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v13           #intent:Landroid/content/Intent;
    :cond_5
    :goto_2
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isWifiConnecting, isConnecting:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", autoConnect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-nez v14, :cond_6

    if-eqz v3, :cond_13

    :cond_6
    const/16 v20, 0x1

    :goto_3
    return v20

    .line 183
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    if-nez v17, :cond_5

    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v7, -0x1

    .line 192
    const/4 v8, -0x1

    .line 193
    if-eqz v16, :cond_a

    if-eqz v18, :cond_a

    .line 194
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 195
    .restart local v15       #network:Landroid/net/wifi/WifiConfiguration;
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 196
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    .line 197
    .restart local v19       #scanresult:Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 200
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v7, :cond_9

    .line 201
    iget v7, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 202
    iget v8, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 203
    iget-object v9, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_4

    .line 210
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v19           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_a
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "highestPriorityNetworkId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 214
    const-string v20, "WifiAutoConnectOP01"

    const-string v21, "Enable all networks for mobile is connected."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendEnableAllNetworksBroadcast()V

    .line 216
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 220
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 221
    .local v2, am:Landroid/app/ActivityManager;
    const/4 v6, 0x0

    .line 222
    .local v6, cn:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 223
    .local v4, classname:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 224
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 226
    :cond_c
    if-eqz v6, :cond_e

    .line 227
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 228
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Class Name:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    if-eqz v4, :cond_d

    const-string v20, "com.android.settings.Settings$WifiSettingsActivity"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 234
    :cond_d
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/32 v22, 0x36ee80

    cmp-long v20, v20, v22

    if-lez v20, :cond_5

    .line 236
    const-string v20, "WifiAutoConnectOP01"

    const-string/jumbo v21, "send WIFI_NOTIFICATION_ACTION 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v13       #intent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const-string/jumbo v20, "ssid"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v20, "network_id"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 230
    .end local v13           #intent:Landroid/content/Intent;
    :cond_e
    const-string v20, "WifiAutoConnectOP01"

    const-string v21, "ComponentName is null!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 246
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v4           #classname:Ljava/lang/String;
    .end local v6           #cn:Landroid/content/ComponentName;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    if-nez v17, :cond_5

    .line 253
    const/4 v9, 0x0

    .line 254
    const/4 v7, -0x1

    .line 255
    const/4 v8, -0x1

    .line 256
    if-eqz v16, :cond_12

    if-eqz v18, :cond_12

    .line 257
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 258
    .restart local v15       #network:Landroid/net/wifi/WifiConfiguration;
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 259
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    .line 260
    .restart local v19       #scanresult:Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 263
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v7, :cond_11

    .line 264
    iget v7, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 265
    iget v8, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 266
    iget-object v9, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 273
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v19           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_12
    const-string v20, "WifiAutoConnectOP01"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "highestPriorityNetworkId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 276
    const-string v20, "WifiAutoConnectOP01"

    const-string v21, "Enable all networks for mobile is not connected."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendEnableAllNetworksBroadcast()V

    .line 278
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 284
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_3
.end method

.method public shouldAutoConnect()Z
    .locals 5

    .prologue
    .line 102
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 104
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 105
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "No active network."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    if-nez v2, :cond_2

    .line 117
    :cond_0
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "Should auto connect."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v2, 0x1

    .line 121
    :goto_1
    return v2

    .line 107
    :cond_1
    const-string v2, "WifiAutoConnectOP01"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active network type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_2
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "Shouldn\'t auto connect."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public shouldEnableAllNetworksForCompletion()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_connect_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, connectPolicy:I
    iget-object v3, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_connect_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, cellToWiFiPolicy:I
    const-string v3, "WifiAutoConnectOP01"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldEnableAllNetworksForCompletion, connectPolicy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellToWiFiPolicy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public shouldEnableAllNetworksForScreenOn()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNotification()V
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    .line 299
    const-string v0, "WifiAutoConnectOP01"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspendNotification, mSuspendNotificationTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method
