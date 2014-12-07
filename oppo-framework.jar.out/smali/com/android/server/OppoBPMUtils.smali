.class public Lcom/android/server/OppoBPMUtils;
.super Ljava/lang/Object;
.source "OppoBPMUtils.java"


# static fields
.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final TAG:Ljava/lang/String; = "OppoBPMUtils"

.field private static mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;


# instance fields
.field private LOCAL_LOGV:Z

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitBgStats:Z

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/android/server/OppoBPMUtils;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/OppoBPMUtils;

    invoke-direct {v0}, Lcom/android/server/OppoBPMUtils;-><init>()V

    sput-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/server/OppoBPMUtils;->mOppoBPMUtils:Lcom/android/server/OppoBPMUtils;

    return-object v0
.end method

.method private loadStateLocked()V
    .locals 6

    .prologue
    .line 140
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, settingsFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/OppoBPMUtils;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    if-eqz v2, :cond_0

    .line 149
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .end local v2           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 152
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 157
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadStatusLocked()V
    .locals 6

    .prologue
    .line 264
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, settingsFile:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 267
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/OppoBPMUtils;->readStatusFromFile(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    if-eqz v2, :cond_0

    .line 271
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .end local v2           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 274
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAppWidgetFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 7
    .parameter "stream"

    .prologue
    .line 519
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 520
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 524
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 525
    .local v4, type:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 526
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, tag:Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 528
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, pkg:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 530
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 534
    .end local v2           #pkg:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 547
    if-eqz p1, :cond_2

    .line 548
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 553
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :cond_2
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    if-eqz p1, :cond_2

    .line 548
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 550
    :catch_1
    move-exception v5

    goto :goto_0

    .line 537
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 547
    if-eqz p1, :cond_2

    .line 548
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 550
    :catch_3
    move-exception v5

    goto :goto_0

    .line 539
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 540
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 547
    if-eqz p1, :cond_2

    .line 548
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 550
    :catch_5
    move-exception v5

    goto :goto_0

    .line 541
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 542
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 547
    if-eqz p1, :cond_2

    .line 548
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 550
    :catch_7
    move-exception v5

    goto :goto_0

    .line 543
    .end local v0           #e:Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 547
    if-eqz p1, :cond_2

    .line 548
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_0

    .line 550
    :catch_9
    move-exception v5

    goto :goto_0

    .line 546
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    .line 547
    if-eqz p1, :cond_3

    .line 548
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 551
    :cond_3
    :goto_1
    throw v5

    .line 550
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #type:I
    :catch_a
    move-exception v5

    goto :goto_0

    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :catch_b
    move-exception v6

    goto :goto_1
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 7
    .parameter "stream"

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 228
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 233
    .local v4, type:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 234
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, tag:Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, pkg:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 238
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 242
    .end local v2           #pkg:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 261
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :cond_2
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 258
    :catch_1
    move-exception v5

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 258
    :catch_3
    move-exception v5

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 248
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 258
    :catch_5
    move-exception v5

    goto :goto_0

    .line 249
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 250
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 258
    :catch_7
    move-exception v5

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_0

    .line 258
    :catch_9
    move-exception v5

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    .line 255
    if-eqz p1, :cond_3

    .line 256
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 259
    :cond_3
    :goto_1
    throw v5

    .line 258
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #type:I
    :catch_a
    move-exception v5

    goto :goto_0

    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :catch_b
    move-exception v6

    goto :goto_1
.end method

.method private readStatusFromFile(Ljava/io/FileInputStream;)V
    .locals 8
    .parameter "stream"

    .prologue
    const/4 v7, 0x1

    .line 341
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 342
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 346
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 347
    .local v4, type:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 348
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, tag:Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, sts:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 352
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 360
    .end local v2           #sts:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne v4, v7, :cond_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 379
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :cond_2
    :goto_1
    return-void

    .line 355
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2       #sts:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #type:I
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_0

    .line 361
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #sts:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #type:I
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 376
    :catch_1
    move-exception v5

    goto :goto_1

    .line 363
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 376
    :catch_3
    move-exception v5

    goto :goto_1

    .line 365
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 366
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 376
    :catch_5
    move-exception v5

    goto :goto_1

    .line 367
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 368
    .local v0, e:Ljava/io/IOException;
    :try_start_9
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 376
    :catch_7
    move-exception v5

    goto :goto_1

    .line 369
    .end local v0           #e:Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    const-string v5, "OppoBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_1

    .line 376
    :catch_9
    move-exception v5

    goto :goto_1

    .line 372
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    .line 373
    if-eqz p1, :cond_4

    .line 374
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 377
    :cond_4
    :goto_2
    throw v5

    .line 376
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #type:I
    :catch_a
    move-exception v5

    goto :goto_1

    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :catch_b
    move-exception v6

    goto :goto_2
.end method

.method private saveAppWidgetLocked()V
    .locals 9

    .prologue
    .line 451
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-enter v5

    .line 452
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 454
    .local v2, stream:Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 455
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAppWidgetLocked start, mAppWidgetList.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 460
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    :cond_2
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 472
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->writeAppWidgetToFileLocked(Ljava/io/FileOutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 477
    if-eqz v3, :cond_6

    .line 479
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 486
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v5

    .line 487
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 486
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 480
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 481
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    .line 482
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    move-object v2, v3

    .line 483
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 473
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 475
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 477
    if-eqz v2, :cond_3

    .line 479
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 480
    :catch_3
    move-exception v0

    .line 481
    .local v0, e:Ljava/io/IOException;
    :try_start_9
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 482
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 477
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 479
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 483
    :cond_5
    :goto_4
    :try_start_b
    throw v4

    .line 480
    :catch_4
    move-exception v0

    .line 481
    .restart local v0       #e:Ljava/io/IOException;
    iget-boolean v6, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v6, :cond_5

    .line 482
    const-string v6, "OppoBPMUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close state FileInputStream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 477
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 473
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveStateLocked()V
    .locals 8

    .prologue
    .line 162
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 164
    .local v2, stream:Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveStateLocked start, mPackageList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_2
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 181
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 186
    if-eqz v3, :cond_6

    .line 188
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 195
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    .line 191
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v3

    .line 192
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v2, :cond_3

    .line 188
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 189
    :catch_3
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 191
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 188
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 192
    :cond_5
    :goto_4
    throw v4

    .line 189
    :catch_4
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_5

    .line 191
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 182
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveStatusLocked()V
    .locals 8

    .prologue
    .line 284
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 287
    .local v2, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_1
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 301
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->writeStatusToFile(Ljava/io/FileOutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 306
    if-eqz v3, :cond_5

    .line 308
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 315
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 310
    .restart local v0       #e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 311
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v3

    .line 312
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 302
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 304
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    if-eqz v2, :cond_2

    .line 308
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 309
    :catch_3
    move-exception v0

    .line 310
    .local v0, e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    .line 311
    const-string v4, "OppoBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_4

    .line 308
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 312
    :cond_4
    :goto_4
    throw v4

    .line 309
    :catch_4
    move-exception v0

    .line 310
    .restart local v0       #e:Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_4

    .line 311
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 302
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_5
    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private writeAppWidgetToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 8
    .parameter "stream"

    .prologue
    const/4 v5, 0x1

    .line 492
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 493
    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 494
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 495
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 498
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 499
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 500
    .local v4, pkg:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 501
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const/4 v6, 0x0

    const-string v7, "att"

    invoke-interface {v3, v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    .end local v4           #pkg:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v5

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, e:Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_2

    .line 512
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 8
    .parameter "stream"

    .prologue
    const/4 v5, 0x1

    .line 200
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 201
    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 202
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 206
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 207
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, pkg:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 209
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const/4 v6, 0x0

    const-string v7, "att"

    invoke-interface {v3, v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v4           #pkg:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v5

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_2

    .line 220
    const-string v5, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeStatusToFile(Ljava/io/FileOutputStream;)Z
    .locals 6
    .parameter "stream"

    .prologue
    const/4 v3, 0x1

    .line 319
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 320
    .local v1, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v1, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 321
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 322
    const/4 v4, 0x0

    const-string v5, "gs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    if-eqz v4, :cond_0

    const-string v2, "true"

    .line 325
    .local v2, sts:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    const-string v5, "p"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const/4 v4, 0x0

    const-string v5, "att"

    invoke-interface {v1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const/4 v4, 0x0

    const-string v5, "p"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    const/4 v4, 0x0

    const-string v5, "gs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 335
    .end local v1           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v2           #sts:Ljava/lang/String;
    :goto_1
    return v3

    .line 324
    .restart local v1       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const-string v2, "false"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v1           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/io/IOException;
    iget-boolean v3, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_1

    .line 334
    const-string v3, "OppoBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPkgToAppWidgetList(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/server/OppoBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    .line 388
    if-nez p1, :cond_0

    .line 389
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveAppWidgetLocked()V

    .line 394
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addPkgToTrustList(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStateLocked()V

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, isExist:Z
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const/4 v1, 0x1

    .line 103
    .end local v2           #pkg:Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStateLocked()V

    .line 106
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getLimitBgStats()Z
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStatusLocked()V

    .line 76
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "OppoBPMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitBgStats mLimitBgStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    return v0
.end method

.method public getTrustList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStateLocked()V

    .line 59
    iget-object v0, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method public loadAppWidgetLocked()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v5, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-enter v5

    .line 426
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, settingsFile:Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    const/4 v2, 0x0

    .line 431
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OppoBPMUtils;->readAppWidgetFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 437
    if-eqz v3, :cond_0

    .line 439
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 445
    :cond_0
    :goto_0
    :try_start_4
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_1
    return-object v4

    .line 440
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 442
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #settingsFile:Ljava/io/File;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 433
    .restart local v1       #settingsFile:Ljava/io/File;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 434
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 435
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 437
    :cond_1
    if-eqz v2, :cond_2

    .line 439
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 445
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    :try_start_7
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    goto :goto_1

    .line 440
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 441
    .local v0, e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    .line 442
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v2, :cond_3

    .line 439
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 445
    :cond_3
    :goto_5
    :try_start_9
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    goto :goto_1

    .line 440
    :catch_3
    move-exception v0

    .line 441
    .restart local v0       #e:Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 442
    const-string v4, "OppoBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 433
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public removePkgFromAppWidgetList(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/server/OppoBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, isExist:Z
    const/4 v2, 0x0

    .line 401
    .local v2, location:I
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 403
    .local v1, listSize:I
    if-nez p1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v4

    .line 407
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 408
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 409
    .local v3, pkg:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 410
    const/4 v0, 0x1

    .line 415
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 416
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveAppWidgetLocked()V

    move v4, v5

    .line 418
    goto :goto_0

    .line 407
    .restart local v3       #pkg:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removePkgFromTrustList(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->loadStateLocked()V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, isExist:Z
    const/4 v2, 0x0

    .line 116
    .local v2, location:I
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 118
    .local v1, listSize:I
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v4

    .line 122
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 123
    iget-object v6, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, pkg:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 125
    const/4 v0, 0x1

    .line 130
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 131
    iget-object v4, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStateLocked()V

    move v4, v5

    .line 133
    goto :goto_0

    .line 122
    .restart local v3       #pkg:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setLimitBgStats(Z)V
    .locals 3
    .parameter "limitBgStats"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "OppoBPMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLimitBgStats limitBgStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/OppoBPMUtils;->mLimitBgStats:Z

    .line 85
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStatusLocked()V

    .line 86
    return-void
.end method

.method public setTrustList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, trustList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 64
    .local v1, listNum:I
    iget-boolean v2, p0, Lcom/android/server/OppoBPMUtils;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "OppoBPMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTrustList begin, listNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/server/OppoBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/android/server/OppoBPMUtils;->saveStateLocked()V

    .line 72
    return-void
.end method
