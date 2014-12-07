.class public Lcom/oppo/widget/Oppo3DGLRenderer;
.super Ljava/lang/Object;
.source "Oppo3DGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;,
        Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;
    }
.end annotation


# static fields
.field protected static final CLOCKS_PER_SEC:I = 0x3e8

.field private static final DRAW_LOG:Z = false

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "Oppo3DGLRenderer"

.field protected static final mAmbient:[F

.field protected static final mDiffuse:[F

.field protected static final mEmission:[F

.field protected static final mShininess:F

.field protected static final mSpecular:[F


# instance fields
.field private TEXTURE_BUFFER_LEN:I

.field protected mContext:Landroid/content/Context;

.field protected mEnableTexFlag:Z

.field protected mLightPos:[F

.field protected mMatModel:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatProject:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatView:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatrixProjectArray:[F

.field protected mModelDistance:F

.field protected mModelHeight:F

.field protected mModelWidth:F

.field protected mNeedUpdateTex:Z

.field protected mOppo3DGLView:Lcom/oppo/widget/Oppo3DGLView;

.field protected mSphereCenter:Lcom/oppo/model/lib/Vector3f;

.field protected mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

.field private mTextureInfoBufferIndex:I

.field protected mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

.field protected mViewport:[I

.field protected mvCenter:Lcom/oppo/model/lib/Vector3f;

.field protected mvEye:Lcom/oppo/model/lib/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 60
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mAmbient:[F

    .line 61
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mDiffuse:[F

    .line 62
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mSpecular:[F

    .line 63
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEmission:[F

    return-void

    .line 60
    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 62
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 63
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/Oppo3DGLView;)V
    .locals 5
    .parameter "context"
    .parameter "oppo3DGLView"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v1, 0x14

    iput v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    .line 70
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    .line 72
    new-instance v1, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v1}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 74
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatrixProjectArray:[F

    .line 76
    new-instance v1, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v1}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 78
    new-instance v1, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v1}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 80
    new-instance v1, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v1, v2, v2, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    .line 82
    new-instance v1, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v1, v2, v2, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 84
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mLightPos:[F

    .line 101
    iput v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    .line 139
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mOppo3DGLView:Lcom/oppo/widget/Oppo3DGLView;

    .line 143
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput v3, v1, v3

    .line 144
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 145
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 146
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 148
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    .line 154
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_1
    return-void
.end method

.method public static LoadMdModel(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/model/md2/MdModel;
    .locals 6
    .parameter "context"
    .parameter "modelName"
    .parameter "reverseNormal"

    .prologue
    const/4 v3, 0x0

    .line 167
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/oppo/widget/Oppo3DGLRenderer;->LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZ)Lcom/oppo/model/md2/MdModel;

    move-result-object v0

    return-object v0
.end method

.method public static LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZ)Lcom/oppo/model/md2/MdModel;
    .locals 7
    .parameter "context"
    .parameter "modelName"
    .parameter "reverseNormal"
    .parameter "enableBack"
    .parameter "enableRegion"
    .parameter "enableShadow"

    .prologue
    .line 182
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/oppo/widget/Oppo3DGLRenderer;->LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZI)Lcom/oppo/model/md2/MdModel;

    move-result-object v0

    return-object v0
.end method

.method public static LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZI)Lcom/oppo/model/md2/MdModel;
    .locals 10
    .parameter "context"
    .parameter "modelName"
    .parameter "reverseNormal"
    .parameter "enableBack"
    .parameter "enableRegion"
    .parameter "enableShadow"
    .parameter "regionFrame"

    .prologue
    .line 199
    const/4 v9, 0x0

    .line 202
    .local v9, mdModel:Lcom/oppo/model/md2/MdModel;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 203
    .local v7, am:Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 205
    .local v1, is:Ljava/io/InputStream;
    new-instance v0, Lcom/oppo/model/md2/MdModel;

    invoke-direct {v0}, Lcom/oppo/model/md2/MdModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9           #mdModel:Lcom/oppo/model/md2/MdModel;
    .local v0, mdModel:Lcom/oppo/model/md2/MdModel;
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 207
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;ZZZZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string v2, "Oppo3DGLRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load Model Failed. modelName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v2, 0x0

    .line 219
    .end local v1           #is:Ljava/io/InputStream;
    .end local v7           #am:Landroid/content/res/AssetManager;
    :goto_0
    return-object v2

    .line 213
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v7       #am:Landroid/content/res/AssetManager;
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    .line 219
    goto :goto_0

    .line 214
    .end local v0           #mdModel:Lcom/oppo/model/md2/MdModel;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v7           #am:Landroid/content/res/AssetManager;
    .restart local v9       #mdModel:Lcom/oppo/model/md2/MdModel;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 215
    .end local v9           #mdModel:Lcom/oppo/model/md2/MdModel;
    .restart local v0       #mdModel:Lcom/oppo/model/md2/MdModel;
    .local v8, ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v7       #am:Landroid/content/res/AssetManager;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public static LoadMsModel(Landroid/content/Context;Ljava/lang/String;)Lcom/oppo/model/ms3d/MsModel;
    .locals 1
    .parameter "context"
    .parameter "modelName"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/widget/Oppo3DGLRenderer;->LoadMsModel(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v0

    return-object v0
.end method

.method public static LoadMsModel(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/model/ms3d/MsModel;
    .locals 9
    .parameter "context"
    .parameter "modelName"
    .parameter "enableShadow"

    .prologue
    const/4 v5, 0x0

    .line 240
    const/4 v3, 0x0

    .line 243
    .local v3, msModel:Lcom/oppo/model/ms3d/MsModel;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 244
    .local v0, am:Landroid/content/res/AssetManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "model/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 246
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Lcom/oppo/model/ms3d/MsModel;

    invoke-direct {v4}, Lcom/oppo/model/ms3d/MsModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v3           #msModel:Lcom/oppo/model/ms3d/MsModel;
    .local v4, msModel:Lcom/oppo/model/ms3d/MsModel;
    :try_start_1
    invoke-virtual {v4, v2, p2}, Lcom/oppo/model/ms3d/MsModel;->Load(Ljava/io/InputStream;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 249
    const-string v6, "Oppo3DGLRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Model Failed. modelName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4           #msModel:Lcom/oppo/model/ms3d/MsModel;
    .restart local v3       #msModel:Lcom/oppo/model/ms3d/MsModel;
    move-object v4, v5

    .line 259
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 253
    .end local v3           #msModel:Lcom/oppo/model/ms3d/MsModel;
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #msModel:Lcom/oppo/model/ms3d/MsModel;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 259
    .end local v4           #msModel:Lcom/oppo/model/ms3d/MsModel;
    .restart local v3       #msModel:Lcom/oppo/model/ms3d/MsModel;
    goto :goto_0

    .line 254
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 255
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 256
    goto :goto_0

    .line 254
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #msModel:Lcom/oppo/model/ms3d/MsModel;
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #msModel:Lcom/oppo/model/ms3d/MsModel;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #msModel:Lcom/oppo/model/ms3d/MsModel;
    .restart local v3       #msModel:Lcom/oppo/model/ms3d/MsModel;
    goto :goto_1
.end method

.method public static ReleaseModel(Lcom/oppo/model/md2/MdModel;)V
    .locals 0
    .parameter "mdModel"

    .prologue
    .line 271
    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/oppo/model/md2/MdModel;->releaseModel()V

    .line 274
    :cond_0
    return-void
.end method

.method public static ReleaseModel(Lcom/oppo/model/ms3d/MsModel;)V
    .locals 0
    .parameter "msModel"

    .prologue
    .line 285
    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/oppo/model/ms3d/MsModel;->releaseModel()V

    .line 288
    :cond_0
    return-void
.end method

.method private clearUpdateTexBuffer()V
    .locals 3

    .prologue
    .line 726
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    .line 730
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 732
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_1
    return-void
.end method

.method private findTextureInfo(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 605
    const/4 v1, 0x0

    .line 607
    .local v1, textureId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-eqz v2, :cond_1

    .line 609
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 614
    :cond_0
    return v1

    .line 607
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private insertTextureInfo(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I
    .locals 5
    .parameter "gl"
    .parameter "index"
    .parameter "bitmap"

    .prologue
    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, insert:Z
    const/4 v2, 0x0

    .line 629
    .local v2, textureId:I
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    const/16 v4, 0x2100

    invoke-static {v3, p1, p3, v4}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)I

    move-result v2

    .line 631
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    const/4 p3, 0x0

    .line 634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v3, :cond_0

    .line 636
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-nez v3, :cond_2

    .line 637
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v3, v3, v0

    iput v2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 638
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v3, v3, v0

    iput p2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 639
    const/4 v1, 0x1

    .line 644
    :cond_0
    if-nez v1, :cond_1

    .line 645
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    invoke-static {p1, v3}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 646
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    aget-object v3, v3, v4

    iput v2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 647
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    aget-object v3, v3, v4

    iput p2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 649
    iget v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    .line 650
    iget v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-lt v3, v4, :cond_1

    .line 651
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    .line 654
    :cond_1
    return v2

    .line 634
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private insertUpdateTexInfo(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "index"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, insert:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 680
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iput-object p2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 681
    const/4 v1, 0x1

    .line 682
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    .line 687
    :cond_0
    if-nez v1, :cond_1

    .line 688
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 690
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iput p1, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    .line 691
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iput-object p2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 692
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    .line 697
    :cond_1
    return-void

    .line 676
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateTextureBuffer(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 705
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    if-nez v1, :cond_0

    .line 720
    :goto_0
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_2

    .line 711
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/widget/Oppo3DGLRenderer;->insertTextureInfo(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    .line 713
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    .line 714
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 715
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 709
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 719
    :cond_2
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    goto :goto_0
.end method


# virtual methods
.method protected bindMaterial(Ljavax/microedition/khronos/opengles/GL10;Lcom/oppo/model/ms3d/MsModel;I)V
    .locals 8
    .parameter "gl"
    .parameter "msModel"
    .parameter "materialIndex"

    .prologue
    const/16 v7, 0xbc0

    const/4 v6, 0x1

    const/16 v5, 0x408

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 401
    if-ltz p3, :cond_0

    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getNumMaterials()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 402
    :cond_0
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 403
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 404
    const/16 v1, 0x2802

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 405
    const/16 v1, 0x2803

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 406
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 407
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 408
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 409
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 410
    const/16 v1, 0xde1

    invoke-interface {p1, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 411
    const/16 v1, 0x1200

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mAmbient:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 412
    const/16 v1, 0x1201

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mDiffuse:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 413
    const/16 v1, 0x1202

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mSpecular:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 414
    const/16 v1, 0x1600

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mEmission:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 415
    const/16 v1, 0x1601

    const/4 v2, 0x0

    invoke-interface {p1, v5, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 447
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p2, p3}, Lcom/oppo/model/ms3d/MsModel;->getMaterial(I)Lcom/oppo/model/ms3d/MsMaterial;

    move-result-object v0

    .line 419
    .local v0, msMaterial:Lcom/oppo/model/ms3d/MsMaterial;
    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getTransparency()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getMode()S

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 421
    :cond_2
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 422
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 423
    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getTransparency()F

    move-result v1

    invoke-interface {p1, v3, v3, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 424
    const/16 v1, 0xb52

    invoke-interface {p1, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 426
    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getTransparencyMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 427
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 428
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 429
    const/16 v1, 0x204

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 441
    :cond_3
    :goto_1
    const/16 v1, 0x1200

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getAmbient()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 442
    const/16 v1, 0x1201

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getDiffuse()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 443
    const/16 v1, 0x1202

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getSpecular()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 444
    const/16 v1, 0x1600

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getEmissive()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 445
    const/16 v1, 0x1601

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getShininess()F

    move-result v2

    invoke-interface {p1, v5, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    goto :goto_0

    .line 430
    :cond_4
    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getTransparencyMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 431
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 432
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 433
    const/16 v1, 0x204

    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getAlphaRef()F

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    goto :goto_1

    .line 436
    :cond_5
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 437
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 438
    const/16 v1, 0xb52

    invoke-interface {p1, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    goto :goto_1
.end method

.method public clearTextureInfo(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 589
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    invoke-static {v1}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(I)Z

    .line 592
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 593
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 589
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_1
    return-void
.end method

.method public clearTextureInfoBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-lez v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    invoke-static {v1}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(I)Z

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 579
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_1
    return-void
.end method

.method protected disableClientState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 522
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 523
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 524
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 525
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 527
    return-void
.end method

.method protected disableTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    if-eqz v0, :cond_0

    .line 486
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 487
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 490
    :cond_0
    return-void
.end method

.method protected drawArraysData(Ljavax/microedition/khronos/opengles/GL10;ZILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 3
    .parameter "gl"
    .parameter "enableLight"
    .parameter "trangles"
    .parameter "normalBuf"
    .parameter "vertexBuf"

    .prologue
    const/16 v1, 0x1406

    const/4 v2, 0x0

    .line 499
    if-nez p5, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    if-eqz p2, :cond_2

    .line 504
    if-eqz p4, :cond_0

    .line 508
    invoke-interface {p1, v1, v2, p4}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 511
    :cond_2
    const/4 v0, 0x3

    invoke-interface {p1, v0, v1, v2, p5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 513
    const/4 v0, 0x4

    mul-int/lit8 v1, p3, 0x3

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_0
.end method

.method protected enableLighting(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 4
    .parameter "gl"
    .parameter "enable"

    .prologue
    const/16 v0, 0xb50

    const/16 v3, 0x4000

    .line 383
    if-eqz p2, :cond_0

    .line 384
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 385
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 386
    const/16 v0, 0x1203

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mLightPos:[F

    const/4 v2, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 389
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method protected enableTexture(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;)V
    .locals 3
    .parameter "gl"
    .parameter "textureId"
    .parameter "texEnv"
    .parameter "texCoordBuf"

    .prologue
    const/16 v1, 0xde1

    .line 458
    if-gtz p2, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    if-eqz p4, :cond_0

    .line 464
    const/16 v0, 0x1e01

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2100

    if-ne p3, v0, :cond_0

    .line 468
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    if-nez v0, :cond_3

    .line 469
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 470
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 474
    :cond_3
    invoke-interface {p1, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 475
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    int-to-float v2, p3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 476
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method protected getTextureId(Ljavax/microedition/khronos/opengles/GL10;I)I
    .locals 5
    .parameter "gl"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, textureId:I
    invoke-direct {p0, p2}, Lcom/oppo/widget/Oppo3DGLRenderer;->findTextureInfo(I)I

    move-result v1

    .line 561
    if-nez v1, :cond_0

    .line 562
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mOppo3DGLView:Lcom/oppo/widget/Oppo3DGLView;

    sget-object v3, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    invoke-virtual {v2, v3, p2, v4, v4}, Lcom/oppo/widget/Oppo3DGLView;->invokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 565
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/Oppo3DGLRenderer;->insertTextureInfo(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 567
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return v1
.end method

.method protected initTextureInfo(Lcom/oppo/model/ms3d/MsModel;[Ljava/lang/String;[I)Z
    .locals 14
    .parameter "msModel"
    .parameter "nameArray"
    .parameter "indexArray"

    .prologue
    .line 746
    if-nez p1, :cond_0

    .line 747
    const-string v11, "Oppo3DGLRenderer"

    const-string v12, "initTextureInfo msModel null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v11, 0x0

    .line 809
    :goto_0
    return v11

    .line 750
    :cond_0
    if-nez p2, :cond_1

    .line 751
    const-string v11, "Oppo3DGLRenderer"

    const-string v12, "initTextureInfo nameArray null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v11, 0x0

    goto :goto_0

    .line 754
    :cond_1
    if-nez p3, :cond_2

    .line 755
    const-string v11, "Oppo3DGLRenderer"

    const-string v12, "initTextureInfo indexArray null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v11, 0x0

    goto :goto_0

    .line 758
    :cond_2
    move-object/from16 v0, p2

    array-length v11, v0

    move-object/from16 v0, p3

    array-length v12, v0

    if-eq v11, v12, :cond_3

    .line 759
    const-string v11, "Oppo3DGLRenderer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initTextureInfo nameArray.length:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != indexArray.length:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v11, 0x0

    goto :goto_0

    .line 764
    :cond_3
    const/4 v2, 0x0

    .line 765
    .local v2, i:I
    const/4 v3, 0x0

    .line 766
    .local v3, j:I
    const/4 v8, -0x1

    .line 767
    .local v8, textureIndex:I
    const/4 v5, 0x0

    .line 768
    .local v5, materialIndex:I
    const/4 v10, 0x0

    .line 769
    .local v10, textureName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 770
    .local v6, msGroup:Lcom/oppo/model/ms3d/MsGroup;
    invoke-virtual {p1}, Lcom/oppo/model/ms3d/MsModel;->getNumGroups()I

    move-result v1

    .line 771
    .local v1, groups:I
    move-object/from16 v0, p2

    array-length v4, v0

    .line 773
    .local v4, length:I
    const/4 v7, 0x0

    .line 774
    .local v7, size:I
    invoke-virtual {p1}, Lcom/oppo/model/ms3d/MsModel;->getTextureList()Ljava/util/ArrayList;

    move-result-object v9

    .line 775
    .local v9, textureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/model/lib/TextureInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 778
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_4

    .line 779
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oppo/model/lib/TextureInfo;

    invoke-virtual {v11}, Lcom/oppo/model/lib/TextureInfo;->getTextureName()Ljava/lang/String;

    move-result-object v10

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 784
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_8

    .line 785
    const/4 v8, -0x1

    .line 786
    invoke-virtual {p1, v2}, Lcom/oppo/model/ms3d/MsModel;->getGroup(I)Lcom/oppo/model/ms3d/MsGroup;

    move-result-object v6

    .line 787
    invoke-virtual {v6}, Lcom/oppo/model/ms3d/MsGroup;->getMaterialIndex()B

    move-result v5

    .line 790
    const/4 v11, -0x1

    if-eq v5, v11, :cond_7

    .line 791
    invoke-virtual {p1, v5}, Lcom/oppo/model/ms3d/MsModel;->getMaterial(I)Lcom/oppo/model/ms3d/MsMaterial;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oppo/model/ms3d/MsMaterial;->getTexture()Ljava/lang/String;

    move-result-object v10

    .line 794
    if-eqz v10, :cond_5

    .line 795
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    .line 796
    aget-object v11, p2, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 797
    aget v8, p3, v3

    .line 804
    :cond_5
    invoke-virtual {v6, v8}, Lcom/oppo/model/ms3d/MsGroup;->setTextureIndex(I)V

    .line 784
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 795
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 806
    :cond_7
    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Lcom/oppo/model/ms3d/MsGroup;->setTextureIndex(I)V

    goto :goto_4

    .line 809
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearUpdateTexBuffer()V

    .line 362
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 354
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 355
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DGLRenderer;->updateTextureBuffer(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 356
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 328
    int-to-float v1, p2

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 330
    .local v0, radio:F
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 332
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput v3, v1, v3

    .line 333
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 334
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x2

    aput p2, v1, v2

    .line 335
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x3

    aput p3, v1, v2

    .line 337
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 338
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 339
    const/high16 v1, 0x4234

    const/high16 v2, 0x3f80

    const v3, 0x459c4000

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oppo/model/lib/Matrix4f;->gluPersective(FFFFLcom/oppo/model/lib/Matrix4f;)V

    .line 341
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v1}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 342
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatrixProjectArray:[F

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Matrix4f;->fillFloatArray([F)V

    .line 344
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 345
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 302
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 303
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 304
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 305
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 306
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 307
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 308
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 309
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 310
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 311
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 313
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearTextureInfoBuffer()V

    .line 314
    return-void
.end method

.method public setTextureBufferSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearUpdateTexBuffer()V

    .line 822
    iput p1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    .line 824
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    .line 831
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    :cond_1
    return-void
.end method

.method protected setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 370
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 371
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 372
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/ModelUtils;->UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->gluLookAt(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Matrix4f;)V

    .line 373
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 374
    return-void
.end method

.method protected updateRenderBuffer(Lcom/oppo/model/ms3d/MsModel;FZFF)V
    .locals 1
    .parameter "msModel"
    .parameter "curFrame"
    .parameter "enableLight"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/4 v0, 0x1

    .line 540
    if-nez p1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oppo/model/ms3d/MsModel;->setFrame(F)V

    .line 545
    invoke-virtual {p1, v0}, Lcom/oppo/model/ms3d/MsModel;->setDirtFlag(I)V

    .line 546
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {p1, v0, p4, p5}, Lcom/oppo/model/ms3d/MsModel;->fillRenderBuffer(IFF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateTexture(ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "index"
    .parameter "bitmap"

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearTextureInfo(I)V

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/Oppo3DGLRenderer;->insertUpdateTexInfo(ILandroid/graphics/Bitmap;)V

    .line 666
    return-void
.end method
