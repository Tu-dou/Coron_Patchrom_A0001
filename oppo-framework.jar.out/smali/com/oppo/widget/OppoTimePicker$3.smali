.class Lcom/oppo/widget/OppoTimePicker$3;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->updateInputState()V
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)V

    .line 207
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$200(Lcom/oppo/widget/OppoTimePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getMinValue()I

    move-result v1

    .line 208
    .local v1, minValue:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$200(Lcom/oppo/widget/OppoTimePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getMaxValue()I

    move-result v0

    .line 230
    .local v0, maxValue:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)V

    .line 235
    return-void
.end method
