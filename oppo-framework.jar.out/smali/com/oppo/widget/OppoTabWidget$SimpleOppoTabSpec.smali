.class public Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
.super Ljava/lang/Object;
.source "OppoTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOppoTabSpec"
.end annotation


# instance fields
.field private mHighlightTabIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalTabIcon:Landroid/graphics/drawable/Drawable;

.field private mTabArea:Landroid/graphics/RectF;

.field private mTabLabel:Ljava/lang/CharSequence;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    .line 1340
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNormalTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1341
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHighlightTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1342
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    .line 1345
    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTag:Ljava/lang/String;

    .line 1352
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTag:Ljava/lang/String;

    .line 1353
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    .line 1354
    return-void
.end method


# virtual methods
.method public getHighlightTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHighlightTabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNormalTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNormalTabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTabLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setTabArea(Landroid/graphics/RectF;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 2
    .parameter "area"

    .prologue
    .line 1383
    if-nez p1, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param passed to setTabArea is illegal!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1387
    return-object p0
.end method

.method public setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 0
    .parameter "norTabIcon"
    .parameter "hlTabIcon"

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mNormalTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1375
    iput-object p2, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mHighlightTabIcon:Landroid/graphics/drawable/Drawable;

    .line 1376
    return-object p0
.end method

.method public setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 0
    .parameter "label"

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->mTabLabel:Ljava/lang/CharSequence;

    .line 1367
    return-object p0
.end method
