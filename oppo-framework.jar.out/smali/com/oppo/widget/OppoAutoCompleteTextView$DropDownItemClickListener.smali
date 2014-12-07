.class Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "OppoAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    #calls: Lcom/oppo/widget/OppoAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/oppo/widget/OppoAutoCompleteTextView;->access$500(Lcom/oppo/widget/OppoAutoCompleteTextView;Landroid/view/View;IJ)V

    .line 1244
    return-void
.end method
