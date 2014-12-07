.class Lcom/oppo/widget/OppoLunarDatePicker$1;
.super Ljava/lang/Object;
.source "OppoLunarDatePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoLunarDatePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 14
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #calls: Lcom/oppo/widget/OppoLunarDatePicker;->updateInputState()V
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$000(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 168
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$100(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 170
    .local v9, gregorianYear:I
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    .line 171
    .local v8, gregorianMonth:I
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 172
    .local v7, gregorianDay:I
    invoke-static {v9, v8, v7}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v11

    .line 176
    .local v11, lunarDates:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$300(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 177
    const/16 v1, 0x1b

    move/from16 v0, p2

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    rsub-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    #calls: Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoLunarDatePicker;->access$600(Lcom/oppo/widget/OppoLunarDatePicker;III)V

    .line 308
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #calls: Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$700(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 309
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #calls: Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$800(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 310
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #calls: Lcom/oppo/widget/OppoLunarDatePicker;->notifyDateChanged()V
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$900(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 311
    return-void

    .line 186
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    const/16 v1, 0x1b

    move/from16 v0, p3

    if-le v0, v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    sub-int v3, p3, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$400(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_e

    .line 199
    const/4 v10, 0x0

    .line 200
    .local v10, leapMonth:I
    const/4 v12, 0x0

    .line 201
    .local v12, monthCountDays:I
    const/16 v1, 0xa

    move/from16 v0, p2

    if-le v0, v1, :cond_4

    if-nez p3, :cond_4

    .line 202
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v10

    .line 203
    const/16 v1, 0xc

    if-ne v10, v1, :cond_3

    .line 204
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v12

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-static {v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v3

    sub-int v3, v12, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 206
    :cond_3
    const/4 v1, 0x0

    aget v1, v11, v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_1

    .line 217
    :cond_4
    if-nez p2, :cond_6

    const/16 v1, 0xa

    move/from16 v0, p3

    if-le v0, v1, :cond_6

    .line 218
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v10

    .line 219
    const/16 v1, 0xc

    if-ne v10, v1, :cond_5

    .line 220
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v12

    .line 230
    :goto_2
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-static {v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 222
    :cond_5
    const/4 v1, 0x0

    aget v1, v11, v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_2

    .line 233
    :cond_6
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v10

    .line 235
    sub-int v1, p3, p2

    if-gez v1, :cond_a

    .line 236
    if-nez v10, :cond_7

    .line 237
    const/4 v1, 0x0

    aget v1, v11, v1

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    .line 251
    :goto_3
    neg-int v12, v12

    .line 270
    :goto_4
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v12}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 241
    :cond_7
    move/from16 v0, p3

    if-ge v0, v10, :cond_8

    .line 242
    const/4 v1, 0x0

    aget v1, v11, v1

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_3

    .line 244
    :cond_8
    move/from16 v0, p3

    if-ne v0, v10, :cond_9

    .line 245
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v12

    goto :goto_3

    .line 247
    :cond_9
    const/4 v1, 0x0

    aget v1, v11, v1

    move/from16 v0, p3

    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_3

    .line 254
    :cond_a
    if-nez v10, :cond_b

    .line 255
    const/4 v1, 0x0

    aget v1, v11, v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_4

    .line 259
    :cond_b
    move/from16 v0, p2

    if-ge v0, v10, :cond_c

    .line 260
    const/4 v1, 0x0

    aget v1, v11, v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_4

    .line 262
    :cond_c
    move/from16 v0, p2

    if-ne v0, v10, :cond_d

    .line 263
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v12

    goto :goto_4

    .line 265
    :cond_d
    const/4 v1, 0x0

    aget v1, v11, v1

    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v12

    goto :goto_4

    .line 272
    .end local v10           #leapMonth:I
    .end local v12           #monthCountDays:I
    :cond_e
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$500(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_f

    .line 293
    iget-object v13, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    #getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v3, 0x2

    aget v3, v11, v3

    const/4 v4, 0x3

    aget v4, v11, v4

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/oppo/widget/OppoLunarUtil;->changeALunarYear(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v13, v1}, Lcom/oppo/widget/OppoLunarDatePicker;->access$202(Lcom/oppo/widget/OppoLunarDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;

    goto/16 :goto_0

    .line 296
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
