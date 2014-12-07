.class public Lcom/oppo/widget/OppoTouchSearchView;
.super Landroid/view/View;
.source "OppoTouchSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTouchSearchView$UnionKey;,
        Lcom/oppo/widget/OppoTouchSearchView$Key;,
        Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_LEFT:I = 0x1

.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_PADDING_X:I = 0x1b

.field private static final MAX_NAME_NUM:I = 0x7

.field public static final MAX_SECTIONS_NUM:I = 0x1b

.field public static final MAX_SECTIONS_NUM_WITH_DOT:I = 0x17

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final SEARCH_DRAWABLE_POSITION:I = 0x1a

.field private static final SEARCH_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoTouchSearchView"

.field private static final WELL_DRAWABLE_POSITION:I

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private KEYS:[Ljava/lang/String;

.field private UNIONKEYS:[Ljava/lang/String;

.field private keyIndices:I

.field private lastKeyIndices:I

.field private layout:Landroid/widget/LinearLayout;

.field private mActivePointerId:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mDotDrawableHeight:I

.field private mDotDrawableWidth:I

.field private mDotDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFirstLayout:Z

.field private mFrameChanged:Z

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableOffset:I

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field private mPopupDefaultHeight:I

.field private mPopupTextView:Landroid/widget/TextView;

.field private mPopupWinSubHeight:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowHeight:I

.field private mPopupWindowLocalx:I

.field private mPopupWindowLocaly:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowRightMargin:I

.field private mPopupWindowTextColor:I

.field private mPopupWindowTextSize:I

.field private mPopupWindowTopMargin:I

.field private mPopupWindowWidth:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSections:[Ljava/lang/String;

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

.field private mUnionEnable:Z

.field private mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

.field private mWhetherDrawDot:Z

.field private mWhetherUnion:Z

.field private surname:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    .line 432
    new-instance v0, Lcom/oppo/widget/OppoTouchSearchView$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTouchSearchView$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 142
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 156
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 158
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 160
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 165
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 166
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 168
    const-string v6, ""

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 201
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 208
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 209
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    .line 237
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 240
    .local v4, resources:Landroid/content/res/Resources;
    sget-object v6, Loppo/R$styleable;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 243
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    .line 247
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 249
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 252
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 254
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v7, v6, :cond_0

    .line 255
    const v6, 0xc050403

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 258
    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 260
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-ne v7, v6, :cond_1

    .line 261
    const v6, 0xc050404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 263
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    .line 266
    :cond_1
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 267
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ne v7, v6, :cond_2

    .line 268
    const v6, 0xc0d0404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 271
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 274
    const v6, 0xc060401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 276
    const/16 v6, 0x9

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 278
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    const v7, 0xc050406

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 281
    const v6, 0xc050408

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    .line 283
    const v6, 0xc050407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    .line 285
    const v6, 0xc050433

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 286
    const v6, 0xc050436

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    .line 289
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 291
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    .line 292
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    const v6, 0xc040407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 300
    const-string v6, "persist.sys.oppo.region"

    const-string v7, "CN"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, region:Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 302
    const v6, 0xc070400

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    .line 307
    :goto_0
    const v6, 0xc070401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    .line 309
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 310
    const v6, 0xc08040d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 312
    :cond_3
    const v6, 0xc08040e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 316
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 317
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawable(Landroid/content/res/Resources;)V

    .line 318
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysPressedDrawable(Landroid/content/res/Resources;)V

    .line 325
    :goto_1
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 327
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v6, 0xc090409

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 330
    .local v2, mPopupContent:Landroid/view/ViewGroup;
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 331
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 332
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 334
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 335
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v7, 0xc030404

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 336
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    const v6, 0xc020402

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    .line 339
    const v6, 0xc0204b1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    .line 341
    const v6, 0xc020403

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    .line 343
    const/4 v4, 0x0

    .line 344
    return-void

    .line 304
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #mPopupContent:Landroid/view/ViewGroup;
    :cond_4
    const v6, 0xc07040f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 320
    :cond_5
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawableExp(Landroid/content/res/Resources;)V

    .line 321
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysPressedDrawableExp(Landroid/content/res/Resources;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .parameter "canvas"
    .parameter "mkeys"

    .prologue
    .line 1011
    move-object v2, p2

    .line 1012
    .local v2, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    if-nez v2, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1017
    array-length v1, v2

    .line 1018
    .local v1, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1019
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1020
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1018
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1024
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .parameter "canvas"
    .parameter "mkeys"

    .prologue
    .line 1655
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    move-object v2, p2

    .line 1660
    .local v2, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    if-eqz v2, :cond_0

    .line 1664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1665
    array-length v1, v2

    .line 1666
    .local v1, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1667
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 1668
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1672
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_3

    .line 1673
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1666
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1679
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "start"
    .parameter "end"
    .parameter "mkeys"

    .prologue
    .line 808
    if-le p3, p4, :cond_1

    .line 809
    const/4 v2, -0x1

    .line 822
    :cond_0
    :goto_0
    return v2

    .line 811
    :cond_1
    add-int v4, p3, p4

    div-int/lit8 v2, v4, 0x2

    .line 812
    .local v2, middle:I
    move-object v1, p5

    .line 813
    .local v1, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    aget-object v4, v1, v2

    iget v3, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    .line 814
    .local v3, top:I
    aget-object v4, v1, v2

    iget v4, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int v0, v4, v5

    .line 815
    .local v0, bottom:I
    if-lt p2, v3, :cond_2

    if-lt p2, v0, :cond_0

    .line 817
    :cond_2
    if-ge p2, v3, :cond_3

    .line 818
    add-int/lit8 p4, v2, -0x1

    .line 819
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0

    .line 821
    :cond_3
    add-int/lit8 p3, v2, 0x1

    .line 822
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0
.end method

.method private findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "names"
    .parameter "name"

    .prologue
    .line 1316
    array-length v1, p1

    .line 1317
    .local v1, keyCount:I
    const/4 v2, 0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v2, v3, p2}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1319
    .local v0, drawablePos:I
    if-gez v0, :cond_0

    .line 1320
    invoke-static {p1, p2}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1323
    :cond_0
    return v0
.end method

.method private findKeysDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v10, 0xc070402

    const/4 v12, 0x0

    .line 355
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .line 358
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v2, v10

    .line 359
    .local v2, count:I
    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, i:I
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 363
    .local v3, extra:Ljava/lang/String;
    const v10, 0xc040408

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, strPrefix:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v10, "drawable"

    invoke-virtual {p1, v0, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 366
    .local v8, res:I
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, v4

    .line 367
    add-int/lit8 v4, v4, 0x1

    .line 362
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 369
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v3           #extra:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #strPrefix:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 370
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 371
    return-void
.end method

.method private findKeysDrawableExp(Landroid/content/res/Resources;)V
    .locals 14
    .parameter "resources"

    .prologue
    const v11, 0xc070410

    const/4 v13, 0x0

    .line 1359
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1362
    .local v8, packageName:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1364
    .local v7, mKeyNames:[Ljava/lang/String;
    array-length v2, v7

    .line 1365
    .local v2, count:I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1366
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1368
    const/4 v4, 0x0

    .line 1369
    .local v4, i:I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1370
    .local v10, strPrefix:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 1372
    .local v3, extra:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1374
    .local v9, res:I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1375
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    const v12, 0xc08040f

    invoke-virtual {p1, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1377
    add-int/lit8 v4, v4, 0x1

    .line 1370
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1379
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v3           #extra:Ljava/lang/String;
    .end local v9           #res:I
    :cond_0
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 1380
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 1381
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    .line 1382
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    .line 1383
    return-void
.end method

.method private findKeysPressedDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v11, 0xc070403

    .line 374
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, mKeyPressedNames:[Ljava/lang/String;
    array-length v6, v5

    .line 379
    .local v6, num:I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, i:I
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 382
    .local v10, tmp:Ljava/lang/String;
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, strPrefix:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 385
    .local v8, res:I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 386
    add-int/lit8 v2, v2, 0x1

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #strPrefix:Ljava/lang/String;
    .end local v10           #tmp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private findKeysPressedDrawableExp(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v11, 0xc070410

    .line 1386
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 1388
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1391
    .local v5, mKeyPressedNames:[Ljava/lang/String;
    array-length v6, v5

    .line 1392
    .local v6, num:I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1393
    const/4 v2, 0x0

    .line 1394
    .local v2, i:I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1395
    .local v9, strPrefix:Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 1397
    .local v10, tmp:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_pressed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1399
    .local v8, res:I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1400
    add-int/lit8 v2, v2, 0x1

    .line 1395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1402
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v8           #res:I
    .end local v10           #tmp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .parameter "charArray"
    .parameter "from"
    .parameter "to"
    .parameter "whichChar"

    .prologue
    const/4 v3, -0x1

    .line 458
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    :cond_0
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- error,  return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 509
    :cond_1
    :goto_0
    return v1

    .line 467
    :cond_2
    const-string v4, "#"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    const-string v3, "persist.sys.oppo.region"

    const-string v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, region:Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    const/4 v1, 0x0

    goto :goto_0

    .line 475
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 480
    .end local v2           #region:Ljava/lang/String;
    :cond_4
    if-le p1, p2, :cond_5

    .line 481
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- not find , return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 482
    goto :goto_0

    .line 485
    :cond_5
    add-int v4, p1, p2

    div-int/lit8 v1, v4, 0x2

    .line 486
    .local v1, middle:I
    if-le v1, p2, :cond_6

    move v1, v3

    .line 487
    goto :goto_0

    .line 492
    :cond_6
    array-length v4, p0

    if-ne v4, v1, :cond_7

    move v1, v3

    .line 493
    goto :goto_0

    .line 500
    :cond_7
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, lowerCharSequence:Ljava/lang/CharSequence;
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_8

    .line 505
    add-int/lit8 p1, v1, 0x1

    .line 506
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 508
    :cond_8
    add-int/lit8 p2, v1, -0x1

    .line 509
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "charArray"
    .parameter "whichChar"

    .prologue
    const/4 v2, -0x1

    .line 440
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v1, v2

    .line 454
    :cond_1
    :goto_0
    return v1

    .line 443
    :cond_2
    array-length v0, p0

    .line 444
    .local v0, charCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 449
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 454
    goto :goto_0
.end method

.method private getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "mkeys"

    .prologue
    const/4 v3, 0x0

    .line 828
    const/4 v8, -0x1

    .line 829
    .local v8, primaryIndex:I
    move-object v7, p3

    .line 830
    .local v7, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    array-length v6, v7

    .line 832
    .local v6, keyCount:I
    add-int/lit8 v4, v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v8

    .line 836
    const/4 v0, -0x1

    if-ne v0, v8, :cond_0

    .line 837
    aget-object v0, v7, v3

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-ge p2, v0, :cond_1

    .line 838
    const/4 v8, 0x0

    .line 845
    :cond_0
    :goto_0
    return v8

    .line 839
    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-le p2, v0, :cond_2

    .line 840
    add-int/lit8 v8, v6, -0x1

    goto :goto_0

    .line 841
    :cond_2
    aget-object v0, v7, v3

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-le p2, v0, :cond_0

    add-int/lit8 v0, v6, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-ge p2, v0, :cond_0

    .line 842
    div-int/lit8 v8, v6, 0x2

    goto :goto_0
.end method

.method private invalidateKey(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 899
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_1

    .line 900
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v5}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v5

    aget-object v1, v4, v5

    .line 901
    .local v1, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v4}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 906
    :goto_0
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 907
    .local v3, willDisplay:Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 908
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 909
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v6, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 910
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 911
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v4, :cond_0

    .line 912
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 914
    :cond_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_3

    .line 915
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v4

    .line 916
    .local v2, keysCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 917
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 903
    .end local v0           #i:I
    .end local v1           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v2           #keysCount:I
    .end local v3           #willDisplay:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, p2, v5}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1       #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 919
    .restart local v0       #i:I
    .restart local v2       #keysCount:I
    .restart local v3       #willDisplay:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 921
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 925
    .end local v0           #i:I
    .end local v2           #keysCount:I
    :cond_3
    return-void
.end method

.method private invalidateKeyExp(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1332
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v0, v3, v4

    .line 1333
    .local v0, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1339
    .local v2, willDisplay:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1340
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChangedExp(Ljava/lang/CharSequence;II)V

    .line 1341
    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1342
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v3, :cond_2

    .line 1343
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1346
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1348
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1349
    .local v1, pos:I
    if-ltz v1, :cond_0

    .line 1351
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1352
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1353
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0
.end method

.method private isSectionsValidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1405
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadKeys()V
    .locals 6

    .prologue
    .line 410
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v2, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v4

    .line 413
    .local v3, keysCount:I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 414
    const-string v4, "OppoTouchSearchView"

    const-string v5, "loadKeys --- error when loadKeys , keysCount > mKeyDrawables.length , return "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 420
    new-instance v1, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-direct {v1, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 421
    .local v1, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    .end local v1           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadKeysExp()V
    .locals 8

    .prologue
    .line 1481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1504
    :goto_0
    return-void

    .line 1487
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v5, v6

    .line 1488
    .local v5, keysCount:I
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v6

    .line 1490
    .local v3, keyNamesCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 1492
    new-instance v2, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {v2, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;)V

    .line 1494
    .local v2, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget-object v7, v2, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1495
    .local v0, drawablePos:I
    if-gez v0, :cond_1

    .line 1490
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1498
    :cond_1
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1500
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1503
    .end local v0           #drawablePos:I
    .end local v2           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadUnionKeys()V
    .locals 12

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 515
    .local v7, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$UnionKey;>;"
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v0, v9

    .line 517
    .local v0, drawableNamesCount:I
    add-int/lit8 v9, v0, -0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 518
    .local v5, mUnionKeyDrawableNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    add-int/lit8 v9, v0, -0x1

    if-ge v2, v9, :cond_0

    .line 519
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aput-object v9, v5, v2

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    .line 522
    .local v6, mUnionKeyDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_1

    .line 523
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v2

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    :cond_1
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    array-length v8, v9

    .line 530
    .local v8, unionkeysCount:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_4

    .line 531
    new-instance v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-direct {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;-><init>(Ljava/lang/CharSequence;)V

    .line 532
    .local v3, key:Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 537
    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    iget-object v11, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v9, v10, v11}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 539
    .local v1, drawablePos:I
    if-gez v1, :cond_2

    .line 540
    iget-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 542
    if-gez v1, :cond_2

    .line 530
    .end local v1           #drawablePos:I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 547
    .restart local v1       #drawablePos:I
    :cond_2
    aget-object v9, v6, v1

    invoke-virtual {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 549
    .end local v1           #drawablePos:I
    :cond_3
    const v9, 0xc08040f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 552
    :pswitch_1
    const-string v9, "B"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 553
    const-string v9, "C"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 556
    :pswitch_2
    const-string v9, "E"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 557
    const-string v9, "F"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 560
    :pswitch_3
    const-string v9, "H"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 563
    :pswitch_4
    const-string v9, "J"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 564
    const-string v9, "K"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 567
    :pswitch_5
    const-string v9, "M"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 568
    const-string v9, "N"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 571
    :pswitch_6
    const-string v9, "P"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 572
    const-string v9, "Q"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 575
    :pswitch_7
    const-string v9, "S"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 578
    :pswitch_8
    const-string v9, "U"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 579
    const-string v9, "V"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 582
    :pswitch_9
    const-string v9, "X"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 583
    const-string v9, "Y"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 589
    .end local v3           #key:Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iput-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .line 590
    return-void

    .line 550
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 8
    .parameter "display"
    .parameter "key_x"
    .parameter "key_y"

    .prologue
    const/4 v6, 0x0

    .line 947
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 986
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 957
    .local v0, coordinate:[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 959
    aget v3, v0, v6

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 960
    .local v1, localx:I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 962
    .local v2, localy:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 963
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 971
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 972
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 974
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 976
    const-string v3, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPopupWindowLocalx_update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 980
    :cond_3
    const-string v3, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPopupWindowLocalx_show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private onKeyChangedExp(Ljava/lang/CharSequence;II)V
    .locals 8
    .parameter "display"
    .parameter "key_x"
    .parameter "key_y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1607
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1651
    :goto_0
    return-void

    .line 1614
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1617
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1618
    .local v0, coordinate:[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 1629
    aget v3, v0, v7

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 1631
    .local v1, localx:I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 1633
    .local v2, localy:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 1634
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1641
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1642
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 1644
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1645
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1647
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 929
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 934
    .local v1, pointerId:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 938
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 939
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 944
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 938
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 14

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->whetherUnion()V

    .line 626
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    if-nez v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeys()V

    .line 630
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 638
    .local v9, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    :goto_0
    iget v13, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    .line 639
    .local v13, topPadding:I
    array-length v10, v9

    .line 640
    .local v10, keysCount:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v7, v0, v3

    .line 644
    .local v7, exactHeight:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 645
    div-int v0, v7, v10

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 647
    rem-int v12, v7, v10

    .line 648
    .local v12, residual:I
    shr-int/lit8 v0, v12, 0x1

    add-int/2addr v13, v0

    .line 650
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 655
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 656
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 657
    .local v11, r:Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 662
    .end local v11           #r:Landroid/graphics/Rect;
    :goto_1
    const/4 v1, 0x0

    .line 663
    .local v1, x:I
    move v2, v13

    .line 664
    .local v2, y:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v10, :cond_5

    .line 665
    aget-object v0, v9, v8

    iget-object v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 666
    aget-object v0, v9, v8

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 668
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v2, v0

    .line 664
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 632
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v7           #exactHeight:I
    .end local v8           #i:I
    .end local v9           #keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v10           #keysCount:I
    .end local v12           #residual:I
    .end local v13           #topPadding:I
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    if-nez v0, :cond_3

    .line 633
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadUnionKeys()V

    .line 635
    :cond_3
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .restart local v9       #keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 659
    .restart local v7       #exactHeight:I
    .restart local v10       #keysCount:I
    .restart local v12       #residual:I
    .restart local v13       #topPadding:I
    :cond_4
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1

    .line 671
    .restart local v1       #x:I
    .restart local v2       #y:I
    .restart local v8       #i:I
    :cond_5
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 7

    .prologue
    .line 789
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 790
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 793
    .local v0, bgwidth:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    if-nez v3, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 795
    .local v1, exactleft:I
    add-int v2, v1, v0

    .line 803
    .local v2, exactright:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 805
    .end local v0           #bgwidth:I
    .end local v1           #exactleft:I
    .end local v2           #exactright:I
    :cond_0
    return-void

    .line 796
    .restart local v0       #bgwidth:I
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 797
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sub-int v2, v3, v4

    .line 798
    .restart local v2       #exactright:I
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1       #exactleft:I
    goto :goto_0

    .line 800
    .end local v1           #exactleft:I
    .end local v2           #exactright:I
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 801
    .restart local v1       #exactleft:I
    add-int v2, v1, v0

    .restart local v2       #exactright:I
    goto :goto_0
.end method

.method private updateExp(Z)V
    .locals 17
    .parameter "load"

    .prologue
    .line 1509
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1604
    :cond_0
    return-void

    .line 1513
    :cond_1
    if-eqz p1, :cond_2

    .line 1514
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1516
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 1518
    .local v12, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    move/from16 v16, v0

    .line 1519
    .local v16, topPadding:I
    array-length v13, v12

    .line 1521
    .local v13, keysCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    add-int v10, v1, v4

    .line 1527
    .local v10, exactHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 1529
    move v15, v10

    .line 1530
    .local v15, residual:I
    if-eqz v13, :cond_3

    .line 1531
    div-int v1, v10, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 1532
    rem-int v15, v10, v13

    .line 1537
    :cond_3
    shr-int/lit8 v1, v15, 0x1

    add-int v16, v16, v1

    .line 1545
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-eqz v1, :cond_5

    .line 1546
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 1547
    const-string v1, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeyPaddingY = (mCellHeight - mKeyDrawableHeight) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    sub-int/2addr v1, v4

    div-int/lit8 v8, v1, 0x2

    .line 1558
    .local v8, dotTokeyPaddingX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 1560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 1566
    .local v14, r:Landroid/graphics/Rect;
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1569
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    if-gez v1, :cond_4

    .line 1570
    const/16 v1, 0x1b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1591
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 1592
    .local v2, x:I
    move/from16 v3, v16

    .line 1593
    .local v3, y:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v13, :cond_0

    .line 1595
    aget-object v1, v12, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 1598
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int v9, v1, v4

    .line 1599
    .local v9, dotY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v4, v2

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v5, v2

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    add-int/2addr v6, v9

    invoke-virtual {v1, v4, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1602
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v3, v1

    .line 1593
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1549
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v8           #dotTokeyPaddingX:I
    .end local v9           #dotY:I
    .end local v11           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    goto/16 :goto_0

    .line 1582
    .restart local v8       #dotTokeyPaddingX:I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1
.end method

.method private whetherUnion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 593
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-nez v1, :cond_0

    .line 594
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 620
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v0, v1, v2

    .line 603
    .local v0, exactHeight:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 604
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 610
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    if-ge v1, v2, :cond_1

    .line 611
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 612
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 613
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0

    .line 615
    :cond_1
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 5

    .prologue
    .line 1031
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1032
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_1

    .line 1037
    const-string v2, "persist.sys.oppo.region"

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, region:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v2

    .line 1039
    .local v1, size:I
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v1, v2

    .line 1042
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyIndices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyDrawables:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ge v2, v1, :cond_1

    .line 1050
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1055
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1060
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 1063
    .end local v0           #region:Ljava/lang/String;
    .end local v1           #size:I
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1065
    :cond_2
    return-void

    .line 1057
    .restart local v0       #region:Ljava/lang/String;
    .restart local v1       #size:I
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 399
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 348
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 349
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    .line 350
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onNameKey(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 402
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 403
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 404
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 989
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 990
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 994
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v1, :cond_2

    .line 998
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    .line 1008
    .end local v0           #region:Ljava/lang/String;
    :goto_0
    return-void

    .line 1002
    .restart local v0       #region:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0

    .line 1006
    .end local v0           #region:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 762
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 763
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 767
    :cond_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 769
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 770
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 779
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 780
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 782
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 783
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 786
    .end local v0           #region:Ljava/lang/String;
    :cond_2
    return-void

    .line 772
    .restart local v0       #region:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 773
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 775
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "me"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    .line 851
    .local v1, m:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v2, v7

    .line 853
    .local v2, n:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 855
    .local v0, action:I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 892
    :goto_0
    :pswitch_0
    return v9

    .line 857
    :pswitch_1
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 858
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 859
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 862
    :pswitch_2
    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 863
    .local v3, pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 864
    .local v5, x:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 868
    .local v6, y:I
    const-string v7, "persist.sys.oppo.region"

    const-string v8, "CN"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, region:Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 870
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKey(II)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKeyExp(II)V

    goto :goto_0

    .line 880
    .end local v3           #pointerIndex:I
    .end local v4           #region:Ljava/lang/String;
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_3
    const/4 v7, -0x1

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 881
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 882
    const-string v7, ""

    iput-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 883
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto :goto_0

    .line 886
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1116
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 391
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 392
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 394
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setName([Ljava/lang/String;)V
    .locals 10
    .parameter "firstname"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1068
    array-length v3, p1

    .line 1070
    .local v3, length:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1071
    .local v4, resources:Landroid/content/res/Resources;
    if-lez v3, :cond_0

    .line 1072
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const v7, 0xc08049f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1075
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    const v7, 0xc0804e2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1085
    :goto_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1086
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1088
    .local v1, inflate:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1090
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 1091
    const v6, 0xc090450

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1093
    .local v5, textview:Landroid/widget/TextView;
    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1079
    .end local v0           #i:I
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #textview:Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const v7, 0xc0804a0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1082
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1098
    .restart local v0       #i:I
    .restart local v1       #inflate:Landroid/view/LayoutInflater;
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v6, 0x7

    if-le v3, v6, :cond_3

    .line 1099
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/lit8 v7, v7, 0x7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1104
    :goto_2
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1105
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/PopupWindow;->update(II)V

    .line 1107
    :cond_2
    return-void

    .line 1102
    :cond_3
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    goto :goto_2
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "character"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 710
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/PopupWindow;->update(II)V

    .line 716
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const/16 v0, 0x41

    .line 718
    .local v0, charA:C
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 719
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v3

    .line 723
    .local v2, keysCount:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v4, v2, -0x1

    if-le v3, v4, :cond_3

    .line 735
    :cond_1
    :goto_1
    return-void

    .line 713
    .end local v0           #charA:C
    .end local v2           #keysCount:I
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 726
    .restart local v0       #charA:C
    .restart local v2       #keysCount:I
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v3, :cond_5

    .line 727
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 728
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 730
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 732
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 734
    .end local v1           #i:I
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    goto :goto_1
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 8
    .parameter "character"

    .prologue
    const/4 v7, 0x0

    .line 676
    const-string v4, "persist.sys.oppo.region"

    const-string v5, "CN"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, region:Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 678
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->setPopupTextViewExp(Ljava/lang/String;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 689
    :goto_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const/16 v0, 0x41

    .line 691
    .local v0, charA:C
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 692
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    const/4 v4, 0x1

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 695
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v4

    .line 696
    .local v2, keysCount:I
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v5, v2, -0x1

    if-gt v4, v5, :cond_0

    .line 699
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_0

    .line 700
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 701
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 686
    .end local v0           #charA:C
    .end local v1           #i:I
    .end local v2           #keysCount:I
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v4, p0, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 703
    .restart local v0       #charA:C
    .restart local v1       #i:I
    .restart local v2       #keysCount:I
    :cond_4
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 705
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0
.end method

.method public setPopupTextViewExp(Ljava/lang/String;)V
    .locals 7
    .parameter "character"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1290
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1295
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1300
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1304
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1305
    .local v0, drawablePos:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1306
    .local v1, keyPos:I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 1308
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1309
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1310
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0

    .line 1297
    .end local v0           #drawablePos:I
    .end local v1           #keyPos:I
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, p0, v6, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method public setPopupWindowSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1170
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-eq v0, p2, :cond_1

    .line 1171
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 1172
    iput p2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1173
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1174
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1175
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1177
    :cond_1
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 2
    .parameter "textColor"

    .prologue
    .line 1210
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    if-eq v0, p1, :cond_0

    .line 1211
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 1212
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1213
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1215
    :cond_0
    return-void
.end method

.method public setPopupWindowTextSize(I)V
    .locals 2
    .parameter "textSize"

    .prologue
    .line 1197
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-eq v0, p1, :cond_0

    .line 1198
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 1199
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1202
    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 1186
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 1187
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1189
    :cond_0
    return-void
.end method

.method public setSmartShowMode([Ljava/lang/Object;[I)V
    .locals 17
    .parameter "sections"
    .parameter "counts"

    .prologue
    .line 1411
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v14, 0x0

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1412
    :cond_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " "

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1478
    :goto_0
    return-void

    .line 1418
    :cond_1
    const/4 v12, 0x0

    .local v12, start:I
    const/4 v9, 0x0

    .line 1419
    .local v9, secStart:I
    const/4 v14, 0x0

    aget v14, p2, v14

    const/high16 v15, -0x8000

    if-ne v14, v15, :cond_2

    .line 1420
    const/4 v9, 0x1

    .line 1423
    :cond_2
    move-object/from16 v0, p1

    array-length v8, v0

    .line 1424
    .local v8, secLength:I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 1425
    .local v2, cntLength:I
    const/16 v14, 0x1b

    if-le v8, v14, :cond_7

    .line 1427
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 1429
    const/16 v14, 0x17

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 1431
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v14, p1, v9

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 1432
    add-int/lit8 v12, v12, 0x2

    .line 1433
    add-int/lit8 v9, v9, 0x1

    .line 1435
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x16

    add-int/lit8 v14, v8, -0x1

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 1436
    add-int/lit8 v2, v2, -0x1

    .line 1438
    invoke-virtual/range {p2 .. p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1441
    .local v1, cloneCnt:[I
    const/16 v5, 0x14

    .line 1442
    .local v5, length:I
    :goto_1
    if-lez v5, :cond_5

    .line 1443
    const/4 v7, 0x0

    .local v7, pos:I
    const/4 v6, 0x0

    .line 1444
    .local v6, max:I
    move v3, v9

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1445
    aget v14, v1, v3

    if-le v14, v6, :cond_3

    .line 1446
    aget v6, v1, v3

    .line 1447
    move v7, v3

    .line 1444
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1450
    :cond_4
    const/4 v14, 0x0

    aput v14, v1, v7

    .line 1451
    add-int/lit8 v5, v5, -0x1

    .line 1452
    goto :goto_1

    .line 1454
    .end local v3           #i:I
    .end local v6           #max:I
    .end local v7           #pos:I
    :cond_5
    move v4, v9

    .local v4, j:I
    move v13, v12

    .end local v12           #start:I
    .local v13, start:I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 1455
    aget v14, v1, v4

    if-nez v14, :cond_9

    .line 1456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13           #start:I
    .restart local v12       #start:I
    aget-object v14, p1, v4

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    .line 1454
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v13, v12

    .end local v12           #start:I
    .restart local v13       #start:I
    goto :goto_3

    :cond_6
    move v12, v13

    .line 1476
    .end local v1           #cloneCnt:[I
    .end local v4           #j:I
    .end local v5           #length:I
    .end local v13           #start:I
    .restart local v12       #start:I
    :goto_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto/16 :goto_0

    .line 1462
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 1464
    add-int/lit8 v11, v8, 0x1

    .line 1465
    .local v11, size:I
    sub-int/2addr v11, v9

    .line 1467
    new-array v14, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 1469
    add-int/lit8 v12, v12, 0x1

    move v10, v9

    .end local v9           #secStart:I
    .local v10, secStart:I
    move v13, v12

    .line 1471
    .end local v12           #start:I
    .restart local v13       #start:I
    :goto_6
    if-ge v10, v8, :cond_8

    .line 1472
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13           #start:I
    .restart local v12       #start:I
    add-int/lit8 v9, v10, 0x1

    .end local v10           #secStart:I
    .restart local v9       #secStart:I
    aget-object v14, p1, v10

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    move v10, v9

    .end local v9           #secStart:I
    .restart local v10       #secStart:I
    move v13, v12

    .end local v12           #start:I
    .restart local v13       #start:I
    goto :goto_6

    :cond_8
    move v9, v10

    .end local v10           #secStart:I
    .restart local v9       #secStart:I
    move v12, v13

    .end local v13           #start:I
    .restart local v12       #start:I
    goto :goto_5

    .end local v11           #size:I
    .end local v12           #start:I
    .restart local v1       #cloneCnt:[I
    .restart local v4       #j:I
    .restart local v5       #length:I
    .restart local v13       #start:I
    :cond_9
    move v12, v13

    .end local v13           #start:I
    .restart local v12       #start:I
    goto :goto_4
.end method

.method public setTouchBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1126
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1130
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1137
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1138
    return-void

    .line 1134
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public setTouchSearchActionListener(Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .line 750
    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 3
    .parameter "unionEnable"

    .prologue
    .line 1146
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-eq v1, p1, :cond_0

    .line 1147
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 1148
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1152
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1159
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1161
    .end local v0           #region:Ljava/lang/String;
    :cond_0
    return-void

    .line 1156
    .restart local v0       #region:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public startPostDelayed()V
    .locals 0

    .prologue
    .line 741
    return-void
.end method
