.class public Lcom/oppo/media/OppoCueParser;
.super Ljava/lang/Object;
.source "OppoCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/OppoCueParser$1;,
        Lcom/oppo/media/OppoCueParser$Info;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "FILE"

.field private static final INDEX:Ljava/lang/String; = "INDEX"

.field private static final INDEX_START_TAG:Ljava/lang/String; = "01"

.field private static final PERFORMER:Ljava/lang/String; = "PERFORMER"

.field private static final TAG:Ljava/lang/String; = "OppoCueParser"

.field private static final TITLE:Ljava/lang/String; = "TITLE"

.field private static final TRACK:Ljava/lang/String; = "TRACK"


# instance fields
.field private mCue:Lcom/oppo/media/OppoCueSheet;

.field private mParentDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    .line 73
    iput-object v0, p0, Lcom/oppo/media/OppoCueParser;->mParentDirPath:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .locals 17
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v9, 0x0

    .line 139
    .local v9, strOneLine:Ljava/lang/String;
    const/4 v3, 0x0

    .line 140
    .local v3, info:Lcom/oppo/media/OppoCueParser$Info;
    const/4 v12, 0x0

    .line 141
    .local v12, track:Lcom/oppo/media/OppoCueTrack;
    const/4 v4, 0x0

    .line 142
    .local v4, isInTrack:Z
    const/4 v13, 0x0

    .line 144
    .local v13, trackFileName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 147
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oppo/media/OppoCueParser;->parseOneLine(Ljava/lang/String;)Lcom/oppo/media/OppoCueParser$Info;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v3}, Lcom/oppo/media/OppoCueParser$Info;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/oppo/media/OppoCueParser$Info;->getValues()Ljava/util/ArrayList;

    move-result-object v14

    .line 154
    .local v14, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "PERFORMER"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 155
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 156
    .local v6, performer:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 158
    if-nez v4, :cond_1

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v15, v6}, Lcom/oppo/media/OppoCueSheet;->setPerformer(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v12, v6}, Lcom/oppo/media/OppoCueTrack;->setPerformer(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v6           #performer:Ljava/lang/String;
    :cond_2
    const-string v15, "TITLE"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 164
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 165
    .local v11, title:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 167
    if-nez v4, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v15, v11}, Lcom/oppo/media/OppoCueSheet;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v12, v11}, Lcom/oppo/media/OppoCueTrack;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v11           #title:Ljava/lang/String;
    :cond_4
    const-string v15, "FILE"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 173
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, file:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoCueParser;->mParentDirPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    if-nez v4, :cond_5

    .line 178
    move-object v13, v1

    goto/16 :goto_0

    .line 180
    :cond_5
    invoke-virtual {v12, v1}, Lcom/oppo/media/OppoCueTrack;->setFilePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    .end local v1           #file:Ljava/lang/String;
    :cond_6
    const-string v15, "TRACK"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 183
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 184
    .local v8, strIndex:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 186
    .local v2, index:I
    if-nez v4, :cond_8

    .line 187
    const/4 v4, 0x1

    .line 198
    :cond_7
    :goto_1
    new-instance v12, Lcom/oppo/media/OppoCueTrack;

    .end local v12           #track:Lcom/oppo/media/OppoCueTrack;
    invoke-direct {v12}, Lcom/oppo/media/OppoCueTrack;-><init>()V

    .line 199
    .restart local v12       #track:Lcom/oppo/media/OppoCueTrack;
    invoke-virtual {v12, v2}, Lcom/oppo/media/OppoCueTrack;->setIndex(I)V

    goto/16 :goto_0

    .line 189
    :cond_8
    if-eqz v12, :cond_7

    .line 190
    invoke-virtual {v12}, Lcom/oppo/media/OppoCueTrack;->getFilePath()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_9

    .line 191
    invoke-virtual {v12, v13}, Lcom/oppo/media/OppoCueTrack;->setFilePath(Ljava/lang/String;)V

    .line 194
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v15, v12}, Lcom/oppo/media/OppoCueSheet;->addCueTrack(Lcom/oppo/media/OppoCueTrack;)V

    goto :goto_1

    .line 200
    .end local v2           #index:I
    .end local v8           #strIndex:Ljava/lang/String;
    :cond_a
    const-string v15, "INDEX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 201
    const-string v15, "01"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 202
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 203
    .local v10, strStartPos:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/oppo/media/OppoCueParser;->parseTimeStamp(Ljava/lang/String;)I

    move-result v7

    .line 205
    .local v7, startPos:I
    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v12, v7}, Lcom/oppo/media/OppoCueTrack;->setStartPos(I)V

    goto/16 :goto_0

    .line 212
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #startPos:I
    .end local v10           #strStartPos:Ljava/lang/String;
    .end local v14           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    return-void
.end method

.method private parseOneLine(Ljava/lang/String;)Lcom/oppo/media/OppoCueParser$Info;
    .locals 8
    .parameter "strOneLine"

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, info:Lcom/oppo/media/OppoCueParser$Info;
    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 222
    const-string v6, " "

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, array:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    .line 226
    new-instance v2, Lcom/oppo/media/OppoCueParser$Info;

    .end local v2           #info:Lcom/oppo/media/OppoCueParser$Info;
    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/oppo/media/OppoCueParser$Info;-><init>(Lcom/oppo/media/OppoCueParser;Lcom/oppo/media/OppoCueParser$1;)V

    .line 227
    .restart local v2       #info:Lcom/oppo/media/OppoCueParser$Info;
    const/4 v3, 0x1

    .line 228
    .local v3, isFirst:Z
    const/4 v4, 0x0

    .line 229
    .local v4, key:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 232
    aget-object v6, v0, v1

    if-eqz v6, :cond_0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 233
    if-eqz v3, :cond_1

    .line 234
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 235
    const/4 v3, 0x0

    .line 231
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {v2, v4}, Lcom/oppo/media/OppoCueParser$Info;->setKey(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, v5}, Lcom/oppo/media/OppoCueParser$Info;->setValue(Ljava/util/ArrayList;)V

    .line 247
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #isFirst:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-object v2
.end method

.method private parseTimeStamp(Ljava/lang/String;)I
    .locals 8
    .parameter "strTimeStamp"

    .prologue
    const/4 v7, 0x0

    .line 253
    const/4 v3, -0x1

    .line 255
    .local v3, result:I
    if-eqz p1, :cond_0

    .line 256
    const-string v5, ":"

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, array:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 258
    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 259
    .local v2, mm:I
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 260
    .local v4, ss:I
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    .local v1, ff:I
    mul-int/lit8 v5, v2, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit16 v6, v4, 0x3e8

    add-int/2addr v5, v6

    mul-int/lit16 v6, v1, 0x3e8

    div-int/lit8 v6, v6, 0x4b

    add-int v3, v5, v6

    .line 266
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #ff:I
    .end local v2           #mm:I
    .end local v4           #ss:I
    :cond_0
    return v3
.end method


# virtual methods
.method public parseCue(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 82
    const-string v0, "GB2312"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/media/OppoCueParser;->parseCue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseCue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "filePath"
    .parameter "charSet"

    .prologue
    const/4 v8, 0x0

    .line 86
    const-string v5, "OppoCueParser"

    const-string v6, "parseCue() filePath=%s, charSet=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v4, 0x1

    .line 90
    .local v4, result:Z
    iget-object v5, p0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    if-nez v5, :cond_0

    .line 91
    const-string v5, "OppoCueParser"

    const-string v6, "parseCue failed! mCue is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v4, 0x0

    .line 133
    :goto_0
    return v4

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    invoke-virtual {v5}, Lcom/oppo/media/OppoCueSheet;->clear()V

    .line 96
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 97
    :cond_1
    const/4 v4, 0x0

    .line 98
    const-string v5, "OppoCueParser"

    const-string v6, "parseCue() parameter is invalid!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, cueFile:Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 103
    :cond_3
    const/4 v4, 0x0

    .line 104
    const-string v5, "OppoCueParser"

    const-string v6, "parseCue() cue file is not exists!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 123
    .end local v0           #cueFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 125
    const-string v5, "OppoCueParser"

    const-string v6, "parseCue() IOException!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cueFile:Ljava/io/File;
    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x2f

    :try_start_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/media/OppoCueParser;->mParentDirPath:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v2, inputStream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 111
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-direct {p0, v3}, Lcom/oppo/media/OppoCueParser;->parse(Ljava/io/BufferedReader;)V

    .line 113
    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 117
    :cond_5
    if-eqz v2, :cond_6

    .line 118
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    .line 126
    .end local v0           #cueFile:Ljava/io/File;
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 128
    const-string v5, "OppoCueParser"

    const-string v6, "parseCue() Unknown Exception!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCueSheet(Lcom/oppo/media/OppoCueSheet;)V
    .locals 0
    .parameter "cue"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/media/OppoCueParser;->mCue:Lcom/oppo/media/OppoCueSheet;

    .line 79
    return-void
.end method
