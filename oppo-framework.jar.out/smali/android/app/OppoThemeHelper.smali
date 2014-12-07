.class public Landroid/app/OppoThemeHelper;
.super Ljava/lang/Object;
.source "OppoThemeHelper.java"


# static fields
.field private static final COMPLEX_UNIT_DIP:I = 0x1

.field private static final COMPLEX_UNIT_PX:I = 0x0

.field private static final COMPLEX_UNIT_SP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoThemeHelper"

.field private static hasInit:Z


# instance fields
.field private final debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OppoThemeHelper;->hasInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/OppoThemeHelper;->debug:Z

    .line 53
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "packagemanager"
    .parameter "packageName"
    .parameter "id"
    .parameter "applicationinfo"
    .parameter "packageiteminfo"
    .parameter "flag"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v1, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v1}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .parameter "packagemanager"
    .parameter "packageName"
    .parameter "id"
    .parameter "applicationinfo"
    .parameter "name"

    .prologue
    .line 84
    const-class v19, Landroid/app/OppoThemeHelper;

    monitor-enter v19

    :try_start_0
    new-instance v12, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v1}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v12, rName:Landroid/app/ApplicationPackageManager$ResourceName;
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 86
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    move-object/from16 v18, v3

    .line 175
    .end local p0
    :goto_0
    monitor-exit v19

    return-object v18

    .line 89
    .restart local p0
    :cond_0
    const/4 v11, 0x1

    .line 90
    .local v11, parseSucceed:Z
    if-nez p3, :cond_1

    .line 92
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p3

    .line 111
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 112
    .local v13, res:Landroid/content/res/Resources;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/content/res/Resources;->getThemeChanged()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 113
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->setIsThemeChanged(Z)V

    .line 114
    invoke-static {v13}, Lcom/oppo/theme/OppoConvertIcon;->initConvertIcon(Landroid/content/res/Resources;)V

    .line 115
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->parseIconXml()Z

    move-result v11

    .line 125
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 126
    .local v10, pString:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 127
    invoke-static/range {p3 .. p3}, Lcom/oppo/theme/OppoAppIconInfo;->isThirdPart(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    .line 128
    .local v8, isThirdPart:Z
    if-nez v8, :cond_c

    .line 129
    sget-boolean v17, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    .line 130
    .local v17, useWrap:Z
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, resName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 132
    .local v15, sB:Ljava/lang/StringBuffer;
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 134
    .local v7, index:I
    if-ltz v7, :cond_3

    .line 135
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 138
    :cond_3
    if-eqz v10, :cond_b

    .line 139
    invoke-static {v10}, Lcom/oppo/theme/OppoAppIconInfo;->isThirdPartbyIconName(Ljava/lang/String;)Z

    move-result v9

    .line 141
    .local v9, isThirdPartByIconName:Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oppo/theme/OppoAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result v6

    .line 143
    .local v6, iconIndex:I
    if-ltz v6, :cond_9

    invoke-static {v6}, Lcom/oppo/theme/OppoAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, tempStr:Ljava/lang/String;
    :goto_2
    if-eqz v16, :cond_a

    if-eqz v9, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 147
    move/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 154
    .end local v6           #iconIndex:I
    .end local v9           #isThirdPartByIconName:Z
    .end local v16           #tempStr:Ljava/lang/String;
    :goto_3
    if-nez v3, :cond_4

    .line 155
    const/4 v8, 0x1

    .line 156
    invoke-virtual/range {p0 .. p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 161
    .end local v7           #index:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #sB:Ljava/lang/StringBuffer;
    .end local v17           #useWrap:Z
    :cond_4
    :goto_4
    if-nez v3, :cond_e

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    move-object v4, v3

    .line 164
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v4, :cond_d

    if-eqz v11, :cond_d

    .line 165
    :try_start_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v4, v13, v8}, Lcom/oppo/theme/OppoConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v13, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #isThirdPart:Z
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 173
    :try_start_4
    check-cast p0, Landroid/app/ApplicationPackageManager;

    .end local p0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object/from16 v18, v3

    .line 175
    goto/16 :goto_0

    .line 93
    .end local v10           #pString:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    .restart local p0
    :catch_0
    move-exception v5

    .line 94
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 117
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13       #res:Landroid/content/res/Resources;
    :cond_7
    if-eqz v13, :cond_8

    :try_start_5
    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->hasInit()Z

    move-result v18

    if-nez v18, :cond_8

    .line 118
    invoke-static {v13}, Lcom/oppo/theme/OppoConvertIcon;->initConvertIcon(Landroid/content/res/Resources;)V

    .line 120
    :cond_8
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->getAppsNumbers()I

    move-result v18

    if-gtz v18, :cond_2

    .line 121
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->parseIconXml()Z

    move-result v11

    goto/16 :goto_1

    .line 143
    .restart local v6       #iconIndex:I
    .restart local v7       #index:I
    .restart local v8       #isThirdPart:Z
    .restart local v9       #isThirdPartByIconName:Z
    .restart local v10       #pString:Ljava/lang/String;
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #sB:Ljava/lang/StringBuffer;
    .restart local v17       #useWrap:Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 149
    .restart local v16       #tempStr:Ljava/lang/String;
    :cond_a
    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->loadIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 152
    .end local v6           #iconIndex:I
    .end local v9           #isThirdPartByIconName:Z
    .end local v16           #tempStr:Ljava/lang/String;
    :cond_b
    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->loadIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 159
    .end local v7           #index:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #sB:Ljava/lang/StringBuffer;
    .end local v17           #useWrap:Z
    :cond_c
    invoke-virtual/range {p0 .. p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v3

    goto :goto_4

    .line 169
    .end local v8           #isThirdPart:Z
    .end local v10           #pString:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v5

    .line 170
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 84
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #parseSucceed:Z
    .end local v12           #rName:Landroid/app/ApplicationPackageManager$ResourceName;
    .end local p0
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 169
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v8       #isThirdPart:Z
    .restart local v10       #pString:Ljava/lang/String;
    .restart local v11       #parseSucceed:Z
    .restart local v12       #rName:Landroid/app/ApplicationPackageManager$ResourceName;
    .restart local v13       #res:Landroid/content/res/Resources;
    .restart local p0
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object v3, v4

    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_6

    :cond_e
    move-object v4, v3

    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_5
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 56
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 60
    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "i"
    .parameter "configuration"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 64
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Landroid/app/OppoThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 1
    .parameter "intentfilter"

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, flage:Z
    return v0
.end method

.method public static parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .parameter "res"
    .parameter "dimension"

    .prologue
    const/4 v5, 0x0

    .line 188
    if-eqz p1, :cond_0

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, numberString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 191
    .local v0, complexString:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, index:I
    if-gtz v2, :cond_1

    .line 212
    .end local v0           #complexString:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #numberString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 195
    .restart local v0       #complexString:Ljava/lang/String;
    .restart local v2       #index:I
    .restart local v4       #numberString:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 198
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 201
    .local v1, dim:I
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 202
    .local v3, metrics:Landroid/util/DisplayMetrics;
    const-string v6, "px"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 204
    :cond_2
    const-string v6, "dp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "dip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 205
    :cond_3
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 206
    :cond_4
    const-string v6, "sp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method
