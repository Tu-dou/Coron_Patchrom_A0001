.class Lcom/oppo/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Lcom/oppo/media/MediaScanner;


# direct methods
.method private constructor <init>(Lcom/oppo/media/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/media/MediaScanner;Lcom/oppo/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/oppo/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    const/4 v1, 0x1

    .line 791
    :goto_0
    return v1

    .line 790
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1293
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1294
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1295
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 27
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 985
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 988
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 989
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 990
    .local v26, title:Ljava/lang/String;
    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 991
    :cond_2
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 992
    const-string v4, "title"

    move-object/from16 v0, v26

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v21, v0

    .line 1022
    .local v21, rowId:J
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " endFile rowId "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ft="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_12

    .line 1028
    :cond_4
    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1029
    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1030
    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1031
    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1032
    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1085
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1500(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    .line 1086
    .local v23, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1600(Lcom/oppo/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v15

    .line 1087
    .local v15, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_6

    .line 1088
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1700(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    .line 1096
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 1097
    .local v6, result:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1100
    .local v18, needToSetSettings:Z
    const/16 v19, 0x0

    .line 1102
    .local v19, needToSetSettingsSIM2:Z
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-nez v4, :cond_20

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 1104
    const-string v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1106
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1500(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_9

    .line 1107
    move-object/from16 v0, p1

    iget v14, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mFormat:I

    .line 1108
    .local v14, format:I
    if-nez v14, :cond_8

    .line 1109
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oppo/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1111
    :cond_8
    const-string v4, "format"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    .end local v14           #format:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1132
    if-eqz p3, :cond_18

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2100(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2200(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2200(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1136
    :cond_a
    const/16 v18, 0x1

    .line 1140
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2300(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2400(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2400(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1143
    :cond_c
    const/16 v19, 0x1

    .line 1180
    :cond_d
    :goto_2
    if-eqz v15, :cond_e

    if-nez v18, :cond_e

    if-eqz v19, :cond_1e

    .line 1182
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3200(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1207
    :goto_3
    if-eqz v6, :cond_f

    .line 1208
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 1209
    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    .line 1258
    :cond_f
    :goto_4
    if-eqz v18, :cond_10

    .line 1259
    if-eqz p3, :cond_27

    .line 1260
    const-string v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1261
    const-string v4, "oppo_default_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1262
    const-string v4, "oppo_sms_notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2102(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1276
    :cond_10
    :goto_5
    if-eqz v19, :cond_11

    .line 1277
    if-eqz p3, :cond_29

    .line 1278
    const-string v4, "notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1279
    const-string v4, "oppo_default_notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2302(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1289
    :cond_11
    :goto_6
    return-object v6

    .line 1033
    .end local v6           #result:Landroid/net/Uri;
    .end local v15           #inserter:Landroid/media/MediaInserter;
    .end local v18           #needToSetSettings:Z
    .end local v19           #needToSetSettingsSIM2:Z
    .end local v23           #tableUri:Landroid/net/Uri;
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_5

    .line 1034
    const/4 v11, 0x0

    .line 1036
    .local v11, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v12, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #exif:Landroid/media/ExifInterface;
    .local v12, exif:Landroid/media/ExifInterface;
    move-object v11, v12

    .line 1040
    .end local v12           #exif:Landroid/media/ExifInterface;
    .restart local v11       #exif:Landroid/media/ExifInterface;
    :goto_7
    if-eqz v11, :cond_5

    .line 1041
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v16, v0

    .line 1042
    .local v16, latlng:[F
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1043
    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v16, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1044
    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1047
    :cond_13
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v24

    .line 1048
    .local v24, time:J
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_15

    .line 1049
    const-string v4, "datetaken"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1061
    :cond_14
    :goto_8
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v11, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v20

    .line 1063
    .local v20, orientation:I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_5

    .line 1066
    packed-switch v20, :pswitch_data_0

    .line 1077
    :pswitch_0
    const/4 v10, 0x0

    .line 1080
    .local v10, degree:I
    :goto_9
    const-string v4, "orientation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1055
    .end local v10           #degree:I
    .end local v20           #orientation:I
    :cond_15
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v24

    .line 1056
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v24

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_14

    .line 1057
    const-string v4, "datetaken"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    .line 1068
    .restart local v20       #orientation:I
    :pswitch_1
    const/16 v10, 0x5a

    .line 1069
    .restart local v10       #degree:I
    goto :goto_9

    .line 1071
    .end local v10           #degree:I
    :pswitch_2
    const/16 v10, 0xb4

    .line 1072
    .restart local v10       #degree:I
    goto :goto_9

    .line 1074
    .end local v10           #degree:I
    :pswitch_3
    const/16 v10, 0x10e

    .line 1075
    .restart local v10       #degree:I
    goto :goto_9

    .line 1090
    .end local v10           #degree:I
    .end local v11           #exif:Landroid/media/ExifInterface;
    .end local v16           #latlng:[F
    .end local v20           #orientation:I
    .end local v24           #time:J
    .restart local v15       #inserter:Landroid/media/MediaInserter;
    .restart local v23       #tableUri:Landroid/net/Uri;
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_1

    .line 1092
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1900(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_1

    .line 1146
    .restart local v6       #result:Landroid/net/Uri;
    .restart local v18       #needToSetSettings:Z
    .restart local v19       #needToSetSettingsSIM2:Z
    :cond_18
    if-eqz p2, :cond_1c

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2500(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2600(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2600(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1150
    :cond_19
    const/16 v18, 0x1

    .line 1154
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2700(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2800(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2800(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1157
    :cond_1b
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1161
    :cond_1c
    if-eqz p4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2900(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1164
    :cond_1d
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1183
    :cond_1e
    move-object/from16 v0, p1

    iget v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_1f

    .line 1190
    monitor-enter v15

    .line 1191
    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1192
    monitor-exit v15

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1201
    :cond_1f
    monitor-enter v15

    .line 1202
    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1203
    monitor-exit v15

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1213
    :cond_20
    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1216
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1218
    const/16 v17, 0x0

    .line 1219
    .local v17, mediaType:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1221
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1222
    .local v13, fileType:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v13

    .line 1227
    :cond_21
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1228
    const/16 v17, 0x2

    .line 1236
    :cond_22
    :goto_a
    const-string v4, "media_type"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1238
    .end local v13           #fileType:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3200(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1229
    .restart local v13       #fileType:I
    :cond_24
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1230
    const/16 v17, 0x3

    goto :goto_a

    .line 1231
    :cond_25
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1232
    const/16 v17, 0x1

    goto :goto_a

    .line 1233
    :cond_26
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1234
    const/16 v17, 0x4

    goto :goto_a

    .line 1265
    .end local v13           #fileType:I
    .end local v17           #mediaType:I
    :cond_27
    if-eqz p2, :cond_28

    .line 1266
    const-string v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1267
    const-string v4, "oppo_default_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2502(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1269
    :cond_28
    if-eqz p4, :cond_10

    .line 1270
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1271
    const-string v4, "oppo_default_alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2902(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1281
    :cond_29
    if-eqz p2, :cond_11

    .line 1282
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1283
    const-string v4, "oppo_default_ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    #setter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2702(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 1037
    .end local v6           #result:Landroid/net/Uri;
    .end local v15           #inserter:Landroid/media/MediaInserter;
    .end local v18           #needToSetSettings:Z
    .end local v19           #needToSetSettingsSIM2:Z
    .end local v23           #tableUri:Landroid/net/Uri;
    .restart local v11       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_7

    .line 1066
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 1312
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #calls: Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$200(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1313
    const/4 v2, 0x0

    .line 1334
    :cond_0
    :goto_0
    return v2

    .line 1316
    :cond_1
    const/4 v2, 0x0

    .line 1320
    .local v2, resultFileType:I
    const/4 v1, 0x0

    .line 1323
    .local v1, mDrmManagerClient:Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_2

    .line 1324
    new-instance v1, Landroid/drm/DrmManagerClient;

    .end local v1           #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1327
    .restart local v1       #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1328
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1330
    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1331
    invoke-static {v0}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 720
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 721
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 734
    .end local p3
    :goto_0
    return p3

    .line 723
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 725
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 727
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 728
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 729
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 730
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 731
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 734
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 868
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 869
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 870
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 871
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1301
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1309
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 795
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 796
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 797
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 799
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 800
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 801
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 802
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 803
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 805
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 806
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 807
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 808
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 926
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v2, "title"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v2, "date_modified"

    iget-wide v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    const-string v2, "_size"

    iget-wide v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 932
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v2, "is_drm"

    iget-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 935
    const/4 v1, 0x0

    .line 936
    .local v1, resolution:Ljava/lang/String;
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 937
    const-string v2, "width"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v2, "height"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 942
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_1

    .line 943
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 944
    const-string v3, "artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v3, "album"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v2, "duration"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    if-eqz v1, :cond_1

    .line 950
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_1
    :goto_2
    return-object v0

    .line 944
    :cond_2
    const-string v2, "<unknown>"

    goto :goto_0

    .line 946
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_1

    .line 952
    :cond_4
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 954
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    const-string v3, "artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v3, "album_artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v3, "album"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v2, "composer"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v2, "genre"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_5

    .line 964
    const-string v2, "year"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    :cond_5
    const-string v2, "track"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    const-string v2, "duration"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    const-string v2, "compilation"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 955
    :cond_6
    const-string v2, "<unknown>"

    goto :goto_3

    .line 957
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 959
    :cond_8
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/oppo/media/MediaScanner$FileEntry;
    .locals 14
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 508
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 509
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 510
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 511
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 513
    if-nez p7, :cond_3

    .line 514
    if-nez p8, :cond_0

    #calls: Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/oppo/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    const/16 p8, 0x1

    .line 517
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 520
    if-eqz p2, :cond_1

    .line 521
    invoke-static/range {p2 .. p2}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 525
    :cond_1
    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 526
    invoke-static {p1}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 527
    .local v12, mediaFileType:Lcom/oppo/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_2

    .line 528
    iget v3, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 529
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 530
    iget-object v3, v12, Lcom/oppo/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 535
    .end local v12           #mediaFileType:Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #calls: Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$200(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    invoke-direct {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 546
    :cond_3
    const/4 v2, 0x0

    .line 549
    .local v2, entry:Lcom/oppo/media/MediaScanner$FileEntry;
    move-object v11, p1

    .line 550
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$300(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 554
    :cond_4
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$400(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    check-cast v2, Lcom/oppo/media/MediaScanner$FileEntry;

    .line 561
    .restart local v2       #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$500(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 562
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    invoke-virtual {v3, p1}, Lcom/oppo/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 563
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$500(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 564
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v4, 0x0

    #setter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3, v4}, Lcom/oppo/media/MediaScanner;->access$502(Lcom/oppo/media/MediaScanner;Z)Z

    .line 570
    :cond_5
    if-eqz v2, :cond_9

    iget-wide v3, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 571
    .local v9, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_6

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_a

    :cond_6
    const/4 v13, 0x1

    .line 577
    .local v13, wasModified:Z
    :goto_1
    if-eqz v2, :cond_7

    if-eqz v13, :cond_8

    .line 578
    :cond_7
    if-eqz v13, :cond_b

    .line 579
    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    .line 584
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 587
    :cond_8
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$600(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 594
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$700(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 595
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$700(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    const/4 v2, 0x0

    .line 621
    .end local v2           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 570
    .end local v9           #delta:J
    .end local v13           #wasModified:Z
    .restart local v2       #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_9
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 571
    .restart local v9       #delta:J
    :cond_a
    const/4 v13, 0x0

    goto :goto_1

    .line 581
    .restart local v13       #wasModified:Z
    :cond_b
    new-instance v2, Lcom/oppo/media/MediaScanner$FileEntry;

    .end local v2           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_c

    const/16 v8, 0x3001

    :goto_4
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 596
    .restart local v2       #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 604
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 605
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 606
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 607
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 608
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 609
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 610
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 611
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 612
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 613
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 614
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 615
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 616
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 617
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 618
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 619
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 20
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 647
    const/16 v19, 0x0

    .local v19, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 655
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 661
    .local v4, entry:Lcom/oppo/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 662
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    .line 664
    :cond_0
    if-eqz v4, :cond_1

    .line 667
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 668
    .local v17, isvideo:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 669
    .local v16, isimage:Z
    if-nez v17, :cond_2

    if-eqz v16, :cond_3

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v3, p5, v10

    if-nez v3, :cond_3

    .line 670
    const-string v3, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " isimage ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isvideo ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fileSize is zero! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v3, 0x0

    .line 716
    .end local v4           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v16           #isimage:Z
    .end local v17           #isvideo:Z
    :goto_0
    return-object v3

    .line 674
    .restart local v4       #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    .restart local v16       #isimage:Z
    .restart local v17       #isvideo:Z
    :cond_3
    if-eqz v4, :cond_5

    iget-boolean v3, v4, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_4

    if-eqz p8, :cond_5

    .line 675
    :cond_4
    if-eqz p9, :cond_6

    .line 676
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v19

    .end local v4           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v16           #isimage:Z
    .end local v17           #isvideo:Z
    :cond_5
    :goto_1
    move-object/from16 v3, v19

    .line 716
    goto :goto_0

    .line 678
    .restart local v4       #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    .restart local v16       #isimage:Z
    .restart local v17       #isvideo:Z
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 679
    .local v18, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v5, 0x1

    .line 680
    .local v5, ringtones:Z
    :goto_2
    const-string v3, "/notifications/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_e

    const/4 v6, 0x1

    .line 681
    .local v6, notifications:Z
    :goto_3
    const-string v3, "/alarms/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_f

    const/4 v7, 0x1

    .line 682
    .local v7, alarms:Z
    :goto_4
    const-string v3, "/podcasts/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_10

    const/4 v9, 0x1

    .line 683
    .local v9, podcasts:Z
    :goto_5
    const-string v3, "/music/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_7

    if-nez v5, :cond_11

    if-nez v6, :cond_11

    if-nez v7, :cond_11

    if-nez v9, :cond_11

    :cond_7
    const/4 v8, 0x1

    .line 686
    .local v8, music:Z
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 687
    .local v15, isaudio:Z
    if-nez v15, :cond_8

    if-nez v17, :cond_8

    if-eqz v16, :cond_9

    .line 688
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v10}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 692
    .local v12, directPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 694
    move-object/from16 p1, v12

    .line 700
    .end local v12           #directPath:Ljava/lang/String;
    .end local v14           #f:Ljava/io/File;
    :cond_9
    if-nez v15, :cond_a

    if-eqz v17, :cond_b

    .line 701
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Lcom/oppo/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 704
    :cond_b
    if-eqz v16, :cond_c

    .line 705
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v3, p0

    .line 708
    invoke-direct/range {v3 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_1

    .line 679
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v15           #isaudio:Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 680
    .restart local v5       #ringtones:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 681
    .restart local v6       #notifications:Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 682
    .restart local v7       #alarms:Z
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 683
    .restart local v9       #podcasts:Z
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 711
    .end local v4           #entry:Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v9           #podcasts:Z
    .end local v16           #isimage:Z
    .end local v17           #isvideo:Z
    .end local v18           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 712
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v10, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 813
    if-nez p1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-object v7

    .line 816
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 818
    .local v4, length:I
    if-lez v4, :cond_9

    .line 819
    const/4 v6, 0x0

    .line 820
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 821
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 822
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 823
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 824
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 825
    const/4 v6, 0x1

    .line 822
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 826
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 827
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 832
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 833
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 836
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 837
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 838
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$1300()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 839
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$1300()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 832
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 840
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 842
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 845
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 846
    add-int/lit8 v3, v3, 0x1

    .line 848
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 849
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 862
    goto :goto_0

    .line 854
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 857
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 738
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 742
    :cond_0
    iput-object p2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 783
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 744
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 745
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 747
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 748
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 749
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 750
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 751
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 752
    :cond_a
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    #getter for: Lcom/oppo/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 754
    :cond_b
    invoke-virtual {p0, p2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 755
    :cond_c
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 756
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 757
    :cond_e
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 760
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 761
    .local v0, num:I
    iget v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 762
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 766
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 767
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 768
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 769
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 770
    :cond_13
    const-string v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 771
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 772
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 773
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 774
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 775
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 776
    :cond_18
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 777
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 778
    :cond_19
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 636
    .local v10, beginTime:J
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 643
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 878
    const-string v0, "audio/mp4"

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    const-string v0, "video/x-flv"

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    :cond_2
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 909
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    const/16 v0, 0x15

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 911
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 914
    :cond_4
    invoke-static {p1}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
