.class public Loppo/content/res/OppoThemeResourcesSystem;
.super Loppo/content/res/OppoThemeResources;
.source "OppoThemeResourcesSystem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoThemeResourcesSystem"

.field private static sIcons:Loppo/content/res/OppoThemeResources;

.field private static sOppo:Loppo/content/res/OppoThemeResources;


# instance fields
.field private final DEBUG:Z


# direct methods
.method public constructor <init>(Loppo/content/res/OppoThemeResourcesSystem;Landroid/content/res/Resources;Loppo/content/res/OppoThemeResources$MetaData;)V
    .locals 1
    .parameter "themeResourcesSystem"
    .parameter "resources"
    .parameter "metaData"

    .prologue
    .line 41
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Loppo/content/res/OppoThemeResources;-><init>(Loppo/content/res/OppoThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeResourcesSystem;->DEBUG:Z

    .line 43
    return-void
.end method

.method private getThemeFileStreamOPPO(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "path"
    .parameter "subPath"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 119
    :cond_0
    return-object v0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "path"
    .parameter "subPath"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Loppo/content/res/OppoThemeResourcesSystem;
    .locals 4
    .parameter "resources"

    .prologue
    .line 46
    const-string v3, "icons"

    invoke-static {p0, v3}, Loppo/content/res/OppoThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResources;

    move-result-object v3

    sput-object v3, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    .line 47
    const-string v3, "oppo-framework-res"

    invoke-static {p0, v3}, Loppo/content/res/OppoThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResources;

    move-result-object v3

    sput-object v3, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, themeresourcessystem:Loppo/content/res/OppoThemeResourcesSystem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Loppo/content/res/OppoThemeResourcesSystem;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 52
    new-instance v1, Loppo/content/res/OppoThemeResourcesSystem;

    sget-object v3, Loppo/content/res/OppoThemeResourcesSystem;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, v3}, Loppo/content/res/OppoThemeResourcesSystem;-><init>(Loppo/content/res/OppoThemeResourcesSystem;Landroid/content/res/Resources;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 54
    .local v1, res:Loppo/content/res/OppoThemeResourcesSystem;
    move-object v2, v1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v1           #res:Loppo/content/res/OppoThemeResourcesSystem;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 61
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 62
    invoke-super {p0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resources"
    .parameter "path"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 68
    .local v3, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x0

    .line 69
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    invoke-virtual {p0, p2, v4}, Loppo/content/res/OppoThemeResourcesSystem;->getIconStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 71
    if-nez v3, :cond_0

    .line 72
    :try_start_0
    iget v4, v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v4, :cond_0

    .line 73
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v4, v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 75
    iget-object v4, v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v1, v2

    .line 81
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz v3, :cond_1

    .line 82
    :try_start_2
    iget-object v4, v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 87
    :cond_1
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v4

    .line 81
    :goto_1
    if-eqz v3, :cond_1

    .line 82
    :try_start_3
    iget-object v4, v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v4

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v4

    .line 81
    :goto_2
    if-eqz v3, :cond_2

    .line 82
    :try_start_4
    iget-object v5, v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 85
    :cond_2
    :goto_3
    throw v4

    .line 84
    :catch_2
    move-exception v5

    goto :goto_3

    .line 80
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    goto :goto_2

    .line 78
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    goto :goto_1

    .line 84
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public getIconStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "path"

    .prologue
    .line 91
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIconStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "path"
    .parameter "useWrap"

    .prologue
    .line 94
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0, p1, p2}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, lockWallpaperFile:Ljava/io/File;
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, res:Ljava/lang/CharSequence;
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    :cond_0
    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 105
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, themeFileInfo:Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-eqz p2, :cond_0

    .line 125
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, res:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 127
    invoke-direct {p0, p2, v0}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStreamOPPO(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 132
    .end local v0           #res:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 129
    .restart local v0       #res:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v0}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, res:Ljava/lang/Integer;
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    :cond_0
    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 143
    :cond_1
    return-object v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, flage:Z
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 149
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 151
    :cond_0
    return v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, flage:Z
    invoke-super {p0}, Loppo/content/res/OppoThemeResources;->hasValues()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeResources;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Loppo/content/res/OppoThemeResourcesSystem;->isValidInner()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->isValid()Z

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

.method public resetIcons()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 170
    return-void
.end method
