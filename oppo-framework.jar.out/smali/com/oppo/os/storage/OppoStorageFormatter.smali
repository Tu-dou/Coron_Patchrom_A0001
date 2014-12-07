.class public Lcom/oppo/os/storage/OppoStorageFormatter;
.super Landroid/app/Service;
.source "OppoStorageFormatter.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final MSG_FORAMT_DATA:I = 0x3

.field private static final MSG_FORAMT_EXTERNAL:I = 0x2

.field private static final MSG_FORAMT_INTERNAL:I = 0x1

.field public static final OPPO_FORMAT_ACTION_EXTRA:Ljava/lang/String; = "com.oppo.storage.format.ACTION_EXTRA"

.field public static final OPPO_FORMAT_DATA:I = 0x4

.field public static final OPPO_FORMAT_EXTERNAL_SD:I = 0x2

.field public static final OPPO_FORMAT_INTERNAL_SD:I = 0x1

.field public static final OPPO_FORMAT_NULL:I = 0x0

.field private static final OPPO_FORMAT_TIMESPACE:I = 0x2710

.field private static final OPPO_FORMAT_TRIES:I = 0x5

.field static final TAG:Ljava/lang/String; = "OppoStorageFormatter"


# instance fields
.field private externalSdDir:Ljava/lang/String;

.field private internalSdDir:Ljava/lang/String;

.field private mFormatData_Require:Z

.field private mFormatExter:I

.field private mFormatExternalSD_OK:Z

.field private mFormatExternalSD_Require:Z

.field private mFormatExternalSD_Tries:I

.field private mFormatInter:I

.field private mFormatInternalSD_OK:Z

.field private mFormatInternalSD_Require:Z

.field private mFormatInternalSD_Tries:I

.field private mFormatParam:I

.field private mHandler:Landroid/os/Handler;

.field private mHasSD:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "oppo"

    const-class v2, Lcom/oppo/os/storage/OppoStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/os/storage/OppoStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->internalSdDir:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->externalSdDir:Ljava/lang/String;

    .line 59
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 60
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 61
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 63
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 64
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 81
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    .line 83
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 84
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 85
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z

    .line 86
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 87
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 90
    iput-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 94
    new-instance v0, Lcom/oppo/os/storage/OppoStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/oppo/os/storage/OppoStorageFormatter$1;-><init>(Lcom/oppo/os/storage/OppoStorageFormatter;)V

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/oppo/os/storage/OppoStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/oppo/os/storage/OppoStorageFormatter$2;-><init>(Lcom/oppo/os/storage/OppoStorageFormatter;)V

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/os/storage/OppoStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    return v0
.end method

.method static synthetic access$208(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    return v0
.end method

.method static synthetic access$708(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    return v0
.end method


# virtual methods
.method doOppoFormat()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    if-lez v0, :cond_0

    .line 203
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    return-void
.end method

.method formatExternalSD(I)V
    .locals 11
    .parameter "formatNo"

    .prologue
    const/4 v10, 0x1

    .line 261
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/oppo/os/storage/OppoStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 264
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    .line 265
    .local v5, temp:I
    const-string v7, "OppoStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in formatExSd begin formatNo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 267
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/oppo/os/storage/OppoStorageFormatter;->isMounted(Landroid/os/storage/StorageVolume;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 268
    add-int/lit8 v5, v5, 0x1

    .line 269
    if-ne v5, p1, :cond_2

    .line 271
    const-string v7, "storage_volume"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v2}, Lcom/oppo/os/storage/OppoStorageFormatter;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    const-string v7, "OppoStorageFormatter"

    const-string v8, "in formatExSd start extenalformatter "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 280
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    if-gt p1, v10, :cond_1

    .line 281
    iput-boolean v10, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 282
    const-string v7, "OppoStorageFormatter"

    const-string v8, "in formatExSd end format ok"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    return-void

    .line 266
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method formatInternalSD(I)V
    .locals 10
    .parameter "formatNo"

    .prologue
    const/4 v9, 0x1

    .line 238
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/oppo/os/storage/OppoStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 241
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    .line 242
    .local v5, temp:I
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 243
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 244
    add-int/lit8 v5, v5, 0x1

    .line 245
    if-ne v5, p1, :cond_2

    .line 246
    const-string v7, "storage_volume"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v2}, Lcom/oppo/os/storage/OppoStorageFormatter;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    iget v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 254
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    if-gt p1, v9, :cond_1

    .line 255
    iput-boolean v9, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 258
    :cond_1
    return-void

    .line 242
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 288
    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 289
    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 290
    iget-object v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 292
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 293
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/oppo/os/storage/OppoStorageFormatter;->isMounted(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    iget v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 292
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    iget v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    goto :goto_1

    .line 299
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    return-void
.end method

.method isMounted(Landroid/os/storage/StorageVolume;)Z
    .locals 3
    .parameter "volume"

    .prologue
    .line 302
    const-string v0, "mounted"

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 149
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 151
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 154
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 212
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 213
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 215
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 216
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 218
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 219
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 221
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 222
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 224
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 229
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 230
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 162
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 163
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 165
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 166
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 168
    iput v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 169
    iput v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 171
    invoke-virtual {p0}, Lcom/oppo/os/storage/OppoStorageFormatter;->init()V

    .line 172
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFormatInter sd count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFormatExter sd count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "com.oppo.storage.format.ACTION_EXTRA"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    .line 176
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFormatParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v0, v0, 0x1

    if-ne v4, v0, :cond_0

    .line 179
    iput-boolean v4, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 182
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1

    .line 183
    iput-boolean v4, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 186
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_2

    .line 187
    iput-boolean v4, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/storage/OppoStorageFormatter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.support.single.partition"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 192
    const-string v0, "persist.sys.wipemedia"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    const-string v0, "OppoStorageFormatter"

    const-string v1, "only format sd part, for oppo.support.single.partition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/os/storage/OppoStorageFormatter;->doOppoFormat()V

    .line 198
    const/4 v0, 0x3

    return v0
.end method
