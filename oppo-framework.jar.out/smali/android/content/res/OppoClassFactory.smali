.class public Landroid/content/res/OppoClassFactory;
.super Ljava/lang/Object;
.source "OppoClassFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoClassFactory"


# instance fields
.field private final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OppoClassFactory;->DEBUG:Z

    .line 33
    const-string v0, "OppoClassFactory"

    const-string v1, "the OppoClassFactory is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static newResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/content/res/BaiduResources;

    invoke-direct {v0}, Landroid/content/res/BaiduResources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assetmanager"
    .parameter "displaymetrics"
    .parameter "configuration"

    .prologue
    .line 43
    new-instance v0, Landroid/content/res/BaiduResources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/BaiduResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 6
    .parameter "assetmanager"
    .parameter "displaymetrics"
    .parameter "configuration"
    .parameter "compatibilityinfo"
    .parameter "token"

    .prologue
    .line 48
    new-instance v0, Landroid/content/res/BaiduResources;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/BaiduResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    return-object v0
.end method
