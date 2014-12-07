.class public Lcom/oppo/ota/OppoOtaUtils;
.super Ljava/lang/Object;
.source "OppoOtaUtils.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "ZhiYong.Lin@Plf.Framework add for ota update result "
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final OTA_UPDATE_FAILED:Ljava/lang/String; = "1"

.field private static final OTA_UPDATE_OK:Ljava/lang/String; = "0"

.field private static final RECOVER_UPDATE_FAILED:Ljava/lang/String; = "3"

.field private static final RECOVER_UPDATE_OK:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "OppoOtaUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyOTAUpdateResult(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 56
    const-string v1, "/cache/recovery/intent"

    .line 57
    .local v1, otaFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const-string v4, "OppoOtaUtils"

    const-string v5, "/cache/recovery/intent file is exist!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v1}, Lcom/oppo/ota/OppoOtaUtils;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, otaResultStr:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const-string v4, "OppoOtaUtils"

    const-string v5, "OTA update successed!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, otaIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    const-string v4, "persist.sys.panictime"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v2           #otaIntent:Landroid/content/Intent;
    .end local v3           #otaResultStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v3       #otaResultStr:Ljava/lang/String;
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    const-string v4, "OppoOtaUtils"

    const-string v5, "OTA update failed!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_OTA_UPDATE_FAILED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v2       #otaIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    .end local v2           #otaIntent:Landroid/content/Intent;
    :cond_2
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    const-string v4, "OppoOtaUtils"

    const-string v5, "Recover update ok!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v2       #otaIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    .end local v2           #otaIntent:Landroid/content/Intent;
    :cond_3
    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    const-string v4, "OppoOtaUtils"

    const-string v5, "Recover update failed!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_RECOVER_UPDATE_FAILED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v2       #otaIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v2           #otaIntent:Landroid/content/Intent;
    :cond_4
    const-string v4, "OppoOtaUtils"

    const-string v5, "OTA update file\'s date is invalid!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 97
    const/4 v5, 0x0

    .line 98
    .local v5, resultStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 100
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 108
    if-eqz v4, :cond_2

    .line 110
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 117
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v5

    .line 111
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "OppoOtaUtils"

    const-string v7, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 113
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 105
    .end local v1           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "OppoOtaUtils"

    const-string v7, "readOTAUpdateResult failed!!!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    if-eqz v3, :cond_0

    .line 110
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 111
    :catch_2
    move-exception v1

    .line 112
    .restart local v1       #e1:Ljava/io/IOException;
    const-string v6, "OppoOtaUtils"

    const-string v7, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_1

    .line 110
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 113
    :cond_1
    :goto_3
    throw v6

    .line 111
    :catch_3
    move-exception v1

    .line 112
    .restart local v1       #e1:Ljava/io/IOException;
    const-string v7, "OppoOtaUtils"

    const-string v8, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 108
    .end local v1           #e1:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 105
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_0
.end method
