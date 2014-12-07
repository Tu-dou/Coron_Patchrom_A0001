.class public Lcom/oppo/ota/OppoRecoverySystem;
.super Landroid/os/RecoverySystem;
.source "OppoRecoverySystem.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "OppoRecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 43
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/RecoverySystem;-><init>()V

    return-void
.end method

.method public static installOppoOtaPackage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, packageFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p1, :cond_0

    .line 54
    const-string v11, "OppoRecoverySystem"

    const-string v12, "installOppoOtaPackage failed before reboot, packageFileList is null!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 58
    :cond_0
    sget-object v11, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 59
    sget-object v11, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 60
    sget-object v11, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 61
    new-instance v3, Ljava/io/FileWriter;

    sget-object v11, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 63
    .local v3, command:Ljava/io/FileWriter;
    const-string v7, ""

    .line 64
    .local v7, internal:Ljava/lang/String;
    const-string v4, ""

    .line 66
    .local v4, external:Ljava/lang/String;
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 67
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 71
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    :cond_2
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->isExternalSDRemoved(Landroid/content/Context;)Z

    move-result v1

    .line 76
    .local v1, bExtSdRemove:Z
    const/4 v5, 0x0

    .line 77
    .local v5, filename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 78
    .local v0, arg:Ljava/lang/String;
    const-string v10, "--wipe_data"

    .line 79
    .local v10, strWipeData:Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, bWipeData:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 82
    .local v8, packageFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_4

    const-string v11, "/--wipe_data"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 85
    const/4 v2, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_4
    const-string v11, "OppoRecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filename="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v5, :cond_5

    const-string v11, "/mnt"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 91
    const/4 v11, 0x4

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    :cond_5
    const-string v11, "OppoRecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!! REBOOT TO INSTALL "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " !!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v5, :cond_3

    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--update_package="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    const-string v11, "\n"

    invoke-virtual {v3, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #packageFile:Ljava/io/File;
    :catchall_0
    move-exception v11

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    throw v11

    .line 103
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz v2, :cond_7

    .line 104
    :try_start_1
    const-string v11, "OppoRecoverySystem"

    const-string v12, "!!!WIPE DATA FOR OTA!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v3, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 106
    const-string v11, "\n"

    invoke-virtual {v3, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 113
    const-string v11, "power"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 114
    .local v9, pm:Landroid/os/PowerManager;
    const-string v11, "recovery"

    invoke-virtual {v9, v11}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 116
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Reboot failed (no permissions?)"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
