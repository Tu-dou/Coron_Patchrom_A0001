.class public Lcom/oppo/widget/OppoTabWidget;
.super Landroid/view/View;
.source "OppoTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;,
        Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_STATE_SET:[I = null

.field private static final SUSPENSION:Ljava/lang/String; = ".."

.field private static final TAG:Ljava/lang/String; = "OppoTabWidget"


# instance fields
.field private mClickRequestFocus:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurFocusTabIndex:I

.field private mCurIsLandMode:Z

.field private mDefaultTextSize:I

.field private mDefaultTextSizeLandscape:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeightRatioLand:F

.field private mHeightRatioPor:F

.field private mHlTabIconOffsetToNonHlTabIconInYDir:I

.field private mIconHeight:I

.field private mIconHeightLandRatio:F

.field private mIconHeightPortRatio:F

.field private mIconMarginToTop:I

.field private mInitTabsAreaDone:Z

.field private mLabelFocusColor:I

.field private mLabelMarginToBottom:I

.field private mLabelNorColor:I

.field private mLabelTextSize:I

.field private mMultiTouch:Z

.field private mOldFocusTabIndex:I

.field private mOnlyTextSize:I

.field private mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

.field private mOppoTabSpecsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mTabBgLeft:Landroid/graphics/drawable/Drawable;

.field private mTabBgMiddle:Landroid/graphics/drawable/Drawable;

.field private mTabBgRight:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgRight:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgTransparentAreaWidth:I

.field private mTabMaxCount:I

.field private mTabSideMargin:I

.field private mTabSideMarginRation:F

.field private mTabTopShadowHeight:I

.field private mTabWidgetBg:Landroid/graphics/drawable/Drawable;

.field private mWaitTouchUpFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/oppo/widget/OppoTabWidget;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    .line 76
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 77
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 78
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 80
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    .line 81
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 83
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    .line 84
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    .line 85
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 86
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 87
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    .line 88
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    .line 89
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    .line 90
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    .line 91
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    .line 92
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    .line 93
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    .line 94
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    .line 96
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    .line 98
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 100
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    .line 101
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 103
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    .line 105
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 107
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 108
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    .line 117
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgLeft:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgRight:Landroid/graphics/drawable/Drawable;

    .line 120
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

    .line 121
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 122
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgRight:Landroid/graphics/drawable/Drawable;

    .line 123
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    .line 125
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mClickRequestFocus:Z

    .line 134
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    .line 136
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 138
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 153
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->getDrawables()V

    .line 156
    sget-object v8, Loppo/R$styleable;->OppoTabWidget:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 161
    .local v5, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 162
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 163
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    goto :goto_1

    .line 169
    :pswitch_2
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    goto :goto_1

    .line 173
    :pswitch_3
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    goto :goto_1

    .line 177
    :pswitch_4
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    goto :goto_1

    .line 181
    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    goto :goto_1

    .line 185
    :pswitch_6
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    goto :goto_1

    .line 189
    :pswitch_7
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    goto :goto_1

    .line 193
    :pswitch_8
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    goto :goto_1

    .line 197
    :pswitch_9
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    goto :goto_1

    .line 201
    :pswitch_a
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    goto :goto_1

    .line 205
    :pswitch_b
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    goto :goto_1

    .line 209
    :pswitch_c
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    goto :goto_1

    .line 215
    .end local v1           #attr:I
    .end local v4           #i:I
    .end local v5           #n:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050405

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 227
    .local v2, defaultTextSize:I
    if-lez v2, :cond_1

    .line 228
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050409

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 232
    .local v3, defaultTextSizeLandscape:I
    if-lez v3, :cond_2

    .line 233
    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05040a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 238
    .local v7, topShadowHeight:I
    if-lez v7, :cond_3

    .line 239
    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    .line 242
    :cond_3
    iget v6, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    .line 243
    .local v6, textSize:I
    if-nez v6, :cond_4

    .line 244
    iget v6, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 247
    :cond_4
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    .line 248
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 253
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoTabWidget;->setFocusable(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05040b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOnlyTextSize:I

    .line 258
    return-void

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private drawFocusTabContent(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v13, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 597
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v13, :cond_2

    .line 598
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 600
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_3

    .line 601
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 604
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 618
    .local v10, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-nez v13, :cond_7

    .line 619
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

    .line 625
    .local v8, tabHlBg:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v8, :cond_4

    .line 626
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 628
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    :cond_4
    const/4 v5, 0x0

    .line 634
    .local v5, iconLeft:I
    const/4 v7, 0x0

    .line 635
    .local v7, iconTop:I
    const/4 v6, 0x0

    .line 636
    .local v6, iconRight:I
    const/4 v4, 0x0

    .line 638
    .local v4, iconBottom:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_9

    .line 639
    const/4 v12, 0x0

    .line 640
    .local v12, x:I
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    float-to-int v14, v14

    add-int v12, v13, v14

    .line 643
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int v5, v12, v13

    .line 644
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    add-int v7, v13, v14

    .line 645
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v13, v13, 0x2

    add-int v6, v12, v13

    .line 646
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    add-int v4, v13, v14

    .line 655
    .end local v12           #x:I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/oppo/widget/OppoTabWidget;->drawHlTabText(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/Canvas;)I

    move-result v2

    .line 656
    .local v2, adjustOffset:I
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 657
    .local v9, tabIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 658
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 659
    const/4 v13, 0x1

    new-array v3, v13, [I

    const/4 v13, 0x0

    const v14, 0x10100a1

    aput v14, v3, v13

    .line 660
    .local v3, focusDrawableState:[I
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 661
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 664
    .end local v3           #focusDrawableState:[I
    :cond_5
    if-gez v2, :cond_6

    .line 665
    add-int/2addr v5, v2

    .line 666
    add-int/2addr v6, v2

    .line 669
    :cond_6
    invoke-virtual {v9, v5, v7, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 670
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 620
    .end local v2           #adjustOffset:I
    .end local v4           #iconBottom:I
    .end local v5           #iconLeft:I
    .end local v6           #iconRight:I
    .end local v7           #iconTop:I
    .end local v8           #tabHlBg:Landroid/graphics/drawable/Drawable;
    .end local v9           #tabIcon:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_8

    .line 621
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgRight:Landroid/graphics/drawable/Drawable;

    .restart local v8       #tabHlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 623
    .end local v8           #tabHlBg:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

    .restart local v8       #tabHlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 648
    .restart local v4       #iconBottom:I
    .restart local v5       #iconLeft:I
    .restart local v6       #iconRight:I
    .restart local v7       #iconTop:I
    :cond_9
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    float-to-int v11, v13

    .line 649
    .local v11, tabSpecHeight:I
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    add-int v5, v13, v14

    .line 650
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v13, v11, v13

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v7, v13, v14

    .line 651
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v6, v5, v13

    .line 652
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v4, v7, v13

    goto/16 :goto_2
.end method

.method private drawHlTabText(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/Canvas;)I
    .locals 16
    .parameter "tabSpec"
    .parameter "canvas"

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    const/4 v1, 0x0

    .line 750
    :goto_0
    return v1

    .line 679
    :cond_0
    const/4 v6, 0x0

    .line 680
    .local v6, tabLabel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    :cond_1
    if-nez v6, :cond_2

    .line 684
    const/4 v1, 0x0

    goto :goto_0

    .line 687
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    if-nez v13, :cond_3

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getHighlightTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_3

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOnlyTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 692
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 696
    .local v9, textWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    .line 698
    .local v5, tabArea:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-eqz v13, :cond_4

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    .line 701
    .local v3, maxTextWidth:I
    :goto_1
    if-le v9, v3, :cond_7

    .line 702
    const-string v12, ".."

    .line 703
    .local v12, tmpTabLabel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 704
    .local v2, end:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_6

    .line 705
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 707
    if-ge v9, v3, :cond_5

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 698
    .end local v2           #end:I
    .end local v3           #maxTextWidth:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_4
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    goto :goto_1

    .line 710
    .restart local v2       #end:I
    .restart local v3       #maxTextWidth:I
    .restart local v12       #tmpTabLabel:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x1

    if-le v2, v13, :cond_6

    .line 711
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 718
    :cond_6
    move-object v6, v12

    .line 721
    .end local v2           #end:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 722
    .local v10, textX:F
    const/4 v11, 0x0

    .line 723
    .local v11, textY:I
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-int v7, v13

    .line 724
    .local v7, tabWidth:I
    const/4 v1, 0x0

    .line 725
    .local v1, adjustOffset:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_9

    .line 726
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getHighlightTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_8

    .line 728
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v11, v13, v14

    .line 748
    :goto_3
    int-to-float v13, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 731
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    sub-int v11, v13, v14

    goto :goto_3

    .line 734
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v4, v13, v14

    .line 735
    .local v4, remainSpace:I
    sub-int v13, v4, v9

    div-int/lit8 v8, v13, 0x2

    .line 736
    .local v8, textOffset:I
    if-gez v8, :cond_a

    .line 737
    move v1, v8

    .line 739
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getHighlightTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_b

    .line 740
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 744
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v11, v13, v14

    goto :goto_3

    .line 742
    :cond_b
    iget v13, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v8

    add-float v10, v13, v14

    goto :goto_4
.end method

.method private drawTabDivider(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 754
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 759
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_0

    .line 760
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 761
    .local v4, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 762
    .local v1, left:I
    add-int/lit8 v2, v1, 0x2

    .line 763
    .local v2, right:I
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 764
    const-string v5, "OppoTabWidget"

    const-string v6, "drawTabDivider: there is no tab divider to draw!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v5, v1, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 771
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawUnFocusTabContent(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)I
    .locals 16
    .parameter "canvas"
    .parameter "tabSpec"

    .prologue
    .line 519
    if-nez p2, :cond_1

    .line 520
    const/4 v1, 0x0

    .line 587
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    if-nez v13, :cond_2

    .line 523
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_2

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOnlyTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 527
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 529
    const/4 v6, 0x0

    .line 530
    .local v6, tabLabel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 531
    .local v1, adjustOffset:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 532
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 534
    :cond_3
    if-eqz v6, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 536
    .local v9, textWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    .line 537
    .local v5, tabArea:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-eqz v13, :cond_4

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    .line 540
    .local v3, maxTextWidth:I
    :goto_1
    if-le v9, v3, :cond_7

    .line 541
    const-string v12, ".."

    .line 542
    .local v12, tmpTabLabel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 543
    .local v2, end:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_6

    .line 544
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 546
    if-ge v9, v3, :cond_5

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 537
    .end local v2           #end:I
    .end local v3           #maxTextWidth:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_4
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    goto :goto_1

    .line 549
    .restart local v2       #end:I
    .restart local v3       #maxTextWidth:I
    .restart local v12       #tmpTabLabel:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x1

    if-le v2, v13, :cond_6

    .line 550
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 557
    :cond_6
    move-object v6, v12

    .line 559
    .end local v2           #end:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 560
    .local v10, textX:F
    const/4 v11, 0x0

    .line 561
    .local v11, textY:F
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-int v7, v13

    .line 562
    .local v7, tabWidth:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_9

    .line 563
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 564
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_8

    .line 565
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int/2addr v13, v14

    int-to-float v11, v13

    .line 584
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 568
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    sub-int/2addr v13, v14

    int-to-float v11, v13

    goto :goto_3

    .line 571
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v4, v13, v14

    .line 572
    .local v4, remainSpace:I
    sub-int v13, v4, v9

    div-int/lit8 v8, v13, 0x2

    .line 573
    .local v8, textOffset:I
    if-gez v8, :cond_a

    .line 574
    move v1, v8

    .line 576
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_b

    .line 577
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 581
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int/2addr v13, v14

    int-to-float v11, v13

    goto :goto_3

    .line 579
    :cond_b
    iget v13, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v8

    add-float v10, v13, v14

    goto :goto_4
.end method

.method private drawUnFocusTabsContent(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v14, :cond_1

    .line 515
    :cond_0
    return-void

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 457
    .local v8, size:I
    const/4 v4, 0x0

    .line 458
    .local v4, iconLeft:I
    const/4 v6, 0x0

    .line 459
    .local v6, iconTop:I
    const/4 v5, 0x0

    .line 460
    .local v5, iconRight:I
    const/4 v3, 0x0

    .line 461
    .local v3, iconBottom:I
    const/4 v7, 0x0

    .local v7, index:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-ne v14, v7, :cond_3

    .line 461
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 465
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 469
    .local v11, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    if-nez v7, :cond_7

    .line 470
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/widget/OppoTabWidget;->mTabBgLeft:Landroid/graphics/drawable/Drawable;

    .line 476
    .local v9, tabBg:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v9, :cond_4

    .line 477
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v14, :cond_9

    .line 483
    const/4 v13, 0x0

    .line 484
    .local v13, x:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->right:F

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    float-to-int v15, v15

    add-int v13, v14, v15

    .line 486
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int v4, v13, v14

    .line 487
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    .line 488
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v14, v14, 0x2

    add-int v5, v13, v14

    .line 489
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    add-int v3, v14, v15

    .line 497
    .end local v13           #x:I
    :goto_3
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 498
    .local v10, tabIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/oppo/widget/OppoTabWidget;->drawUnFocusTabContent(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)I

    move-result v2

    .line 501
    .local v2, adjustOffset:I
    if-eqz v10, :cond_2

    .line 502
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 503
    sget-object v14, Lcom/oppo/widget/OppoTabWidget;->EMPTY_STATE_SET:[I

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 504
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 507
    :cond_5
    if-gez v2, :cond_6

    .line 508
    add-int/2addr v4, v2

    .line 509
    add-int/2addr v5, v2

    .line 511
    :cond_6
    invoke-virtual {v10, v4, v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 471
    .end local v2           #adjustOffset:I
    .end local v9           #tabBg:Landroid/graphics/drawable/Drawable;
    .end local v10           #tabIcon:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v7, v14, :cond_8

    .line 472
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/widget/OppoTabWidget;->mTabBgRight:Landroid/graphics/drawable/Drawable;

    .restart local v9       #tabBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 474
    .end local v9           #tabBg:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/widget/OppoTabWidget;->mTabBgMiddle:Landroid/graphics/drawable/Drawable;

    .restart local v9       #tabBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 491
    :cond_9
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v15

    float-to-int v12, v14

    .line 492
    .local v12, tabSpecHeight:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    add-int v4, v14, v15

    .line 493
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v6, v14, v15

    .line 494
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v5, v4, v14

    .line 495
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v3, v6, v14

    goto :goto_3
.end method

.method private getClickedTabIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 946
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 962
    :cond_0
    :goto_0
    return v0

    .line 950
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 951
    .local v1, listSize:I
    if-lez v1, :cond_0

    .line 955
    const/4 v2, -0x1

    .line 956
    .local v2, nearest:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 957
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v3

    .line 958
    .local v3, r:Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 956
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #r:Landroid/graphics/RectF;
    :cond_3
    move v0, v2

    .line 962
    goto :goto_0
.end method

.method private getDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 373
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 374
    .local v1, tabHlBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabBgLeft(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabBgMiddle(Landroid/graphics/drawable/Drawable;)V

    .line 376
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabBgRight(Landroid/graphics/drawable/Drawable;)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->setTabHlBgLeft(Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->setTabHlBgMiddle(Landroid/graphics/drawable/Drawable;)V

    .line 379
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->setTabHlBgRight(Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabWidgetBg(Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method private initSizeInfo()V
    .locals 9

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 309
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 311
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 312
    .local v2, dWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 315
    .local v1, dHeight:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 316
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v3, v4

    .line 317
    check-cast v3, Landroid/view/ViewGroup;

    .line 318
    .local v3, group:Landroid/view/ViewGroup;
    instance-of v7, v3, Landroid/widget/HorizontalScrollView;

    if-eqz v7, :cond_2

    .line 319
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 328
    .end local v3           #group:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 329
    const/4 v5, 0x0

    .line 330
    .local v5, textSize:I
    if-lt v2, v1, :cond_3

    .line 332
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 333
    int-to-float v7, v2

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 334
    int-to-float v7, v2

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 335
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 336
    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 345
    :goto_1
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    if-nez v7, :cond_1

    .line 346
    iget-object v7, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 348
    :cond_1
    iget-object v7, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 352
    return-void

    .line 321
    .end local v5           #textSize:I
    .restart local v3       #group:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    goto :goto_0

    .line 339
    .end local v3           #group:Landroid/view/ViewGroup;
    .restart local v5       #textSize:I
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 340
    int-to-float v7, v1

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 341
    int-to-float v7, v1

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 342
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 343
    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    goto :goto_1
.end method

.method private initTabsArea()V
    .locals 14

    .prologue
    .line 407
    iget-object v10, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 408
    .local v6, size:I
    if-gtz v6, :cond_0

    .line 409
    const-string v10, "OppoTabWidget"

    const-string v11, "initTabsArea:mOppoTabSpecsList.size() <= 0, return."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 412
    :cond_0
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    div-int v8, v10, v6

    .line 415
    .local v8, tabWidth:I
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    if-lez v10, :cond_1

    .line 416
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    div-int v4, v10, v11

    .line 417
    .local v4, minWidth:I
    if-ge v8, v4, :cond_1

    .line 418
    move v8, v4

    .line 419
    mul-int v10, v8, v6

    iput v10, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 425
    .end local v4           #minWidth:I
    :cond_1
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 426
    .local v7, tabHeight:I
    const/4 v3, 0x0

    .line 427
    .local v3, left:I
    const/4 v9, 0x0

    .line 428
    .local v9, top:I
    const/4 v5, 0x0

    .line 429
    .local v5, right:I
    move v1, v7

    .line 430
    .local v1, bottom:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 431
    add-int v5, v3, v8

    .line 436
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v9

    int-to-float v12, v5

    int-to-float v13, v1

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 437
    .local v0, area:Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-virtual {v10, v0}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabArea(Landroid/graphics/RectF;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 438
    move v3, v5

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v0           #area:Landroid/graphics/RectF;
    :cond_2
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v10, :cond_3

    .line 442
    const/4 v10, 0x0

    iput v10, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 444
    :cond_3
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v10, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 445
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    goto :goto_0
.end method

.method private updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "spec"
    .parameter "icon"

    .prologue
    .line 1213
    invoke-virtual {p1, p2, p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1214
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 1215
    return-void
.end method

.method private updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "spec"
    .parameter "label"

    .prologue
    .line 1182
    invoke-virtual {p1, p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1183
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 1184
    return-void
.end method


# virtual methods
.method public addOppoTabSpec(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V
    .locals 7
    .parameter "tabSpec"

    .prologue
    const/4 v5, 0x0

    .line 1091
    if-nez p1, :cond_1

    .line 1092
    const-string v4, "OppoTabWidget"

    const-string v5, "addOppoOppoTabSpec: null == tabSpec, return;"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getIndicatorStrategy()Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    move-result-object v0

    .line 1097
    .local v0, indicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    if-nez v0, :cond_2

    .line 1098
    const-string v4, "OppoTabWidget"

    const-string v5, "addOppoTabSpec: null == indicatorStrategy, return;"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1101
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1103
    .local v3, tag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1105
    .local v1, simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    const-string v2, ""

    .line 1107
    .local v2, tabLabel:Ljava/lang/String;
    instance-of v4, v0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;

    if-eqz v4, :cond_4

    .line 1110
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1111
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1112
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1114
    :cond_3
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1115
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->requestLayout()V

    goto :goto_0

    .line 1117
    :cond_4
    instance-of v4, v0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;

    if-eqz v4, :cond_6

    .line 1120
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1121
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1122
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    :cond_5
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v4

    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1126
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->requestLayout()V

    goto :goto_0

    .line 1128
    :cond_6
    instance-of v4, v0, Lcom/oppo/widget/OppoTabHost$ViewIndicatorStrategy;

    if-eqz v4, :cond_0

    .line 1131
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1132
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    const-string v4, "not_support"

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1133
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->requestLayout()V

    goto/16 :goto_0
.end method

.method public addSimpleOppoTabSpec(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)Z
    .locals 1
    .parameter "spec"

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    const/4 v0, 0x0

    .line 1176
    :goto_0
    return v0

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1041
    if-gez p1, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1053
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1054
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 974
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public moveAndNotUp()V
    .locals 2

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 816
    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    if-ne v0, v1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    goto :goto_0
.end method

.method public newSimpleOppoTabSpec(Ljava/lang/String;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 1
    .parameter "tag"

    .prologue
    .line 1161
    new-instance v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-direct {v0, p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 778
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 785
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    if-nez v0, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initTabsArea()V

    .line 399
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawUnFocusTabsContent(Landroid/graphics/Canvas;)V

    .line 400
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawFocusTabContent(Landroid/graphics/Canvas;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawTabDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 295
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 296
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initTabsArea()V

    .line 297
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setMeasuredDimension(II)V

    .line 305
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 830
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 832
    .local v2, y:I
    const/4 v0, 0x0

    .line 834
    .local v0, clickTabIndex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 942
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 839
    :pswitch_1
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 841
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    .line 843
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 844
    if-eq v5, v0, :cond_0

    .line 847
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_0

    .line 848
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 849
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0

    .line 856
    :pswitch_2
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    goto :goto_0

    .line 862
    :pswitch_3
    iget-boolean v3, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    if-nez v3, :cond_0

    .line 865
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 866
    if-eq v5, v0, :cond_0

    .line 869
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_0

    .line 870
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 871
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0

    .line 881
    :pswitch_4
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 884
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 888
    if-ne v5, v0, :cond_2

    .line 891
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 897
    :goto_1
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_1

    .line 898
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 899
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 901
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 902
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v3, :cond_0

    .line 909
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoTabWidget;->mClickRequestFocus:Z

    invoke-interface {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoTabWidget;->playSoundEffect(I)V

    goto :goto_1

    .line 916
    :pswitch_5
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 919
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v3, :cond_3

    .line 920
    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 922
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    .line 923
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v3, :cond_0

    .line 930
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoTabWidget;->mClickRequestFocus:Z

    invoke-interface {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 792
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 795
    if-nez p1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 800
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 807
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public removeAllOppoTabSpec()V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1146
    return-void
.end method

.method public requestFocusOnTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1063
    if-gez p1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1075
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1076
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1017
    if-gez p1, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1023
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1024
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 1025
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 984
    return-void
.end method

.method public setMaxTabCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1250
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    .line 1251
    return-void
.end method

.method public setOppoTabSelectionListener(Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    .line 1153
    return-void
.end method

.method public setTabBgLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgLeft:Landroid/graphics/drawable/Drawable;

    .line 1271
    return-void
.end method

.method public setTabBgMiddle(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 1289
    return-void
.end method

.method public setTabBgRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgRight:Landroid/graphics/drawable/Drawable;

    .line 1307
    return-void
.end method

.method public setTabHlBgLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

    .line 1280
    return-void
.end method

.method public setTabHlBgMiddle(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 1298
    return-void
.end method

.method public setTabHlBgRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgRight:Landroid/graphics/drawable/Drawable;

    .line 1316
    return-void
.end method

.method public setTabWidgetBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    .line 1261
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    return-void
.end method

.method public updateTabIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "index"
    .parameter "icon"

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1225
    .local v0, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {p0, v0, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V

    .line 1226
    return-void
.end method

.method public updateTabIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "tag"
    .parameter "icon"

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1236
    .local v1, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    invoke-direct {p0, v1, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V

    .line 1241
    .end local v1           #spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    :cond_1
    return-void
.end method

.method public updateTabLabel(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "label"

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1194
    .local v0, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {p0, v0, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V

    .line 1195
    return-void
.end method

.method public updateTabLabel(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "tag"
    .parameter "label"

    .prologue
    .line 1204
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1205
    .local v1, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    invoke-direct {p0, v1, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V

    .line 1210
    .end local v1           #spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    :cond_1
    return-void
.end method
