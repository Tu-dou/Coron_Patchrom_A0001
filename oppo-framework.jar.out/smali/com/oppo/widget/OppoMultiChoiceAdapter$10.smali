.class Lcom/oppo/widget/OppoMultiChoiceAdapter$10;
.super Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$10;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartValue(Landroid/view/View;)F
    .locals 1
    .parameter "target"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$10;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getTargetHeight(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
