.class Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "OppoAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1280
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    #calls: Lcom/oppo/widget/OppoAutoCompleteTextView;->onClickImpl()V
    invoke-static {v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->access$600(Lcom/oppo/widget/OppoAutoCompleteTextView;)V

    .line 1288
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1291
    :cond_0
    return-void
.end method
