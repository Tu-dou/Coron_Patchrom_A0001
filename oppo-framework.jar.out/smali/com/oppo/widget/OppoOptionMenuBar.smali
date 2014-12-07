.class public Lcom/oppo/widget/OppoOptionMenuBar;
.super Landroid/widget/FrameLayout;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;,
        Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_BACKGROUND_EXPANDED:F = 0.3f

.field private static final BUTTON_MORE_ID:I = 0x7fffffff

.field private static final DEFAULT_FILL_LAYOUT_SPACE:Z = true

.field public static final DEFAULT_MAJOR_OPERATION_COUNT:I = 0x4

.field private static final FOURCHILD:I = 0x4

.field private static final LAYOUT_WEIGHT_DEFAULT:F = 1.0f

.field private static final LAYOUT_WEIGHT_ONE_WITH_ONE:F = 4.375f

.field private static final LAYOUT_WEIGHT_THREE_WITH_ONE:F = 1.458333f

.field private static final LAYOUT_WEIGHT_TWO_WITH_ONE:F = 2.1875f

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_INVALIDATE:Z = false

.field private static final MAX_MAJOR_OPERTION_COUNT_IF_MORE_ENABLED:I = 0x3

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBar"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private final MSG_REFRESH_VIEWS:I

.field private final MSG_SCROLL_DOWN:I

.field private final MSG_SCROLL_UP:I

.field private final REFRESH_VIEWS_DELAY_MILLIS:J

.field private isCurrentTopVisible:Z

.field private isCustomized:Z

.field private isEnterAminEnd:[Z

.field private isFillLayoutSpace:Z

.field private isFlowMenu:Z

.field private isInflated:Z

.field private isMoreOperationGroupScrolling:Z

.field private isMoreOperationsEnabled:Z

.field private isMoreOperationsGroupExpanded:Z

.field private isMusic:Z

.field private isNeedDelayCall:Z

.field private isRefreshGallery:Z

.field private isStepIntoNewActivity:Z

.field private isViewPager:Z

.field private mClickDuration:J

.field private mContext:Landroid/content/Context;

.field private mCurrentShowAnim:[Landroid/animation/Animator;

.field private mDecorMask:Landroid/widget/ImageView;

.field private mDecorView:Landroid/view/View;

.field private mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

.field private mElementItemHeight:I

.field private mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemIdArray:[I

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mItemMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftItemTextColor:Landroid/content/res/ColorStateList;

.field private mMajorHopeCount:I

.field private mMajorOperationBg:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationClickListener:Landroid/view/View$OnClickListener;

.field private mMajorOperationCount:I

.field private mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationHeight:I

.field private mMajorOperationsGroup:Landroid/widget/LinearLayout;

.field private mMajorOperationsLayout:Landroid/widget/LinearLayout;

.field private mMajorOpertionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

.field private mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleItemTextColor:Landroid/content/res/ColorStateList;

.field private mMoreOpertationsGroup:Landroid/widget/Gallery;

.field private mOffsetedDistance:[I

.field private mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

.field private mPreviousClickUpTime:J

.field private mRightItemTextColor:Landroid/content/res/ColorStateList;

.field private mScrollAnimationDuration:J

.field private mVisibleMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisiblity:I

.field private offsetedDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->onFinishInflate()V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 214
    const v0, 0xc010426

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 96
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 102
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 104
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 106
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 107
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 109
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 111
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 112
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 113
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    .line 114
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 116
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 117
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 119
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 120
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 122
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 125
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 127
    const/4 v8, 0x4

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 128
    const/4 v8, 0x4

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 130
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 131
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 132
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 133
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 135
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 137
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 138
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 140
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 141
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 143
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 145
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 147
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 152
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 155
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 162
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    .line 163
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    .line 164
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    .line 173
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 179
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 181
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 183
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 186
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 187
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 188
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 434
    new-instance v8, Lcom/oppo/widget/OppoOptionMenuBar$1;

    invoke-direct {v8, p0}, Lcom/oppo/widget/OppoOptionMenuBar$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    .line 476
    new-instance v8, Lcom/oppo/widget/OppoOptionMenuBar$2;

    invoke-direct {v8, p0}, Lcom/oppo/widget/OppoOptionMenuBar$2;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 1654
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_SCROLL_UP:I

    .line 1655
    const/4 v8, 0x1

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_SCROLL_DOWN:I

    .line 1657
    const/4 v8, 0x2

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_REFRESH_VIEWS:I

    .line 1659
    const-wide/16 v8, 0xa

    iput-wide v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->REFRESH_VIEWS_DELAY_MILLIS:J

    .line 1661
    new-instance v8, Lcom/oppo/widget/OppoOptionMenuBar$4;

    invoke-direct {v8, p0}, Lcom/oppo/widget/OppoOptionMenuBar$4;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    .line 1679
    const-wide/16 v8, 0xfa

    iput-wide v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 1748
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 2428
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2459
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOffsetedDistance:[I

    .line 2460
    const/4 v8, 0x4

    new-array v8, v8, [Z

    fill-array-data v8, :array_1

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z

    .line 2461
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 2462
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    .line 2467
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    .line 220
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05041d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 221
    .local v3, defHeight:I
    move v5, v3

    .line 224
    .local v5, height:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05041f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 226
    sget-object v8, Loppo/R$styleable;->OppoOptionMenuBar:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 231
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 234
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 247
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 259
    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    :cond_0
    if-gtz v5, :cond_1

    .line 297
    move v5, v3

    .line 299
    :cond_1
    iput v5, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 305
    sget-object v8, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 307
    .local v1, b:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_3

    .line 308
    const/16 v8, 0x24

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 309
    .local v7, windowBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_2

    .line 310
    invoke-super {p0, v7}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    .end local v7           #windowBackground:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->init(Landroid/content/Context;)V

    .line 321
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setMotionEventSplittingEnabled(Z)V

    .line 328
    const-string v4, "com.oppo.filemanager"

    .line 329
    .local v4, fileManager:Ljava/lang/String;
    const-string v2, "com.oppo.alarmclock"

    .line 330
    .local v2, clock:Ljava/lang/String;
    const-string v6, "com.oppo.music"

    .line 332
    .local v6, music:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 334
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 336
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 337
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 341
    :cond_6
    return-void

    .line 2459
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2460
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 2462
    :array_2
    .array-data 0x4
        0x62t 0x4t 0x2t 0xct
        0x63t 0x4t 0x2t 0xct
        0x64t 0x4t 0x2t 0xct
        0x65t 0x4t 0x2t 0xct
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoOptionMenuBar;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return v0
.end method

.method static synthetic access$1202(Lcom/oppo/widget/OppoOptionMenuBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    return-void
.end method

.method static synthetic access$902(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    return p1
.end method

.method private dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 2110
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2111
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2112
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 2111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2114
    :cond_0
    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1922
    const/4 v1, 0x0

    .line 1925
    .local v1, decorView:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1926
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1931
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 1927
    :catch_0
    move-exception v2

    .line 1928
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFadeAnimator(Landroid/widget/ImageView;Z)Landroid/animation/Animator;
    .locals 5
    .parameter "target"
    .parameter "fadeIn"

    .prologue
    const v3, 0x3e99999a

    const/4 v0, 0x0

    .line 1725
    if-eqz p2, :cond_0

    move v2, v3

    .line 1726
    .local v2, start:F
    :goto_0
    if-eqz p2, :cond_1

    .line 1728
    .local v0, end:F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1729
    .local v1, fadeAnim:Landroid/animation/ValueAnimator;
    iget-wide v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1731
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$5;

    invoke-direct {v3, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$5;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1745
    return-object v1

    .end local v0           #end:F
    .end local v1           #fadeAnim:Landroid/animation/ValueAnimator;
    .end local v2           #start:F
    :cond_0
    move v2, v0

    .line 1725
    goto :goto_0

    .restart local v2       #start:F
    :cond_1
    move v0, v3

    .line 1726
    goto :goto_1
.end method

.method private getOffsetViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2011
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    .local v1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2014
    .local v0, offsetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2015
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2026
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 2027
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2031
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 2032
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    :cond_2
    return-object v1
.end method

.method private inflateMajorOperationView()V
    .locals 3

    .prologue
    .line 586
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;-><init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 588
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 590
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 592
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    return-void
.end method

.method private inflateMoreOperationView()V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 349
    new-instance v0, Lcom/oppo/widget/OppoMenuInflater;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 356
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMoreOperationView()V

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setFocusableInTouchMode(Z)V

    .line 365
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 368
    return-void
.end method

.method private invalidateOptionMenuBar(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x2

    .line 1187
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1199
    :cond_1
    return-void
.end method

.method private refreshGallery()V
    .locals 4

    .prologue
    .line 927
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    if-nez v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 934
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 938
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 939
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 940
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setGalleryItems(Ljava/util/List;)V

    .line 941
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoOptionMenuBar"

    const-string v2, "mMoreOpertationsGroup is null! If you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshViews()V
    .locals 12

    .prologue
    .line 694
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 698
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v10, :cond_0

    .line 699
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 703
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 706
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMenuItem;

    .line 707
    .local v1, e:Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v1}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 708
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    .end local v1           #e:Lcom/oppo/widget/OppoMenuItem;
    :cond_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 714
    .local v4, menuItemsSize:I
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 716
    .local v9, visibleMenuItemsSize:I
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-le v9, v10, :cond_6

    .line 717
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 728
    :goto_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 729
    const/4 v10, 0x3

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 738
    :cond_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 740
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v10, :pswitch_data_0

    .line 836
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_e

    .line 838
    new-instance v5, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 840
    .local v5, moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    const v10, 0x7fffffff

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    .line 841
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 842
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 848
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v10

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 850
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 852
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 854
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .local v2, i:I
    :goto_3
    if-ge v2, v9, :cond_c

    .line 855
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 719
    .end local v2           #i:I
    .end local v5           #moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :cond_6
    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 721
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    goto :goto_1

    .line 742
    :pswitch_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 743
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 744
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 745
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    goto :goto_2

    .line 750
    :pswitch_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 751
    .local v8, positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 752
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 753
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 754
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 757
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 758
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 765
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :pswitch_2
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 766
    .restart local v8       #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 767
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 768
    .local v6, negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 769
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 770
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 773
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_7

    .line 774
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 776
    :cond_7
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 777
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 784
    .end local v6           #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :pswitch_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 785
    .restart local v8       #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 786
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 787
    .restart local v6       #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 788
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 789
    .local v7, neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 790
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 793
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_8

    .line 794
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 796
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_9

    .line 797
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 799
    :cond_9
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 800
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 807
    .end local v6           #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v7           #neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :pswitch_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 808
    .restart local v8       #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 809
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 810
    .restart local v6       #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 811
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 812
    .restart local v7       #neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 813
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMenuItem;

    .line 814
    .restart local v5       #moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 815
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->disableItemMoreAnimation()V

    .line 818
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_a

    .line 819
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 821
    :cond_a
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_b

    .line 822
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 823
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 825
    :cond_b
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 826
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 863
    .end local v6           #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v7           #neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .restart local v2       #i:I
    :cond_c
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v10, :cond_d

    .line 864
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 868
    :cond_d
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v10}, Landroid/widget/Gallery;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_e

    .line 870
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 877
    .end local v2           #i:I
    .end local v5           #moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :cond_e
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 879
    .local v0, count:I
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-nez v10, :cond_13

    .line 881
    :cond_f
    const/4 v10, 0x1

    if-ne v0, v10, :cond_10

    .line 882
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 883
    .local v1, e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 885
    .end local v1           #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_10
    const/4 v10, 0x1

    if-le v0, v10, :cond_15

    .line 886
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v0, :cond_15

    .line 887
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 889
    .restart local v1       #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    if-nez v2, :cond_11

    .line 890
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 886
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 891
    :cond_11
    add-int/lit8 v10, v0, -0x1

    if-ne v2, v10, :cond_12

    .line 892
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 895
    :cond_12
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 902
    .end local v1           #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    .end local v2           #i:I
    :cond_13
    const/4 v10, 0x1

    if-ne v0, v10, :cond_14

    .line 903
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 904
    .restart local v1       #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 906
    .end local v1           #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_14
    const/4 v10, 0x2

    if-ne v0, v10, :cond_16

    .line 907
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 921
    :cond_15
    :goto_8
    return-void

    .line 909
    :cond_16
    const/4 v10, 0x3

    if-ne v0, v10, :cond_17

    .line 910
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 911
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 912
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 913
    :cond_17
    const/4 v10, 0x4

    if-ne v0, v10, :cond_15

    .line 914
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 915
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 916
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 917
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resetPositionToDefault()V
    .locals 3

    .prologue
    .line 2186
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v1, :cond_1

    .line 2187
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v0

    .line 2189
    .local v0, height:I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->onOffsetToDefault(I)V

    .line 2193
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationDown()V

    .line 2196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 2198
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2199
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2202
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v1, :cond_1

    .line 2203
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2206
    .end local v0           #height:I
    :cond_1
    return-void
.end method

.method private resolveKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2057
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2058
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 2059
    .local v0, canceled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    .line 2061
    .local v2, longPressed:Z
    const-string v4, "OppoOptionMenuBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "on key up...enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",scrolling="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "canceled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez v0, :cond_6

    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v4, :cond_6

    .line 2068
    :cond_1
    const/4 v4, 0x4

    if-ne v4, v1, :cond_4

    .line 2069
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-eqz v4, :cond_3

    .line 2097
    :cond_2
    :goto_0
    return v3

    .line 2071
    :cond_3
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_4

    .line 2073
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2078
    :cond_4
    const/16 v4, 0x52

    if-ne v4, v1, :cond_6

    .line 2079
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2081
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_0

    .line 2084
    :cond_5
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2086
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2097
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scrollView(Z)V
    .locals 5
    .parameter "isScrollDown"

    .prologue
    const/4 v4, 0x0

    .line 1755
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1760
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v1

    .line 1762
    .local v1, offsetHeight:I
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1763
    .local v0, offsetAnim:Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1764
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1766
    if-eqz p1, :cond_1

    .line 1767
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1793
    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1794
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBar$7;

    invoke-direct {v2, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$7;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1815
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBar$8;

    invoke-direct {v2, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$8;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1909
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1783
    :cond_1
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBar$6;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoOptionMenuBar$6;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private setElementItemAnimationDown(Landroid/widget/TextView;I)V
    .locals 6
    .parameter "elementItem"
    .parameter "position"

    .prologue
    const/4 v5, 0x2

    .line 2526
    if-eqz p1, :cond_1

    .line 2527
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 2528
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2530
    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2531
    .local v1, objectAnimatorX:Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2532
    .local v2, objectAnimatorY:Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2533
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2534
    iget-wide v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2535
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2536
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$10;

    invoke-direct {v3, p0, p2}, Lcom/oppo/widget/OppoOptionMenuBar$10;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;I)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2542
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2543
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v3, p2

    .line 2545
    .end local v0           #animatorSet:Landroid/animation/AnimatorSet;
    .end local v1           #objectAnimatorX:Landroid/animation/ObjectAnimator;
    .end local v2           #objectAnimatorY:Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 2530
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2531
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setElementItemAnimationUp(Landroid/widget/TextView;I)V
    .locals 6
    .parameter "elementItem"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 2483
    if-eqz p1, :cond_1

    .line 2484
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 2487
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    int-to-float v3, v3

    aput v3, v2, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2488
    .local v0, offsetAnim:Landroid/animation/ObjectAnimator;
    iget-wide v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2489
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2490
    mul-int/lit8 v1, p2, 0x3c

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2491
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2493
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$9;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2519
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2520
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v1, p2

    .line 2522
    .end local v0           #offsetAnim:Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V
    .locals 4
    .parameter "itemView"
    .parameter "item"

    .prologue
    .line 970
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-ne p1, v2, :cond_0

    .line 976
    :cond_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemId(I)V

    .line 977
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 979
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 980
    :cond_1
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    .line 985
    :goto_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 986
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemVisible(Z)V

    .line 988
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getWeight()F

    move-result v0

    .line 994
    .local v0, layoutWeight:F
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 996
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v2, :cond_3

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_3

    .line 997
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v2, :pswitch_data_0

    .line 1014
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1021
    :goto_1
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    return-void

    .line 982
    .end local v0           #layoutWeight:F
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 999
    .restart local v0       #layoutWeight:F
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/high16 v2, 0x408c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1004
    :pswitch_1
    const/high16 v2, 0x400c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1009
    :pswitch_2
    const v2, 0x3fbaaaa8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1018
    :cond_3
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "item"
    .parameter "bg"

    .prologue
    .line 957
    if-eqz p1, :cond_0

    .line 958
    if-eqz p2, :cond_1

    .line 959
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupDecorMask()V
    .locals 3

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 536
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v1, 0xc02046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 539
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$3;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$3;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 565
    :cond_2
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "decor view is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 567
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "decor mask is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    return-void
.end method

.method public collapseMenu()V
    .locals 0

    .prologue
    .line 2403
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 2404
    return-void
.end method

.method public copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 6
    .parameter "menuBar"
    .parameter "refreshMore"

    .prologue
    .line 1452
    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1453
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V

    .line 1454
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorHopeCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1455
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOptionMenuBarHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationMenuBarHeight(I)V

    .line 1456
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1457
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1458
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1463
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1466
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1467
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 1468
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1470
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1471
    return-void
.end method

.method public disableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2434
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2040
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    if-nez v1, :cond_1

    .line 2041
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2050
    :cond_0
    :goto_0
    return v0

    .line 2043
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2044
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2050
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2440
    :cond_0
    return-void
.end method

.method public expandMenu()V
    .locals 0

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    .line 2396
    return-void
.end method

.method public findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 1041
    const/4 v2, 0x0

    .line 1043
    .local v2, item:Lcom/oppo/widget/OppoMenuItem;
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1045
    .local v0, e:Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v0}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1046
    move-object v2, v0

    goto :goto_0

    .line 1051
    .end local v0           #e:Lcom/oppo/widget/OppoMenuItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1487
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getClickDuration()J
    .locals 2

    .prologue
    .line 2423
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method public getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorHopeCount()I
    .locals 1

    .prologue
    .line 1407
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    return v0
.end method

.method public getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorOperationTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMajorOperationVisibility()I
    .locals 1

    .prologue
    .line 1531
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    return v0
.end method

.method public getMajorOperationsGroup()Landroid/view/View;
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOperationsLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 1326
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    goto :goto_0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 1412
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method public getMoreOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getHeight()I

    move-result v0

    .line 1339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateOptionMenuBar()V
    .locals 2

    .prologue
    .line 1180
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1181
    return-void
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1593
    invoke-super {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isMoreOperaionsEnabled()Z
    .locals 1

    .prologue
    .line 2360
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method public isMoreOperationGroupScrolling()Z
    .locals 1

    .prologue
    .line 2356
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method public isMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 2364
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 1598
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 1599
    .local v3, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1603
    .local v0, e:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1604
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1608
    .end local v0           #e:Landroid/view/View;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1631
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_1

    .line 1632
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 1633
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1636
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1637
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 372
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 374
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    if-nez v0, :cond_1

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 376
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMajorOperationView()V

    .line 381
    const v0, 0xc020468

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 382
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const v0, 0xc020469

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 385
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0xc02046a

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 388
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0xc02046b

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 391
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v0, 0xc02046c

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 395
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 398
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0xc02046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarGallery;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 401
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-nez v0, :cond_0

    .line 402
    const-string v0, "OppoOptionMenuBar"

    const-string v1, "Can\'t find the More Operation View in DecorViw when init;if you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 407
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V

    .line 432
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 2210
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on gain focus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2213
    if-eqz p1, :cond_1

    .line 2214
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2215
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2245
    :cond_0
    :goto_0
    return-void

    .line 2239
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2241
    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2142
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildCount()I

    move-result v14

    .line 2144
    .local v14, count:I
    const/16 v18, 0x0

    .line 2145
    .local v18, maxHeight:I
    const/16 v19, 0x0

    .line 2146
    .local v19, maxWidth:I
    const/4 v13, 0x0

    .line 2148
    .local v13, childState:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 2150
    .local v15, height:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 2151
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2152
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 2154
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2156
    const/high16 v20, 0x4000

    .line 2157
    .local v20, mode:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    sub-int v21, v15, v2

    .line 2158
    .local v21, resizeHeight:I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2160
    .local v6, customHeightMeasureSpec:I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2165
    .end local v6           #customHeightMeasureSpec:I
    .end local v20           #mode:I
    .end local v21           #resizeHeight:I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 2166
    .local v17, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2168
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2170
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->combineMeasuredStates(II)I

    move-result v13

    .line 2150
    .end local v17           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2162
    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 2174
    .end local v3           #child:Landroid/view/View;
    :cond_2
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v13, 0x10

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMeasuredDimension(II)V

    .line 2179
    return-void
.end method

.method protected onOffset(I)V
    .locals 8
    .parameter "offset"

    .prologue
    .line 1940
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v5

    .line 1942
    .local v5, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1943
    .local v1, e:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1948
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1950
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_1

    .line 1951
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, p1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1957
    :goto_1
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1965
    const/4 v4, 0x0

    .line 1966
    .local v4, screen:Landroid/view/View;
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1967
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .end local v4           #screen:Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .line 1970
    .restart local v4       #screen:Landroid/view/View;
    :cond_0
    if-eqz v4, :cond_2

    .line 1971
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1953
    .end local v0           #content:Landroid/view/View;
    .end local v4           #screen:Landroid/view/View;
    :cond_1
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, p1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1973
    .restart local v0       #content:Landroid/view/View;
    .restart local v4       #screen:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1977
    .end local v0           #content:Landroid/view/View;
    .end local v4           #screen:Landroid/view/View;
    :cond_3
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1983
    .end local v1           #e:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidate()V

    .line 1984
    return-void
.end method

.method protected onOffsetToDefault(I)V
    .locals 6
    .parameter "offset"

    .prologue
    .line 1987
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 1989
    .local v3, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1990
    .local v0, e:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1995
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1997
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 1998
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 2000
    :cond_0
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2007
    .end local v0           #e:Landroid/view/View;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 2008
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 2273
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on change visibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 2278
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2279
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 2283
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on window has focus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    if-nez p1, :cond_1

    .line 2285
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-nez v0, :cond_0

    .line 2286
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2303
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2304
    return-void

    .line 2296
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-eqz v0, :cond_0

    .line 2297
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 2248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2250
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2257
    :cond_0
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2106
    return-void
.end method

.method public resetTheme()V
    .locals 5

    .prologue
    .line 2551
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 2553
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2554
    .local v0, defHeight:I
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 2556
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050428

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2557
    .local v1, defaultGroupPadding:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 2558
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2562
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080478

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 2569
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2570
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2571
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2572
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2574
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0804cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 2577
    return-void
.end method

.method public setAllMenuItemsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1139
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1140
    .local v0, e:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1144
    .end local v0           #e:Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setAllMenuItemsIcon(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, icons:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    if-eqz p1, :cond_0

    .line 1107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1109
    .local v1, size:I
    if-lez v1, :cond_0

    .line 1110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1111
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public setAllMenuItemsTitle(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 1076
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1078
    .local v1, size:I
    if-lez v1, :cond_0

    .line 1079
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 1202
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1207
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1208
    .local v5, rect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1209
    .local v0, hasPadding:Z
    const/4 v2, 0x0

    .line 1210
    .local v2, paddingLeft:I
    const/4 v4, 0x0

    .line 1211
    .local v4, paddingTop:I
    const/4 v3, 0x0

    .line 1212
    .local v3, paddingRight:I
    const/4 v1, 0x0

    .line 1214
    .local v1, paddingBottom:I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1215
    const/4 v0, 0x1

    .line 1216
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 1217
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 1218
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 1219
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 1224
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1227
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1229
    if-eqz v0, :cond_1

    .line 1230
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1235
    .end local v0           #hasPadding:Z
    .end local v1           #paddingBottom:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #paddingTop:I
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public setClickDuration(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 2412
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2413
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 2415
    :cond_0
    return-void
.end method

.method public setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 1
    .parameter "menuBar"

    .prologue
    .line 1447
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1448
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1573
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1575
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1585
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1588
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .parameter "enabled"
    .parameter "invalidate"

    .prologue
    .line 1491
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1492
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1499
    if-eqz p2, :cond_0

    .line 1500
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1502
    :cond_0
    return-void
.end method

.method public setFlowMenuFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2369
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 2370
    return-void
.end method

.method public setItemMoreIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1541
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 1542
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1544
    :cond_0
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1244
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1245
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "bgDefault"
    .parameter "bgLeft"
    .parameter "bgMiddle"
    .parameter "bgRight"

    .prologue
    const/4 v3, 0x0

    .line 1249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 1251
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1259
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1260
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1261
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1262
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1275
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1277
    return-void
.end method

.method public setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 1562
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    :cond_0
    return-void
.end method

.method public setMajorOperationCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1286
    return-void
.end method

.method public setMajorOperationMenuBarHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 1294
    if-lez p1, :cond_0

    .line 1295
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 1297
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1298
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1300
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1303
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1349
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1350
    return-void
.end method

.method public setMajorOperationTextColor(IIII)V
    .locals 4
    .parameter "defaultColor"
    .parameter "leftColor"
    .parameter "middleColor"
    .parameter "rightColor"

    .prologue
    .line 1374
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1377
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 1360
    if-eqz p1, :cond_0

    .line 1361
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1363
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1364
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1365
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1366
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1368
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "defaultColor"
    .parameter "leftColor"
    .parameter "middleColor"
    .parameter "rightColor"

    .prologue
    .line 1381
    if-eqz p1, :cond_0

    .line 1382
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1385
    :cond_0
    if-eqz p2, :cond_1

    .line 1386
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 1389
    :cond_1
    if-eqz p3, :cond_2

    .line 1390
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 1393
    :cond_2
    if-eqz p4, :cond_3

    .line 1394
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 1396
    :cond_3
    return-void
.end method

.method public setMajorOperationVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1511
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 1513
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    if-eqz v0, :cond_0

    .line 1514
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1522
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1523
    return-void
.end method

.method public setMenuItemEnabled(IZ)V
    .locals 1
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1126
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1127
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1129
    :cond_0
    return-void
.end method

.method public setMenuItemIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "icon"

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1095
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1096
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1098
    :cond_0
    return-void
.end method

.method public setMenuItemTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "title"

    .prologue
    .line 1062
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1064
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1067
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1155
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1156
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1158
    :cond_0
    return-void
.end method

.method public setMenuItems(I)V
    .locals 1
    .parameter "menuRes"

    .prologue
    .line 613
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(II)V

    .line 614
    return-void
.end method

.method public setMenuItems(II)V
    .locals 2
    .parameter "menuRes"
    .parameter "majorOperationCount"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 618
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 620
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 621
    return-void
.end method

.method public setMenuItems(IIZ)V
    .locals 2
    .parameter "menuRes"
    .parameter "majorOperationCount"
    .parameter "invalidate"

    .prologue
    .line 653
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 654
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 656
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 657
    return-void
.end method

.method public setMenuItems(IZ)V
    .locals 1
    .parameter "menuRes"
    .parameter "invalidate"

    .prologue
    .line 649
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(IIZ)V

    .line 650
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 625
    return-void
.end method

.method public setMenuItems(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "majorOperationCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 631
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 632
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 637
    :goto_0
    if-eqz p1, :cond_0

    .line 638
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 643
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 646
    :cond_0
    return-void

    .line 634
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;IZ)V
    .locals 1
    .parameter
    .parameter "majorOperationCount"
    .parameter "invalidate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 667
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 668
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 673
    :goto_0
    if-eqz p1, :cond_0

    .line 674
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 680
    if-eqz p3, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 684
    :cond_0
    return-void

    .line 670
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "invalidate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 661
    return-void
.end method

.method public setMenuItemsVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1166
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1167
    .local v0, e:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1168
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1171
    .end local v0           #e:Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setOnOptionsItemSelectedListener(Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 1652
    return-void
.end method

.method public setmAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animationDrawable"

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2453
    :cond_0
    return-void
.end method

.method public startElementItemAnimationDown()V
    .locals 3

    .prologue
    .line 2477
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationDown(Landroid/widget/TextView;I)V

    .line 2478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2481
    :cond_0
    return-void
.end method

.method public startElementItemAnimationUp()V
    .locals 3

    .prologue
    .line 2470
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2471
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2472
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationUp(Landroid/widget/TextView;I)V

    .line 2471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2474
    :cond_0
    return-void
.end method

.method protected startScrollDown()V
    .locals 1

    .prologue
    .line 1719
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1720
    return-void
.end method

.method protected startScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1682
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocus()Z

    .line 1683
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocusFromTouch()Z

    .line 1687
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1688
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1691
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-eqz v0, :cond_1

    .line 1692
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1699
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1701
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_3

    .line 1702
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1710
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_4

    .line 1711
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 1715
    :cond_4
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1716
    return-void
.end method

.method public unRegister()V
    .locals 4

    .prologue
    .line 2260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2262
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->stopItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2269
    :cond_0
    return-void
.end method
