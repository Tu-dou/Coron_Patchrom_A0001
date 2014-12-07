.class public Lcom/android/server/CabcService;
.super Lcom/android/internal/cabc/ICabcManager$Stub;
.source "CabcService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CabcService"

.field private static final cabc_node:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/cabc"

.field private static mLocalSavedMode:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    sput v0, Lcom/android/server/CabcService;->mLocalSavedMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/cabc/ICabcManager$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/CabcService;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getCurrentCabcMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 112
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/graphics/fb0/cabc"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, cabcFile:Ljava/io/File;
    const/16 v5, 0xa

    new-array v0, v5, [C

    .line 114
    .local v0, a:[C
    const-string v4, ""

    .line 118
    .local v4, result:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 119
    .local v3, fr:Ljava/io/FileReader;
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    .line 120
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v3           #fr:Ljava/io/FileReader;
    :goto_0
    const-string v5, "CabcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentCabcMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v4

    .line 124
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    const-string v5, "CabcService"

    const-string v6, "read cabc node failed!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseMode(Ljava/lang/String;)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 135
    const-string v1, "CabcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMode============ mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x3

    .line 137
    .local v0, result:I
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 141
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_2
    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const/4 v0, 0x3

    goto :goto_0

    .line 155
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private writeCabcNode(Ljava/lang/String;)Z
    .locals 7
    .parameter "value"

    .prologue
    .line 91
    const-string v4, "CabcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeCabcNode========== value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/devices/virtual/graphics/fb0/cabc"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, cabcFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 97
    .local v2, fr:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2           #fr:Ljava/io/FileWriter;
    .local v3, fr:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 100
    const-string v4, "CabcService"

    const-string v5, "write cabc node succeed!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    const/4 v4, 0x1

    move-object v2, v3

    .line 107
    .end local v3           #fr:Ljava/io/FileWriter;
    .restart local v2       #fr:Ljava/io/FileWriter;
    :goto_0
    return v4

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    const-string v4, "CabcService"

    const-string v5, "write cabc node failed!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v4, 0x0

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fr:Ljava/io/FileWriter;
    .restart local v3       #fr:Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileWriter;
    .restart local v2       #fr:Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public closeCabc()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "CabcService"

    const-string v1, "closeCabc========"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/android/server/CabcService;->getCurrentCabcMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CabcService;->parseMode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/CabcService;->mLocalSavedMode:I

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    .line 75
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/CabcService;->getCurrentCabcMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CabcService;->parseMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openCabc()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "CabcService"

    const-string v1, "openCabc========"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget v0, Lcom/android/server/CabcService;->mLocalSavedMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    .line 84
    return-void
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 34
    const-string v1, "CabcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode======mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, setRes:Z
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    .line 58
    sput p1, Lcom/android/server/CabcService;->mLocalSavedMode:I

    .line 60
    :cond_0
    return-void

    .line 40
    :pswitch_0
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/android/server/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    move-result v0

    .line 41
    goto :goto_0

    .line 43
    :pswitch_1
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/android/server/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    move-result v0

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    const-string v1, "2"

    invoke-direct {p0, v1}, Lcom/android/server/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    move-result v0

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    const-string v1, "3"

    invoke-direct {p0, v1}, Lcom/android/server/CabcService;->writeCabcNode(Ljava/lang/String;)Z

    move-result v0

    .line 50
    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
