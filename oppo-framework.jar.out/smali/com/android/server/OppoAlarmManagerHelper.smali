.class public Lcom/android/server/OppoAlarmManagerHelper;
.super Ljava/lang/Object;
.source "OppoAlarmManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;
    }
.end annotation


# static fields
.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_WHITE_LIST:Landroid/net/Uri; = null

.field private static DEBUG:Z = false

.field private static final FILTER_NAME:Ljava/lang/String; = "alarm_filter_packages"

.field private static final INEXACT_ALARM_FEATURE_NAME:Ljava/lang/String; = "oppo.inexact.alarm"

.field private static final TAG:Ljava/lang/String; = "OppoAlarmManagerHelper"

.field private static final XML_NAME:Ljava/lang/String; = "system/etc/alarm_filter_packages.xml"

.field private static filtrateAlarmStr:Ljava/lang/String;

.field private static mAlarm:Lcom/android/server/AlarmManagerService;

.field private static mContext:Landroid/content/Context;

.field private static mHaveAlarmFeature:Z

.field private static final mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPkgWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoveFilterPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUidWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    .line 54
    sput-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->mHaveAlarmFeature:Z

    .line 59
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/server/OppoAlarmManagerHelper;->getDataFromProvider(Landroid/content/Context;)V

    return-void
.end method

.method private static checkPackage(Landroid/content/Context;)Z
    .locals 15
    .parameter "context"

    .prologue
    .line 198
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 199
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 200
    .local v10, pkgWhite:Ljava/lang/String;
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pkg in mPkgWhiteList =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v10           #pkgWhite:Ljava/lang/String;
    :cond_0
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    .local v4, keyWhite:Ljava/lang/String;
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key in mKeyList == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #keyWhite:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 207
    .local v11, uid:I
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 208
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, packages:[Ljava/lang/String;
    if-nez v7, :cond_2

    .line 210
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v12, 0x1

    .line 236
    :goto_2
    return v12

    .line 213
    :cond_2
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v8, v0, v2

    .line 214
    .local v8, pkg:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/OppoAlarmManagerHelper;->inPackageNameWhiteList(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 215
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 216
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pkg is inPackageNameWhiteList! using exact alarm!!!   pkg == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3
    const/4 v12, 0x1

    goto :goto_2

    .line 221
    :cond_4
    sget-object v12, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2           #i$:I
    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 223
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_6

    .line 224
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Packagename match key! using exact alarm!!!  pkg == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_6
    const/4 v12, 0x1

    goto :goto_2

    .line 213
    .end local v3           #key:Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_3

    .line 231
    .end local v8           #pkg:Ljava/lang/String;
    :cond_8
    sget-boolean v12, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v12, :cond_9

    .line 232
    move-object v0, v7

    array-length v5, v0

    const/4 v1, 0x0

    .end local v2           #i$:I
    .restart local v1       #i$:I
    :goto_4
    if-ge v1, v5, :cond_a

    aget-object v9, v0, v1

    .line 233
    .local v9, pkg1:Ljava/lang/String;
    const-string v12, "OppoAlarmManagerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This package use inexact alarm !!!  pkg1 == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1           #i$:I
    .end local v9           #pkg1:Ljava/lang/String;
    .restart local v2       #i$:I
    :cond_9
    move v1, v2

    .line 236
    .end local v2           #i$:I
    .restart local v1       #i$:I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method private static checkUid()Z
    .locals 6

    .prologue
    .line 176
    sget-boolean v3, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 177
    sget-object v3, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, uidWhite:Ljava/lang/String;
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid in mUidWhiteList =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v2           #uidWhite:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 182
    .local v1, uid:I
    invoke-static {v1}, Lcom/android/server/OppoAlarmManagerHelper;->inUidWhiteList(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    sget-boolean v3, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 184
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUid uid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is inUidWhiteList!  using exact alarm!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    const/4 v3, 0x1

    .line 191
    :goto_1
    return v3

    .line 188
    :cond_2
    sget-boolean v3, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 189
    const-string v3, "OppoAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uid use inexact alarm !!!  uid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getDataFromProvider(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 349
    const/4 v7, 0x0

    .line 350
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 351
    .local v6, configVersion:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "version"

    aput-object v0, v2, v1

    const-string v0, "xml"

    aput-object v0, v2, v3

    .line 353
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/OppoAlarmManagerHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    const-string v3, "filtername=\"alarm_filter_packages\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 357
    const-string v0, "version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 358
    .local v9, versioncolumnIndex:I
    const-string v0, "xml"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 359
    .local v10, xmlcolumnIndex:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 360
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 361
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    .line 362
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "OppoAlarmManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , The filtrateAlarmStr is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/OppoAlarmManagerHelper;->getWhiteList(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v9           #versioncolumnIndex:I
    .end local v10           #xmlcolumnIndex:I
    :goto_0
    if-eqz v7, :cond_1

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 376
    const/4 v7, 0x0

    .line 380
    :cond_1
    :goto_1
    return-void

    .line 368
    :cond_2
    :try_start_1
    const-string v0, "OppoAlarmManagerHelper"

    const-string v1, "The Filtrate alarm cursor is null,so get data from xml file in system/etc/alarm_filter_packages.xml !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OppoAlarmManagerHelper;->getWhiteList(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v8

    .line 372
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "OppoAlarmManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get Filtrate app data from provider,because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    if-eqz v7, :cond_1

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 376
    const/4 v7, 0x0

    goto :goto_1

    .line 374
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 376
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method public static getWhiteList(Z)V
    .locals 11
    .parameter "isFromdb"

    .prologue
    .line 264
    const/4 v6, 0x0

    .line 265
    .local v6, xmlReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 266
    .local v3, strReader:Ljava/io/StringReader;
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 267
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mUidWhiteList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 270
    :cond_0
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 271
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mPkgWhiteList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 274
    :cond_1
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 275
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mKeyList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 278
    :cond_2
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 279
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "mRemoveFilterPackagesList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 284
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez p0, :cond_7

    .line 285
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/alarm_filter_packages.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 288
    .local v5, xmlFile:Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 293
    .end local v6           #xmlReader:Ljava/io/FileReader;
    .local v7, xmlReader:Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v6, v7

    .line 300
    .end local v5           #xmlFile:Ljava/io/File;
    .end local v7           #xmlReader:Ljava/io/FileReader;
    .restart local v6       #xmlReader:Ljava/io/FileReader;
    :goto_0
    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 301
    .local v1, eventType:I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_f

    .line 302
    packed-switch v1, :pswitch_data_0

    .line 325
    :cond_4
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 289
    .end local v1           #eventType:I
    .restart local v5       #xmlFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "OppoAlarmManagerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 333
    if-eqz v6, :cond_5

    .line 334
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 336
    :cond_5
    if-eqz v3, :cond_6

    .line 337
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 343
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #xmlFile:Ljava/io/File;
    :cond_6
    :goto_3
    return-void

    .line 339
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #xmlFile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/IOException;
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #xmlFile:Ljava/io/File;
    :cond_7
    :try_start_5
    new-instance v4, Ljava/io/StringReader;

    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 296
    .end local v3           #strReader:Ljava/io/StringReader;
    .local v4, strReader:Ljava/io/StringReader;
    :try_start_6
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-object v3, v4

    .end local v4           #strReader:Ljava/io/StringReader;
    .restart local v3       #strReader:Ljava/io/StringReader;
    goto :goto_0

    .line 307
    .restart local v1       #eventType:I
    :pswitch_1
    :try_start_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UidWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 308
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 309
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 327
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 328
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_8
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 333
    if-eqz v6, :cond_8

    .line 334
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 336
    :cond_8
    if-eqz v3, :cond_6

    .line 337
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 339
    :catch_3
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/IOException;
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 310
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PkgWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 311
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 312
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 329
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v0

    .line 330
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_b
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 333
    if-eqz v6, :cond_a

    .line 334
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 336
    :cond_a
    if-eqz v3, :cond_6

    .line 337
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 339
    :catch_5
    move-exception v0

    .line 340
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 313
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FilterPackagesArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 314
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 315
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    .line 332
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    .line 333
    :goto_6
    if-eqz v6, :cond_c

    .line 334
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 336
    :cond_c
    if-eqz v3, :cond_d

    .line 337
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 341
    :cond_d
    :goto_7
    throw v8

    .line 316
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_e
    :try_start_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KeyArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 317
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 318
    sget-object v8, Lcom/android/server/OppoAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_2

    .line 333
    :cond_f
    if-eqz v6, :cond_10

    .line 334
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 336
    :cond_10
    if-eqz v3, :cond_6

    .line 337
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_3

    .line 339
    :catch_6
    move-exception v0

    .line 340
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "OppoAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 339
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .line 340
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "OppoAlarmManagerHelper"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #xmlReader:Ljava/io/FileReader;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #xmlFile:Ljava/io/File;
    .restart local v7       #xmlReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #xmlReader:Ljava/io/FileReader;
    .restart local v6       #xmlReader:Ljava/io/FileReader;
    goto :goto_6

    .end local v3           #strReader:Ljava/io/StringReader;
    .end local v5           #xmlFile:Ljava/io/File;
    .restart local v4       #strReader:Ljava/io/StringReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #strReader:Ljava/io/StringReader;
    .restart local v3       #strReader:Ljava/io/StringReader;
    goto :goto_6

    .line 329
    .end local v6           #xmlReader:Ljava/io/FileReader;
    .restart local v5       #xmlFile:Ljava/io/File;
    .restart local v7       #xmlReader:Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7           #xmlReader:Ljava/io/FileReader;
    .restart local v6       #xmlReader:Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v3           #strReader:Ljava/io/StringReader;
    .end local v5           #xmlFile:Ljava/io/File;
    .restart local v4       #strReader:Ljava/io/StringReader;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #strReader:Ljava/io/StringReader;
    .restart local v3       #strReader:Ljava/io/StringReader;
    goto/16 :goto_5

    .line 327
    .end local v6           #xmlReader:Ljava/io/FileReader;
    .restart local v5       #xmlFile:Ljava/io/File;
    .restart local v7       #xmlReader:Ljava/io/FileReader;
    :catch_a
    move-exception v0

    move-object v6, v7

    .end local v7           #xmlReader:Ljava/io/FileReader;
    .restart local v6       #xmlReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v3           #strReader:Ljava/io/StringReader;
    .end local v5           #xmlFile:Ljava/io/File;
    .restart local v4       #strReader:Ljava/io/StringReader;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4           #strReader:Ljava/io/StringReader;
    .restart local v3       #strReader:Ljava/io/StringReader;
    goto/16 :goto_4

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 244
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static inUidWhiteList(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 254
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "alarm"

    .prologue
    .line 91
    sput-object p0, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    .line 92
    sput-object p1, Lcom/android/server/OppoAlarmManagerHelper;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 93
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    .local v0, pms:Landroid/content/pm/PackageManager;
    const-string v2, "oppo.inexact.alarm"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->mHaveAlarmFeature:Z

    .line 95
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;

    invoke-direct {v2}, Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;-><init>()V

    const-string v3, "get_data_from_provider"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method public static isFilterRemovePackage(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"

    .prologue
    .line 386
    sget-boolean v2, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 387
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    .local v1, removePackage:Ljava/lang/String;
    const-string v2, "OppoAlarmManagerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackage in mRemoveFilterPackagesList =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #removePackage:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/server/OppoAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isNeedInexactAlarm()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->checkUid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    sget-object v1, Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/OppoAlarmManagerHelper;->checkPackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Z)V
    .locals 11
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "windowLength"
    .parameter "interval"
    .parameter "operation"
    .parameter "workSource"
    .parameter "debug"

    .prologue
    .line 101
    sput-boolean p9, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    .line 102
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->mHaveAlarmFeature:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_4

    .line 103
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "OppoAlarmManagerHelper"

    const-string v1, "windowLength == AlarmManager.WINDOW_EXACT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->isNeedInexactAlarm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "OppoAlarmManagerHelper"

    const-string v1, "Using  inexact alarm!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mAlarm:Lcom/android/server/AlarmManagerService;

    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    move v1, p0

    move-wide v2, p1

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_2
    sget-boolean v0, Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 113
    const-string v0, "OppoAlarmManagerHelper"

    const-string v1, "Using exact alarm!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_3
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mAlarm:Lcom/android/server/AlarmManagerService;

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move v1, p0

    move-wide v2, p1

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    goto :goto_0

    .line 118
    :cond_4
    sget-object v0, Lcom/android/server/OppoAlarmManagerHelper;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    goto :goto_0
.end method
