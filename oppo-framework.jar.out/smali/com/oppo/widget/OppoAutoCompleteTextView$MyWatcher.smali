.class Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "OppoAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->doAfterTextChanged()V

    .line 772
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->doBeforeTextChanged()V

    .line 776
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 778
    return-void
.end method
