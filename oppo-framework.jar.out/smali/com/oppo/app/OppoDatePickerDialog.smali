.class public Lcom/oppo/app/OppoDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "OppoDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;
.implements Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field public static final LUNAR_DEFAULT:I = 0x2

.field private static final MONTH:Ljava/lang/String; = "month"

.field public static final NO_BUTTON:I = 0x3

.field public static final SOLAR_DEFAULT:I = 0x1

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

.field private mChineseDateAndSolarDate:Lcom/oppo/util/OppoChineseDateAndSolarDate;

.field private mDatePicker:Lcom/oppo/widget/OppoDatePicker;

.field private mIsLunarDate:Z

.field private mLeftBtn:Landroid/widget/Button;

.field private mLeftDrawableOff:Landroid/graphics/drawable/Drawable;

.field private mLeftDrawableOn:Landroid/graphics/drawable/Drawable;

.field private final mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

.field private mRightBtn:Landroid/widget/Button;

.field private mRightDrawableOff:Landroid/graphics/drawable/Drawable;

.field private mRightDrawableOn:Landroid/graphics/drawable/Drawable;

.field private mShowWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isLunar"

    .prologue
    .line 135
    const/4 v2, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isLunar"
    .parameter "defaultShow"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/OppoChineseDateAndSolarDate;

    .line 149
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mIsLunarDate:Z

    .line 150
    move/from16 v0, p8

    iput v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    .line 151
    iput-object p3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    .line 153
    new-instance v6, Lcom/oppo/util/OppoChineseDateAndSolarDate;

    invoke-direct {v6}, Lcom/oppo/util/OppoChineseDateAndSolarDate;-><init>()V

    iput-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/OppoChineseDateAndSolarDate;

    .line 155
    invoke-virtual {p0}, Lcom/oppo/app/OppoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 156
    .local v5, themeContext:Landroid/content/Context;
    const/4 v6, -0x1

    const v7, 0xc040526

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p0}, Lcom/oppo/app/OppoDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 157
    const/4 v7, -0x2

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v6, 0x0

    check-cast v6, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v8, v6}, Lcom/oppo/app/OppoDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/oppo/app/OppoDatePickerDialog;->setIcon(I)V

    .line 160
    const v6, 0xc04044a

    invoke-virtual {p0, v6}, Lcom/oppo/app/OppoDatePickerDialog;->setTitle(I)V

    .line 162
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 164
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0xc09040f

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 167
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const v6, 0xc02041d

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 168
    .local v3, mLinearLayout:Landroid/widget/LinearLayout;
    const v6, 0xc02041e

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    .line 169
    const v6, 0xc02041f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    .line 171
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v7, Lcom/oppo/app/OppoDatePickerDialog$1;

    invoke-direct {v7, p0}, Lcom/oppo/app/OppoDatePickerDialog$1;-><init>(Lcom/oppo/app/OppoDatePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v7, Lcom/oppo/app/OppoDatePickerDialog$2;

    invoke-direct {v7, p0}, Lcom/oppo/app/OppoDatePickerDialog$2;-><init>(Lcom/oppo/app/OppoDatePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v6, Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {p0}, Lcom/oppo/app/OppoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    .line 204
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setCalendarViewShown(Z)V

    .line 206
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v4, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v6, Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {p0}, Lcom/oppo/app/OppoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 212
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoDatePicker;->setCalendarViewShown(Z)V

    .line 213
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 216
    iget-boolean v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mIsLunarDate:Z

    if-nez v6, :cond_1

    .line 217
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oppo/app/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 239
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v6, p4, p5, p6, p0}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 240
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v6, p4, p5, p6, p0}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 241
    return-void

    .line 220
    :cond_1
    iget v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 221
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 224
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_2
    iget v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 226
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 229
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_3
    iget v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 231
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 234
    iget-object v6, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isLunar"

    .prologue
    .line 109
    const/4 v2, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V
    .locals 9
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isLunar"
    .parameter "defaultShow"

    .prologue
    .line 121
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public getDatePicker()Lcom/oppo/widget/OppoDatePicker;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    return-object v0
.end method

.method public getLunarDatePicker()Lcom/oppo/widget/OppoLunarDatePicker;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    .line 244
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->clearFocus()V

    .line 246
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDatePicker;->clearFocus()V

    .line 247
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v6

    .line 250
    .local v6, lunarDate:[I
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v2, 0x0

    aget v2, v6, v2

    aget v3, v6, v7

    const/4 v4, 0x2

    aget v4, v6, v4

    iget-object v5, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    aget v7, v6, v7

    invoke-virtual {v5, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->isLeapMonth(I)Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;->onLunarDateSet(Lcom/oppo/widget/OppoLunarDatePicker;IIIZ)V

    .line 258
    .end local v6           #lunarDate:[I
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v6       #lunarDate:[I
    :cond_1
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/oppo/widget/OppoDatePicker;III)V

    goto :goto_0
.end method

.method public onDateChanged(Lcom/oppo/widget/OppoDatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 266
    return-void
.end method

.method public onLunarDateChanged(Lcom/oppo/widget/OppoLunarDatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 262
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 320
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 322
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, day:I
    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 324
    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 325
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 311
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v1, "month"

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v1, "day"

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->updateDate(III)V

    .line 306
    return-void
.end method

.method public updateLunarDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->updateDate(III)V

    .line 295
    return-void
.end method
