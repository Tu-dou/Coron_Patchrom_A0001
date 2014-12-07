.class Lcom/android/server/WallpaperManagerService$WallpaperHelper$1;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WallpaperManagerService$WallpaperHelper;->getCurrentImageWallpaperInfo(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WallpaperManagerService$WallpaperHelper;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService$WallpaperHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper$1;->this$1:Lcom/android/server/WallpaperManagerService$WallpaperHelper;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method
