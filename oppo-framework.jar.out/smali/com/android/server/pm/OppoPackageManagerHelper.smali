.class public Lcom/android/server/pm/OppoPackageManagerHelper;
.super Ljava/lang/Object;
.source "OppoPackageManagerHelper.java"


# static fields
.field private static final MSG_UPDATE_PKG:I = 0x64

.field private static final NOT_UNINSTALL_DIR:Ljava/lang/String; = "/data/system"

.field private static final NOT_UNINSTALL_PATH:Ljava/lang/String; = "/data/system/not_uninstall_packages.xml"

.field private static final NOT_UNINSTALL_SYSTEM_PATH:Ljava/lang/String; = "/system/etc/not_uninstall_packages.xml"

.field public static final OPPO_EXTRA_DEBUG_INFO:Ljava/lang/String; = "oppo_extra_debug_info"

.field public static final OPPO_EXTRA_PID:Ljava/lang/String; = "oppo_extra_pid"

.field public static final OPPO_EXTRA_PKG_NAME:Ljava/lang/String; = "oppo_extra_pkg_name"

.field public static final OPPO_EXTRA_UID:Ljava/lang/String; = "oppo_extra_uid"

.field static Pid:I = 0x0

.field private static SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "OppoPackageManager"

.field private static final TAG_LOCAL_VERSION:Ljava/lang/String; = "LocalVersion"

.field private static final TAG_NOT_UNINSTALL:Ljava/lang/String; = "NotUninstall"

.field static Uid:I

.field public static mForceToSD:Z

.field private static final mForceUnpackNativeLibList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotUninstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mOppoShareUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPredexOptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrustApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nearmepackageflag:Ljava/lang/String;

.field private static oppopackageflag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 82
    const-string v0, "com.oppo."

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    .line 83
    const-string v0, "com.nearme."

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->nearmepackageflag:Ljava/lang/String;

    .line 84
    sput-boolean v2, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceToSD:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    .line 90
    sput v1, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 91
    sput v1, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    .line 546
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.oppo.music"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oppo.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oppo.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oppo.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oppo.video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.dialer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConfirmPackageXml(Lcom/android/server/pm/Settings;)V
    .locals 1
    .parameter "mSettings"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->parsePackagesXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->parsePackagesXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 189
    :cond_1
    return-void
.end method

.method public static IsFirstBoot()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/dalvik-cache/firstboot.flag"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, firstBootFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "oppo.device.firstboot"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v1, "OppoPackageManager"

    const-string v2, "firstboot.flag NOT exists, firstboot!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "oppo.device.firstboot"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IsForceUnpackNativeLibList(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->nearmepackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsGoogleMarket(II)Z
    .locals 1
    .parameter "callUid"
    .parameter "uid"

    .prologue
    .line 111
    if-ne p0, p1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsPredexOptList(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsShareUid(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 119
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static IsTrustApkList(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ParsePackageXml()V
    .locals 9

    .prologue
    .line 192
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/oppo_package.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v3, permFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 196
    .local v4, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v4           #permReader:Ljava/io/FileReader;
    .local v5, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 204
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 206
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 207
    .local v1, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 208
    packed-switch v1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 197
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "OppoPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find or open oppo_package file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 213
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PredexOptArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 215
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 233
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "OppoPackageManager"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 241
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    move-object v4, v5

    .line 245
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    goto :goto_2

    .line 216
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TrustApkArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 218
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 235
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/IOException;
    const-string v6, "OppoPackageManager"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 219
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForceUnpackNativeLibArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 220
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 221
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 222
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OppoShareUid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 224
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 243
    .end local v1           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static RestorePresetApk(Lcom/android/server/pm/Settings;Ljava/io/File;)V
    .locals 14
    .parameter "mSettings"
    .parameter "mAppInstallDir"

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    const-string v10, "/system/reserve/"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, OPPO_RESERVE_APK_DIR:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 135
    const-string v10, "oppo.device.firstboot"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 136
    .local v5, firstBoot:Z
    if-eqz v5, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, arr$:[Ljava/io/File;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v2, v7

    .line 139
    .local v1, apkFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v9

    .line 141
    .local v9, pkg:Landroid/content/pm/PackageParser$PackageLite;
    if-nez v9, :cond_2

    .line 142
    const-string v10, "OppoPackageManager"

    const-string v11, "reserve package null, error!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1           #apkFile:Ljava/io/File;
    .end local v9           #pkg:Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v10, "/data/dalvik-cache/firstboot.flag"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v6, firstBootFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    .end local v2           #arr$:[Ljava/io/File;
    .end local v5           #firstBoot:Z
    .end local v6           #firstBootFile:Ljava/io/File;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 145
    .restart local v1       #apkFile:Ljava/io/File;
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v5       #firstBoot:Z
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #pkg:Landroid/content/pm/PackageParser$PackageLite;
    :cond_2
    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v11, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 146
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has been installed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 148
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v3, destFile:Ljava/io/File;
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apk:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has NOT been installed, copy it to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "......"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 156
    :cond_4
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 157
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1a4

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, ex:Ljava/io/IOException;
    const-string v10, "OppoPackageManager"

    const-string v11, "copy apk error!!!!!!!!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 172
    .end local v1           #apkFile:Ljava/io/File;
    .end local v3           #destFile:Ljava/io/File;
    .end local v4           #ex:Ljava/io/IOException;
    .end local v9           #pkg:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v6       #firstBootFile:Ljava/io/File;
    :catch_1
    move-exception v4

    .line 173
    .local v4, ex:Ljava/lang/Exception;
    const-string v10, "OppoPackageManager"

    const-string v11, "create firstboot flag file error!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static checkIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "pms"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter "userId"
    .parameter "defaultResolveInfo"

    .prologue
    .line 535
    const-string v0, "oppo.ct.optr"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.RealBrowserActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p5

    .line 542
    .end local p5
    :cond_0
    return-object p5
.end method

.method private static checkSystemApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 5
    .parameter "pms"
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    .line 656
    :cond_0
    const-string v2, "OppoPackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exits!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_1
    :goto_0
    return v1

    .line 660
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 661
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "fromFile"
    .parameter "toFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v1, targetFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    const/4 v2, 0x0

    .line 529
    :goto_0
    return v2

    .line 527
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, sourceFile:Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 529
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findCompSet([Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)[Landroid/content/ComponentName;
    .locals 14
    .parameter "cp"
    .parameter "pa"

    .prologue
    .line 586
    array-length v11, p0

    add-int/lit8 v7, v11, -0x1

    .line 587
    .local v7, num:I
    new-array v10, v7, [Landroid/content/ComponentName;

    .line 588
    .local v10, setNew:[Landroid/content/ComponentName;
    iget-object v11, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v9, v11, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 589
    .local v9, rmCompName:Landroid/content/ComponentName;
    array-length v3, p0

    .line 590
    .local v3, len:I
    const/4 v5, 0x0

    .line 591
    .local v5, n:I
    const/4 v4, 0x0

    .line 592
    .local v4, m:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v5

    .end local v5           #n:I
    .local v6, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 593
    aget-object v11, p0, v2

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, comp:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 595
    const-string v11, "OppoPackageManager"

    const-string v12, "skip remove app set"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 592
    .end local v6           #n:I
    .restart local v5       #n:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #n:I
    .restart local v6       #n:I
    goto :goto_0

    .line 598
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 599
    const/4 v11, 0x0

    aget-object v8, v1, v11

    .line 600
    .local v8, pkgName:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, clsName:Ljava/lang/String;
    const-string v11, "OppoPackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "findCompSet pkgName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "clsName ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-gt v4, v7, :cond_2

    .line 603
    add-int/lit8 v5, v6, 0x1

    .end local v6           #n:I
    .restart local v5       #n:I
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v10, v6

    goto :goto_1

    .line 607
    .end local v0           #clsName:Ljava/lang/String;
    .end local v1           #comp:[Ljava/lang/String;
    .end local v5           #n:I
    .end local v8           #pkgName:Ljava/lang/String;
    .restart local v6       #n:I
    :cond_1
    return-object v10

    .restart local v0       #clsName:Ljava/lang/String;
    .restart local v1       #comp:[Ljava/lang/String;
    .restart local v8       #pkgName:Ljava/lang/String;
    :cond_2
    move v5, v6

    .end local v6           #n:I
    .restart local v5       #n:I
    goto :goto_1
.end method

.method public static findSystemDefaultApp([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cp"

    .prologue
    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, mComponent:Ljava/lang/String;
    array-length v2, p0

    .line 571
    .local v2, len:I
    sget-object v5, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v4, v5

    .line 572
    .local v4, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 573
    const-string v5, "OppoPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " i ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mComponent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 575
    aget-object v5, p0, v0

    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 576
    aget-object v3, p0, v0

    .line 577
    const-string v5, "OppoPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSystemDefaultApp find: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    .end local v1           #j:I
    :cond_2
    return-object v3
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .locals 8
    .parameter "pid"

    .prologue
    .line 360
    const-string v5, ""

    .line 362
    .local v5, processName:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 365
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 367
    .local v4, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 369
    .local v3, proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p0, v6, :cond_0

    .line 370
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4           #procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    return-object v5

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "OppoPackageManager"

    const-string v7, "Exception had happen!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getVersionNumber(Ljava/lang/String;)I
    .locals 13
    .parameter "path"

    .prologue
    .line 472
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 474
    const/4 v9, -0x1

    .line 512
    :goto_0
    return v9

    .line 476
    :cond_0
    const/4 v9, -0x1

    .line 477
    .local v9, versionNumber:I
    const/4 v4, 0x0

    .line 478
    .local v4, stream:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 480
    .local v6, success:Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v5, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 482
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 483
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 484
    .local v1, eventType:I
    :goto_1
    const/4 v10, 0x1

    if-eq v1, v10, :cond_2

    if-nez v6, :cond_2

    .line 485
    packed-switch v1, :pswitch_data_0

    .line 498
    :cond_1
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 487
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, tag:Ljava/lang/String;
    const-string v10, "LocalVersion"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 489
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 490
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 491
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v10, ""

    if-eq v8, v10, :cond_1

    .line 492
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v9

    .line 493
    const/4 v6, 0x1

    goto :goto_2

    .line 505
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 506
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    :cond_3
    const/4 v6, 0x0

    move-object v4, v5

    .line 510
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 509
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    move-object v4, v5

    .line 511
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 500
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const/4 v9, -0x1

    .line 502
    :try_start_3
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t getVersionNumber from file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    if-eqz v4, :cond_4

    .line 506
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 508
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 504
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 505
    :goto_4
    if-eqz v4, :cond_5

    .line 506
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 508
    :cond_5
    const/4 v6, 0x0

    .line 510
    :goto_5
    throw v10

    .line 509
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_5

    .line 504
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 500
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 485
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static inNotUninstallList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 516
    if-nez p0, :cond_0

    const-string v0, ""

    if-eq p0, v0, :cond_1

    .line 517
    :cond_0
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 519
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initDir(Ljava/lang/String;)V
    .locals 13
    .parameter "dir"

    .prologue
    .line 396
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v4, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 399
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 400
    const-string v10, "/system/etc/not_uninstall_packages.xml"

    const-string v11, "/data/system/not_uninstall_packages.xml"

    invoke-static {v10, v11}, Lcom/android/server/pm/OppoPackageManagerHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v10, "/system/etc/not_uninstall_packages.xml"

    const-string v11, "/data/system/not_uninstall_packages.xml"

    invoke-static {v10, v11}, Lcom/android/server/pm/OppoPackageManagerHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 403
    .local v5, isCopy:Z
    if-nez v5, :cond_0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 405
    .local v7, start:J
    const-string v10, "/data/system/not_uninstall_packages.xml"

    invoke-static {v10}, Lcom/android/server/pm/OppoPackageManagerHelper;->getVersionNumber(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, dataVersion:I
    const-string v10, "/system/etc/not_uninstall_packages.xml"

    invoke-static {v10}, Lcom/android/server/pm/OppoPackageManagerHelper;->getVersionNumber(Ljava/lang/String;)I

    move-result v6

    .line 407
    .local v6, localVersion:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 408
    .local v2, end:J
    if-le v6, v0, :cond_0

    .line 409
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/not_uninstall_packages.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v9, targetFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 411
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 413
    :cond_2
    const-string v10, "/system/etc/not_uninstall_packages.xml"

    const-string v11, "/data/system/not_uninstall_packages.xml"

    invoke-static {v10, v11}, Lcom/android/server/pm/OppoPackageManagerHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v0           #dataVersion:I
    .end local v2           #end:J
    .end local v5           #isCopy:Z
    .end local v6           #localVersion:I
    .end local v7           #start:J
    .end local v9           #targetFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mkdir failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initNotUnintall()V
    .locals 1

    .prologue
    .line 391
    const-string v0, "/data/system"

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->initDir(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->parseNotUninstallXml()V

    .line 393
    return-void
.end method

.method public static isSystemDefaultActivities(Lcom/android/server/pm/PreferredActivity;)Z
    .locals 6
    .parameter "pa"

    .prologue
    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, result:Z
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 561
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 562
    const/4 v4, 0x1

    .line 566
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return v4

    .line 560
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseNotUninstallXml()V
    .locals 10

    .prologue
    .line 423
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/not_uninstall_packages.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 426
    .local v4, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v4           #permReader:Ljava/io/FileReader;
    .local v5, permReader:Ljava/io/FileReader;
    sget-object v7, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 433
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 434
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 435
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 436
    .local v1, eventType:I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_1

    .line 437
    packed-switch v1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 427
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "OppoPackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open oppo_package file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 442
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NotUninstall"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 443
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 444
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    if-eq v6, v7, :cond_0

    .line 446
    sget-object v7, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 457
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #value:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 458
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "OppoPackageManager"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 465
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    move-object v4, v5

    .line 469
    .end local v5           #permReader:Ljava/io/FileReader;
    .restart local v4       #permReader:Ljava/io/FileReader;
    goto :goto_2

    .line 459
    .end local v4           #permReader:Ljava/io/FileReader;
    .restart local v5       #permReader:Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .line 460
    .local v0, e:Ljava/io/IOException;
    const-string v7, "OppoPackageManager"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 467
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parsePackagesXml(Ljava/io/File;)Z
    .locals 13
    .parameter "xmlFile"

    .prologue
    const/4 v9, 0x0

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 271
    :goto_0
    return v9

    .line 252
    :cond_0
    const/4 v2, 0x0

    .line 254
    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v2           #input:Ljava/io/InputStream;
    .local v3, input:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 256
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 257
    .local v4, saxParser:Ljavax/xml/parsers/SAXParser;
    new-instance v10, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v10}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-virtual {v4, v3, v10}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 258
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    const/4 v9, 0x1

    goto :goto_0

    .line 260
    .end local v3           #input:Ljava/io/InputStream;
    .end local v4           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2       #input:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 261
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error!!!!!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 265
    .local v6, t:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 266
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 267
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/packages-error_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, errFile:Ljava/lang/String;
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_0

    .line 260
    .end local v0           #errFile:Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v6           #t:J
    .end local v8           #time:Landroid/text/format/Time;
    .restart local v3       #input:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static removeActiveAdmin(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 11
    .parameter "pms"
    .parameter "packageName"
    .parameter "userId"

    .prologue
    .line 613
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeActiveAdmin enter! packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {p0, p1}, Lcom/android/server/pm/OppoPackageManagerHelper;->checkSystemApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 616
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "don\'t removeActiveAdmin package is system apk. packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v8, "device_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    .line 623
    .local v2, dpm:Landroid/app/admin/IDevicePolicyManager;
    if-eqz v2, :cond_0

    .line 624
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 626
    .local v6, resolveType:Ljava/lang/String;
    const/16 v8, 0x80

    invoke-virtual {p0, v5, v6, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 628
    .local v0, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 630
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 631
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 632
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 633
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ri.activityInfo.name == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_1
    invoke-interface {v2, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    .end local v1           #componentName:Landroid/content/ComponentName;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 641
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 642
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception happened!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 637
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #componentName:Landroid/content/ComponentName;
    .restart local v7       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static resetDataCollection()V
    .locals 1

    .prologue
    const/16 v0, -0x63

    .line 281
    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 282
    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 283
    return-void
.end method

.method public static sendDataClearBroadcast()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 351
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v13, 0x0

    .line 352
    .local v13, finishedReceiver:Landroid/content/IIntentReceiver;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_COLLECT_CLEAR"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 353
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v13, :cond_0

    const/4 v10, 0x1

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendPackageInstallBroadcast(Landroid/content/pm/ApplicationInfo;Landroid/os/Bundle;ILcom/android/server/pm/UserManagerService;)V
    .locals 24
    .parameter "info"
    .parameter "extras"
    .parameter "userId"
    .parameter "sUserManager"

    .prologue
    .line 287
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 291
    .local v2, am:Landroid/app/IActivityManager;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 296
    :try_start_0
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v21

    .line 297
    .local v21, pm:Landroid/content/pm/IPackageManager;
    const-string v20, "com.android.packageinstaller"

    .line 298
    .local v20, packageinstaller:Ljava/lang/String;
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    .end local v20           #packageinstaller:Ljava/lang/String;
    .end local v21           #pm:Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return-void

    .line 302
    .restart local v20       #packageinstaller:Ljava/lang/String;
    .restart local v21       #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    .line 304
    .local v23, userIds:[I
    :goto_1
    move-object/from16 v15, v23

    .local v15, arr$:[I
    array-length v0, v15

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget v14, v15, v17

    .line 305
    .local v14, id:I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.OPPO_PACKAGE_ADDED"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_3
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    .local v4, intent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    :cond_2
    const-string v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 313
    .local v22, uid:I
    if-lez v22, :cond_3

    if-lez v14, :cond_3

    .line 314
    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v14, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v22

    .line 315
    const-string v3, "android.intent.extra.UID"

    move/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    :cond_3
    const-string v3, "UID"

    sget v5, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string v3, "PID"

    sget v5, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    new-instance v16, Ljava/lang/StringBuffer;

    const-string v3, "dataCollection debug info "

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    .local v16, debugInfo:Ljava/lang/StringBuffer;
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    invoke-static {v3}, Lcom/android/server/pm/OppoPackageManagerHelper;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v19

    .line 323
    .local v19, mCallingPkgName:Ljava/lang/String;
    if-eqz v19, :cond_4

    const-string v3, ""

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 324
    :cond_4
    const-string v3, " get an empty package name by pid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v19

    .line 326
    if-eqz v19, :cond_5

    const-string v3, ""

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 327
    :cond_5
    const-string v3, " get an empty package name by uid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_6
    const-string v3, " UID "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    const-string v3, " PID "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 334
    const-string v3, " mCallingPkgName "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v3, "oppo_extra_pkg_name"

    if-eqz v19, :cond_9

    .end local v19           #mCallingPkgName:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v3, "oppo_extra_debug_info"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    .line 341
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->resetDataCollection()V

    .line 304
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 302
    .end local v4           #intent:Landroid/content/Intent;
    .end local v14           #id:I
    .end local v15           #arr$:[I
    .end local v16           #debugInfo:Ljava/lang/StringBuffer;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v22           #uid:I
    .end local v23           #userIds:[I
    :cond_7
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v23, v0

    const/4 v3, 0x0

    aput p2, v23, v3

    goto/16 :goto_1

    .line 343
    .end local v20           #packageinstaller:Ljava/lang/String;
    .end local v21           #pm:Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 305
    .restart local v14       #id:I
    .restart local v15       #arr$:[I
    .restart local v17       #i$:I
    .restart local v18       #len$:I
    .restart local v20       #packageinstaller:Ljava/lang/String;
    .restart local v21       #pm:Landroid/content/pm/IPackageManager;
    .restart local v23       #userIds:[I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 336
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v16       #debugInfo:Ljava/lang/StringBuffer;
    .restart local v19       #mCallingPkgName:Ljava/lang/String;
    .restart local v22       #uid:I
    :cond_9
    const-string v19, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public static setDataCollection()V
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 277
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 278
    return-void
.end method
