.class public Lcom/oppo/widget/OppoNumberPicker;
.super Landroid/widget/LinearLayout;
.source "OppoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoNumberPicker$CustomEditText;,
        Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;,
        Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;,
        Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;,
        Lcom/oppo/widget/OppoNumberPicker$Formatter;,
        Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;,
        Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field public static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_DIR:Ljava/lang/String; = "/data/thaicalendar/"

.field public static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_FILE:Ljava/lang/String; = "enable_state.properties"

.field public static final KEY_THAI_CALENDAR_ENABLE_STATE:Ljava/lang/String; = "key_thai_calendar_enable_state"

.field private static final LOG_TAG:Ljava/lang/String; = "OppoNumberPicker"

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter; = null

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field mBlueEnd:I

.field mBlueStart:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private mClickSoundId:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

.field mGreenEnd:I

.field mGreenStart:I

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field mIsBold:Z

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private mLunarLeap11:Ljava/lang/String;

.field private mLunarLeap12:Ljava/lang/String;

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field mRedEnd:I

.field mRedStart:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mTempRect:Landroid/graphics/Rect;

.field mTextEnd:I

.field private final mTextSize:I

.field mTextStart:I

.field private mThaiCalendarState:Z

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "OppoNumberPicker"

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->TAG:Ljava/lang/String;

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/oppo/widget/OppoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 223
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->DIGIT_CHARACTERS:[C

    .line 239
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoNumberPicker$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    return-void

    .line 223
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 589
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 598
    const v0, 0xc010401

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 599
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 609
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    .line 107
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    .line 108
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    .line 110
    const/16 v17, 0xb

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    .line 111
    const/16 v17, 0x98

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    .line 112
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    .line 114
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    .line 115
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    .line 343
    const-wide/16 v17, 0x12c

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    .line 348
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 353
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 371
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    .line 499
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 504
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    .line 2171
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->audioManager:Landroid/media/AudioManager;

    .line 2196
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    .line 612
    sget-object v17, Landroid/R$styleable;->NumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 614
    .local v5, attributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSolidColor:I

    .line 618
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    .line 620
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 623
    new-instance v17, Landroid/media/SoundPool;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x3

    invoke-direct/range {v17 .. v20}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    .line 624
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/media/audio/ui/numberpicker_click.ogg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mClickSoundId:I

    .line 630
    sget-object v17, Loppo/R$styleable;->OppoNumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 646
    .local v12, oppoAttributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    .line 648
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 652
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "minHeight > maxHeight"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 654
    :cond_0
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    .line 656
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    .line 659
    const/16 v17, 0x8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    .line 661
    const/16 v17, 0xa

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    .line 663
    const/16 v17, 0x9

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    .line 665
    const/16 v17, 0xb

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mIsBold:Z

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 669
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "minWidth > maxWidth"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 671
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mComputeMaxWidth:Z

    .line 672
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 682
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setWillNotDraw(Z)V

    .line 683
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 687
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v17, 0xc090400

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 689
    new-instance v10, Lcom/oppo/widget/OppoNumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/oppo/widget/OppoNumberPicker$2;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 705
    .local v10, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v11, Lcom/oppo/widget/OppoNumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/oppo/widget/OppoNumberPicker$3;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 719
    .local v11, onLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->isThaiCalendarEnabled()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    .line 722
    const v17, 0xc020426

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 727
    const v17, 0xc020427

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 732
    const v17, 0xc020428

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;

    invoke-direct/range {v20 .. v21}, Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 741
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 742
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    .line 743
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinimumFlingVelocity:I

    .line 744
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v17

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaximumFlingVelocity:I

    .line 749
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setLayerType(ILandroid/graphics/Paint;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc040402

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap11:Ljava/lang/String;

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc040403

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap12:Ljava/lang/String;

    .line 752
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 753
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 754
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc060400

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 760
    .local v7, endColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc060408

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 762
    .local v16, startColor:I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    .line 763
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    .line 765
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    .line 766
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    .line 768
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    .line 769
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    .line 771
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 774
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 777
    const-string v17, "selectorPaintAlpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 781
    .local v15, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 783
    .local v14, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v15, v18, v19

    const/16 v19, 0x2

    aput-object v14, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/oppo/widget/OppoNumberPicker$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v14}, Lcom/oppo/widget/OppoNumberPicker$4;-><init>(Lcom/oppo/widget/OppoNumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 811
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 812
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v20, 0x4020

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v17 .. v19}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 814
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 819
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 828
    :cond_2
    :goto_1
    return-void

    .line 671
    .end local v6           #configuration:Landroid/view/ViewConfiguration;
    .end local v7           #endColor:I
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v11           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #showDecrementButton:Landroid/animation/ObjectAnimator;
    .end local v15           #showIncrementButton:Landroid/animation/ObjectAnimator;
    .end local v16           #startColor:I
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 824
    .restart local v6       #configuration:Landroid/view/ViewConfiguration;
    .restart local v7       #endColor:I
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v11       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v14       #showDecrementButton:Landroid/animation/ObjectAnimator;
    .restart local v15       #showIncrementButton:Landroid/animation/ObjectAnimator;
    .restart local v16       #startColor:I
    :cond_4
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_1

    .line 353
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 777
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 779
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 781
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoNumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoNumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoNumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoNumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoNumberPicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoNumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoNumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoNumberPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoNumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/oppo/widget/OppoNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoNumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1599
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1611
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1604
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1606
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1607
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 1608
    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->notifyChange(II)V

    .line 1609
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->playSoundEffect()V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1620
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1622
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1623
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1624
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1625
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1626
    if-eqz p1, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1633
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 1641
    :goto_1
    return-void

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1635
    :cond_1
    if-eqz p1, :cond_2

    .line 1636
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1638
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1848
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1849
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1848
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1851
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1852
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1853
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1855
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1856
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1857
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1866
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1867
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1870
    :cond_0
    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1871
    :cond_1
    const-string v2, ""

    .line 1880
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1873
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1874
    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1875
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1876
    goto :goto_1

    .line 1877
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1796
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1797
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1754
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1756
    if-lez p1, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1762
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 1763
    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1649
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1650
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1651
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1652
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1653
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 1655
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1886
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 1888
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    .local v0, region:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1890
    add-int/lit16 p1, p1, 0x21f

    .line 1894
    .end local v0           #region:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1979
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2003
    :goto_0
    return v1

    .line 1984
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1986
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1987
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1988
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1984
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1997
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1980
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 2003
    :goto_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    goto :goto_0

    .line 1998
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1819
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1820
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1824
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1821
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1822
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private gradualChange(IIF)I
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "distance"

    .prologue
    .line 1465
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 1468
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int p1, p2, v0

    .line 1472
    .end local p1
    :cond_0
    return p1
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1769
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1770
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1773
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1832
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1833
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1835
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1836
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1837
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1839
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1840
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1841
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1716
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setFadingEdgeLength(I)V

    .line 1717
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1699
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1700
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1701
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1702
    .local v4, totalTextHeight:I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mBottom:I

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1703
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    int-to-float v2, v5

    .line 1704
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    .line 1705
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    .line 1707
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1708
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    .line 1710
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1711
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1712
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1578
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1579
    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1580
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    .line 1581
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1582
    add-int/lit8 v4, v1, -0x1

    add-int v3, v0, v4

    .line 1583
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1584
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1586
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1587
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1589
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1671
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1673
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThaiCalendarEnabled()Z
    .locals 9

    .prologue
    .line 2208
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2209
    .local v4, prop:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 2210
    .local v2, fis:Ljava/io/FileInputStream;
    const-string v5, "false"

    .line 2212
    .local v5, state:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/thaicalendar/enable_state.properties"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2214
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2215
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2216
    const-string v6, "key_thai_calendar_enable_state"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 2220
    if-eqz v3, :cond_3

    .line 2222
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 2228
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v6, "OppoNumberPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 2223
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 2225
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 2217
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2218
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "OppoNumberPicker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2220
    if-eqz v2, :cond_0

    .line 2222
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2223
    :catch_2
    move-exception v6

    goto :goto_0

    .line 2220
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_1

    .line 2222
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2225
    :cond_1
    :goto_4
    throw v6

    .line 2229
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2223
    :catch_3
    move-exception v7

    goto :goto_4

    .line 2220
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2217
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_3
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1539
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1550
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1542
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1543
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1544
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1552
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1548
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1550
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1544
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;->onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V

    .line 1941
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1741
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    .line 1745
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/oppo/widget/OppoNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1723
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1724
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1725
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    .line 1726
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 1735
    :goto_0
    return-void

    .line 1728
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1729
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1732
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1733
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 2027
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    .line 2031
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2032
    return-void

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1950
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1951
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1952
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1955
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1956
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2012
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    .line 2016
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    #setter for: Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->access$602(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I

    .line 2017
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    #setter for: Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->access$702(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I

    .line 2018
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2019
    return-void

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1965
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1968
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 1969
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1971
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1566
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1567
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1568
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1570
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1664
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 1665
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1682
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    .line 1683
    if-ne p1, v3, :cond_0

    .line 1684
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1687
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1689
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1690
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    const v2, 0xc040459

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1692
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1693
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 1694
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1696
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 1782
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1784
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1785
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1786
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1215
    iget-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    const/4 v4, 0x0

    .line 1219
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1220
    const/4 v3, 0x0

    .line 1221
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1222
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1223
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1224
    move v3, v1

    .line 1221
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1227
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1228
    .local v5, numberOfDigits:I
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1229
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1230
    add-int/lit8 v5, v5, 0x1

    .line 1231
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1233
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1243
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1244
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1245
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1246
    iput v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    .line 1250
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    goto :goto_0

    .line 1235
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1236
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1237
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1238
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1239
    float-to-int v4, v6

    .line 1236
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1248
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1803
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1808
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1813
    :goto_1
    return-void

    .line 1806
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1811
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1920
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1921
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1925
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1927
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1928
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mContext:Landroid/content/Context;

    const v2, 0xc04045a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1932
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1923
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1898
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1901
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1907
    :goto_0
    return-void

    .line 1904
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1905
    .local v0, current:I
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1049
    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1053
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1054
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1055
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1060
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1061
    .local v0, currentScrollerY:I
    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 1062
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1064
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 1065
    iput v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1066
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1067
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1075
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1435
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1031
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1032
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1033
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1035
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1012
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1015
    :pswitch_0
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1017
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 1023
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1041
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1042
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1044
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1447
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1451
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1454
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1455
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1456
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1454
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1459
    :cond_1
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1462
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1412
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1315
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1406
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1418
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1421
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    .line 1425
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 871
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 872
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1429
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1430
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 1478
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v12, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1482
    :cond_0
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mRight:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1483
    .local v10, x:F
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1485
    .local v11, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1488
    .local v6, restoreCount:I
    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1489
    .local v9, selectorIndices:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v12, v9

    if-ge v4, v12, :cond_5

    .line 1490
    aget v8, v9, v4

    .line 1491
    .local v8, selectorIndex:I
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1496
    .local v7, scrollSelectorValue:Ljava/lang/String;
    const/4 v12, 0x1

    if-ne v4, v12, :cond_1

    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1498
    :cond_1
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v5

    .line 1499
    .local v5, red:I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v3

    .line 1500
    .local v3, green:I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v0

    .line 1501
    .local v0, blue:I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v2

    .line 1503
    .local v2, f:I
    invoke-static {v5, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 1504
    .local v1, color:I
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1506
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap11:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap12:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1508
    :cond_2
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-int/lit8 v13, v2, 0x3

    div-int/lit8 v13, v13, 0x4

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1514
    :goto_2
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1516
    .end local v0           #blue:I
    .end local v1           #color:I
    .end local v2           #f:I
    .end local v3           #green:I
    .end local v5           #red:I
    :cond_3
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1489
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1510
    .restart local v0       #blue:I
    .restart local v1       #color:I
    .restart local v2       #f:I
    .restart local v3       #green:I
    .restart local v5       #red:I
    :cond_4
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v13, v2

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    .line 1521
    .end local v0           #blue:I
    .end local v1           #color:I
    .end local v2           #f:I
    .end local v3           #green:I
    .end local v5           #red:I
    .end local v7           #scrollSelectorValue:Ljava/lang/String;
    .end local v8           #selectorIndex:I
    :cond_5
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 894
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 941
    :goto_0
    return v3

    .line 897
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 941
    goto :goto_0

    .line 899
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    .line 900
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 901
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 902
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 903
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 904
    iput-boolean v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 905
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 906
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 907
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 909
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 910
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 911
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 912
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 914
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 915
    iput-boolean v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 916
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 907
    goto :goto_1

    .line 919
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/oppo/widget/OppoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/oppo/widget/OppoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v3, v4

    .line 921
    goto :goto_0

    .line 923
    :cond_7
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 924
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 925
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_0

    .line 929
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 930
    .local v0, currentMoveY:F
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 931
    .local v1, deltaDownY:I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 932
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 933
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 934
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 935
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredWidth()I

    move-result v20

    .line 833
    .local v20, msrdWdth:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredHeight()I

    move-result v19

    .line 836
    .local v19, msrdHght:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 837
    .local v5, decrBtnMsrdWdth:I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 838
    .local v4, decrBtnLeft:I
    const/4 v7, 0x0

    .line 839
    .local v7, decrBtnTop:I
    add-int v6, v4, v5

    .line 840
    .local v6, decrBtnRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v3, v21, 0x0

    .line 841
    .local v3, decrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v16

    .line 845
    .local v16, inptTxtMsrdWdth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v15

    .line 846
    .local v15, inptTxtMsrdHght:I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 847
    .local v14, inptTxtLeft:I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 848
    .local v18, inptTxtTop:I
    add-int v17, v14, v16

    .line 849
    .local v17, inptTxtRight:I
    add-int v13, v18, v15

    .line 850
    .local v13, inptTxtBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 854
    .local v12, inctBtnMsrdWdth:I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 855
    .local v9, incrBtnLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    sub-int v11, v19, v21

    .line 856
    .local v11, incrBtnTop:I
    add-int v10, v9, v5

    .line 857
    .local v10, incrBtnRight:I
    move/from16 v8, v19

    .line 858
    .local v8, incrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v11, v10, v8}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 861
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheel()V

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeFadingEdges()V

    .line 866
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 877
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/oppo/widget/OppoNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 878
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/oppo/widget/OppoNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 879
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 881
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 883
    .local v3, widthSize:I
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 885
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Lcom/oppo/widget/OppoNumberPicker;->setMeasuredDimension(II)V

    .line 890
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1006
    :goto_0
    return v8

    .line 949
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 950
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 952
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 954
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v8, v9

    .line 1006
    goto :goto_0

    .line 956
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 957
    .local v1, currentMoveY:F
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v10, :cond_2

    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    if-eq v10, v9, :cond_3

    .line 959
    :cond_2
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 960
    .local v2, deltaDownY:I
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 961
    iput-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 962
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 965
    .end local v2           #deltaDownY:I
    :cond_3
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 966
    .local v3, deltaMoveY:I
    invoke-virtual {p0, v8, v3}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 967
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 968
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 971
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v10, :cond_4

    .line 972
    iput-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v10, v12

    .line 974
    .local v4, deltaTapTimeMillis:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_4

    .line 975
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 976
    iget-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    move v8, v9

    .line 983
    goto :goto_0

    .line 986
    .end local v4           #deltaTapTimeMillis:J
    :cond_4
    iget-object v7, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 987
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 988
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v6, v10

    .line 989
    .local v6, initialVelocity:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 990
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->fling(I)V

    .line 991
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 1001
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 1002
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1

    .line 993
    :cond_6
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v10, :cond_7

    .line 994
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 995
    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 998
    :cond_7
    sget v8, Lcom/oppo/widget/OppoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 2189
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mClickSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2191
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 1090
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1094
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1096
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1099
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1101
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1104
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1105
    :cond_4
    :goto_1
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1106
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1107
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->decrementSelectorIndices([I)V

    .line 1108
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    .line 1109
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1110
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1113
    :cond_5
    :goto_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1114
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1115
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->incrementSelectorIndices([I)V

    .line 1116
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    .line 1117
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1118
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1529
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1402
    :goto_0
    return-void

    .line 1391
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1392
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1399
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1400
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1401
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1082
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1083
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1084
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1085
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1086
    return-void
.end method

.method public setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1161
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    .line 1162
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1163
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1356
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1359
    :cond_0
    if-gez p1, :cond_1

    .line 1360
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1362
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1363
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1364
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1366
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1367
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1368
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1369
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1370
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1366
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1324
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1327
    :cond_0
    if-gez p1, :cond_1

    .line 1328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1330
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1331
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1332
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1334
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1335
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1336
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1337
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1338
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1334
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1297
    iput-wide p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    .line 1298
    return-void
.end method

.method public setOnScrollListener(Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    .line 1144
    return-void
.end method

.method public setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    .line 1135
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1195
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1199
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1201
    :cond_1
    :goto_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1202
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1204
    :cond_2
    :goto_2
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1205
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1206
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1207
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1208
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    goto :goto_0

    .line 1199
    :cond_3
    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    goto :goto_1

    .line 1202
    :cond_4
    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1277
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1281
    iput-boolean p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    .line 1282
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1284
    :cond_1
    return-void
.end method
