.class public Lcom/oppo/widget/OppoLunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "OppoLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoLunarDatePicker$SavedState;,
        Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x776

.field private static final PICKER_CHILD_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sMaxDate:Ljava/util/Calendar;

.field private static sMinDate:Ljava/util/Calendar;


# instance fields
.field private chineseNumber:[Ljava/lang/String;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private final mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 61
    const-class v0, Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 101
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v1, 0x776

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 106
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v1, 0x7f4

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 147
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u6b63\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u4e8c\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u4e09\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u56db\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u4e94\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u516d\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u4e03\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u516b\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u4e5d\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u5341\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\u5341\u4e00"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "\u5341\u4e8c"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 88
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u4e00"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u4e8c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u4e09"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u56db"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u4e94"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u516d"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u4e03"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u516b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u4e5d"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\u5341\u4e00"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "\u5341\u4e8c"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->chineseNumber:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 94
    const/16 v0, 0xc

    iput v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 153
    const/4 v11, 0x1

    .line 154
    .local v11, spinnersShown:Z
    const/4 v7, 0x1

    .line 155
    .local v7, calendarViewShown:Z
    const/16 v12, 0x776

    .line 156
    .local v12, startYear:I
    const/16 v1, 0x7f4

    .line 157
    .local v1, endYear:I
    const v9, 0xc090402

    .line 160
    .local v9, layoutResourceId:I
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 162
    .local v8, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x1

    invoke-virtual {v8, v9, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 164
    new-instance v10, Lcom/oppo/widget/OppoLunarDatePicker$1;

    invoke-direct {v10, p0}, Lcom/oppo/widget/OppoLunarDatePicker$1;-><init>(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 314
    .local v10, onChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;
    const v0, 0xc02042e

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 317
    const v0, 0xc020430

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 321
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 322
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 327
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 328
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 336
    :goto_0
    const v0, 0xc02042f

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 337
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 338
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 339
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 341
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 343
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 345
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 346
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 347
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 354
    :goto_1
    const v0, 0xc020431

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 355
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 356
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 360
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 361
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 362
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 371
    :goto_2
    if-nez v11, :cond_4

    if-nez v7, :cond_4

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setSpinnersShown(Z)V

    .line 379
    :goto_3
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 380
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 381
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->setMinDate(J)V

    .line 384
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 385
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 386
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->setMaxDate(J)V

    .line 389
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 394
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->reorderSpinners()V

    .line 397
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 399
    .local v6, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->setContentDescriptions()V

    .line 402
    :cond_0
    return-void

    .line 331
    .end local v6           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 332
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mDaySpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    :cond_2
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 351
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mMonthSpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 365
    :cond_3
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 366
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mYearSpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 374
    :cond_4
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoLunarDatePicker;->setSpinnersShown(Z)V

    .line 375
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoLunarDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoLunarDatePicker;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 593
    if-nez p1, :cond_0

    .line 594
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 599
    :goto_0
    return-object v2

    .line 596
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 597
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 598
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    const/4 v0, 0x1

    .line 697
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 867
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->sendAccessibilityEvent(I)V

    .line 868
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;->onLunarDateChanged(Lcom/oppo/widget/OppoLunarDatePicker;III)V

    .line 872
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 609
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 610
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 611
    .local v1, order:[C
    array-length v2, v1

    .line 612
    .local v2, spinnerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 613
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 627
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 615
    :sswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    .line 612
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :sswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    goto :goto_1

    .line 623
    :sswitch_2
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    goto :goto_1

    .line 630
    :cond_0
    return-void

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 904
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 906
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 907
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "mDaySpinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 910
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "mMonthSpinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 913
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "mYearSpinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 918
    :cond_2
    const v2, 0xc040453

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 921
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 922
    const v2, 0xc040454

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 924
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 928
    const v2, 0xc040455

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 929
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 930
    const v2, 0xc040456

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 932
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 936
    const v2, 0xc040457

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 937
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 939
    const v2, 0xc040458

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 940
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 575
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 577
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 578
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 579
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 580
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 704
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 4
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 887
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 888
    const/4 v0, 0x5

    .line 894
    .local v0, imeOptions:I
    :goto_0
    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 895
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "spinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_1
    return-void

    .line 890
    .end local v0           #imeOptions:I
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0

    .line 899
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 900
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1
.end method

.method private updateCalendarView()V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 949
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 950
    .local v0, context:Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 952
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 953
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 954
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 955
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 957
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 958
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 959
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 961
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 29

    .prologue
    .line 712
    const/4 v9, 0x0

    .line 713
    .local v9, isLeapYear:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 714
    .local v7, gregorianYear:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v26

    add-int/lit8 v6, v26, 0x1

    .line 715
    .local v6, gregorianMonth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 716
    .local v5, gregorianDay:I
    invoke-static {v7, v6, v5}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v12

    .line 717
    .local v12, lunarDate:[I
    const/16 v26, 0x0

    aget v26, v12, v26

    invoke-static/range {v26 .. v26}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v10

    .line 718
    .local v10, leapMonth:I
    const/16 v26, 0x1

    aget v25, v12, v26

    .line 719
    .local v25, monthIndexDisplay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/oppo/widget/OppoLunarUtil;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v13

    .line 721
    .local v13, lunarDateString:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 722
    add-int/lit8 v25, v25, -0x1

    .line 729
    :cond_0
    :goto_0
    if-eqz v10, :cond_4

    .line 730
    const/16 v26, 0xd

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    .line 731
    const/4 v9, 0x1

    .line 736
    :goto_1
    const/16 v26, 0x0

    aget v26, v12, v26

    const/16 v27, 0x1

    aget v27, v12, v27

    invoke-static/range {v26 .. v27}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v24

    .line 737
    .local v24, monthCountDays:I
    if-eqz v10, :cond_1

    move/from16 v0, v25

    if-ne v0, v10, :cond_1

    const-string v26, "\u95f0"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 746
    const/16 v26, 0x0

    aget v26, v12, v26

    invoke-static/range {v26 .. v26}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v24

    .line 750
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    sget-object v27, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v27, v12, v27

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 779
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v4, v0, [Ljava/lang/String;

    .line 780
    .local v4, displayedMonths:[Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 781
    const/4 v8, 0x0

    .line 782
    .local v8, i:I
    :goto_3
    if-ge v8, v10, :cond_7

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v8

    aput-object v26, v4, v8

    .line 782
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 723
    .end local v4           #displayedMonths:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v24           #monthCountDays:I
    :cond_2
    move/from16 v0, v25

    if-ge v0, v10, :cond_3

    if-eqz v10, :cond_3

    .line 724
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_0

    .line 725
    :cond_3
    move/from16 v0, v25

    if-ne v0, v10, :cond_0

    const-string v26, "\u95f0"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 726
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_0

    .line 733
    :cond_4
    const/16 v26, 0xc

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    goto/16 :goto_1

    .line 759
    .restart local v24       #monthCountDays:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    sget-object v27, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v27, v12, v27

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 769
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 785
    .restart local v4       #displayedMonths:[Ljava/lang/String;
    .restart local v8       #i:I
    :cond_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "\u95f0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->chineseNumber:[Ljava/lang/String;

    move-object/from16 v27, v0

    add-int/lit8 v28, v10, -0x1

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v4, v10

    .line 786
    add-int/lit8 v8, v8, 0x1

    .line 787
    :goto_4
    const/16 v26, 0xd

    move/from16 v0, v26

    if-ge v8, v0, :cond_9

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, -0x1

    aget-object v26, v26, v27

    aput-object v26, v4, v8

    .line 787
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 791
    .end local v8           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->getMinValue()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oppo/widget/OppoNumberPicker;->getMaxValue()I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    invoke-static/range {v26 .. v28}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #displayedMonths:[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 794
    .restart local v4       #displayedMonths:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/oppo/widget/OppoNumberPicker;->getMaxValue()I

    move-result v14

    .line 797
    .local v14, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/oppo/widget/OppoNumberPicker;->getMinValue()I

    move-result v19

    .line 798
    .local v19, min:I
    sub-int v26, v14, v19

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v3, v0, [Ljava/lang/String;

    .line 799
    .local v3, displayedDays:[Ljava/lang/String;
    new-instance v11, Lcom/oppo/widget/OppoLunarUtil;

    invoke-direct {v11}, Lcom/oppo/widget/OppoLunarUtil;-><init>()V

    .line 801
    .local v11, lunar:Lcom/oppo/widget/OppoLunarUtil;
    move/from16 v8, v19

    .restart local v8       #i:I
    :goto_5
    if-gt v8, v14, :cond_a

    .line 802
    sub-int v26, v8, v19

    invoke-static {v8}, Lcom/oppo/widget/OppoLunarUtil;->chneseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v3, v26

    .line 801
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 804
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 807
    sget-object v26, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 808
    .local v22, minGregorianYear:I
    sget-object v26, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v26

    add-int/lit8 v21, v26, 0x1

    .line 809
    .local v21, minGregorianMonth:I
    sget-object v26, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 810
    .local v20, minGregorianDay:I
    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v23

    .line 813
    .local v23, minLunarDate:[I
    sget-object v26, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 814
    .local v17, maxGregorianYear:I
    sget-object v26, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v26

    add-int/lit8 v16, v26, 0x1

    .line 815
    .local v16, maxGregorianMonth:I
    sget-object v26, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 816
    .local v15, maxGregorianDay:I
    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v18

    .line 819
    .local v18, maxLunarDate:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v23, v27

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v18, v27

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v12, v27

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v27, v12, v27

    invoke-virtual/range {v26 .. v27}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 835
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 657
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getLeapMonth()I
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v0

    return v0
.end method

.method public getLunarDate()[I
    .locals 6

    .prologue
    .line 970
    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 971
    .local v2, gregorianYear:I
    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 972
    .local v1, gregorianMonth:I
    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 973
    .local v0, gregorianDay:I
    invoke-static {v2, v1, v0}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    .line 974
    .local v3, lunarDate:[I
    return-object v3
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 415
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 690
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    .line 691
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    .line 692
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 693
    iput-object p4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    .line 694
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth(I)Z
    .locals 2
    .parameter "month"

    .prologue
    const/4 v0, 0x1

    .line 980
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 515
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 516
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 505
    const/16 v0, 0x14

    .line 507
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 668
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;

    .line 669
    .local v0, ss:Lcom/oppo/widget/OppoLunarDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 670
    #getter for: Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->access$1100(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I

    move-result v1

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->access$1200(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I

    move-result v2

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->access$1300(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    .line 671
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    .line 672
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 673
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 661
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 662
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/oppo/widget/OppoLunarDatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .parameter "shown"

    .prologue
    .line 544
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 487
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .parameter "maxDate"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 463
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 464
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 466
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDate failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return-void

    .line 470
    :cond_0
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 471
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 473
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .parameter "minDate"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 426
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 427
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 429
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMinDate failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return-void

    .line 433
    :cond_0
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 434
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 436
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    return-void

    .line 561
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 643
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    .line 647
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    .line 648
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 649
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
