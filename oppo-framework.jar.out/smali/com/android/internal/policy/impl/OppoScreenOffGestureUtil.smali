.class public Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureUtil.java"


# static fields
.field private static POINT_COUNT:I

.field private static PROC_PATH_COORDINATE:Ljava/lang/String;

.field private static SPLIT_POINT:Ljava/lang/String;

.field private static SPLIT_X_Y:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFlagClockwise:I

.field mGestureType:I

.field mPoints:[Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "OppoScreenOffGestureUtil"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "/proc/touchpanel/coordinate"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->PROC_PATH_COORDINATE:Ljava/lang/String;

    .line 37
    const-string v0, ","

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->SPLIT_POINT:Ljava/lang/String;

    .line 38
    const-string v0, ":"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->SPLIT_X_Y:Ljava/lang/String;

    .line 41
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->POINT_COUNT:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mContext:Landroid/content/Context;

    .line 42
    sget v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->POINT_COUNT:I

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    .line 43
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mFlagClockwise:I

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public readFileFromProc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 79
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, strline:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 83
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #strline:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_0
.end method

.method public updateGestureInfo()V
    .locals 9

    .prologue
    .line 56
    :try_start_0
    sget-object v6, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->PROC_PATH_COORDINATE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->readFileFromProc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, strCoordinate:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->SPLIT_POINT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, strPoint:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v6, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->POINT_COUNT:I

    if-ge v1, v6, :cond_0

    .line 60
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v4, v6

    sget-object v7, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->SPLIT_X_Y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, strXY:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 63
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v5           #strXY:[Ljava/lang/String;
    :cond_0
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mFlagClockwise:I

    .line 68
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 69
    sget-object v6, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ************* "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mPoints:[Landroid/graphics/Point;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mFlagClockwise = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mFlagClockwise:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mGestureType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v1           #i:I
    .end local v2           #k:I
    .end local v3           #strCoordinate:Ljava/lang/String;
    .end local v4           #strPoint:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->TAG:Ljava/lang/String;

    const-string v7, "get gesture info error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method
