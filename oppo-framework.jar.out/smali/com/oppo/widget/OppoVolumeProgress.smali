.class public Lcom/oppo/widget/OppoVolumeProgress;
.super Landroid/widget/ImageView;
.source "OppoVolumeProgress.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VolumePanel/OppoVolumeProgress"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mHeight:I

.field private mLeftProgress:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRightProgress:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 41
    iput v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mProgress:I

    .line 42
    iput v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    .line 43
    iput v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    .line 47
    iput-object p1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/oppo/widget/OppoVolumeProgress;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoVolumeProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 41
    iput v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mProgress:I

    .line 42
    iput v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    .line 43
    iput v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    .line 57
    iput-object p1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/oppo/widget/OppoVolumeProgress;->init()V

    .line 59
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 77
    iput v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mProgress:I

    .line 78
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 135
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0804b1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    .line 137
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0804b2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    .line 140
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 146
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    iput-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    iput-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    .line 154
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x43b4

    const/high16 v6, 0x42c8

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 96
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mProgress:I

    int-to-float v0, v1

    .line 100
    .local v0, p:F
    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/high16 v1, 0x4248

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v5, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 108
    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 109
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    mul-float v1, v0, v7

    div-float/2addr v1, v6

    const/high16 v2, 0x4334

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 111
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v1, v1

    neg-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    int-to-float v2, v2

    neg-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 114
    :cond_3
    cmpg-float v1, v0, v6

    if-gtz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mRightProgress:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 119
    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 120
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    mul-float v1, v0, v7

    div-float/2addr v1, v6

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 122
    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    int-to-float v1, v1

    neg-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    int-to-float v2, v2

    neg-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    iget-object v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mLeftProgress:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/widget/OppoVolumeProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 91
    iget v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoVolumeProgress;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method

.method public updateProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 82
    iget v0, p0, Lcom/oppo/widget/OppoVolumeProgress;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/oppo/widget/OppoVolumeProgress;->mProgress:I

    .line 85
    invoke-virtual {p0}, Lcom/oppo/widget/OppoVolumeProgress;->postInvalidate()V

    .line 87
    :cond_0
    return-void
.end method
