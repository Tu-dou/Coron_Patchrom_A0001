.class Lcom/oppo/widget/OppoSearchViewAnim$4;
.super Ljava/lang/Object;
.source "OppoSearchViewAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchViewAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchViewAnim;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchViewAnim;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$4;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$4;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #calls: Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V
    invoke-static {v1, v3}, Lcom/oppo/widget/OppoSearchViewAnim;->access$1000(Lcom/oppo/widget/OppoSearchViewAnim;Z)V

    .line 401
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$4;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 403
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 406
    :cond_0
    return-void
.end method
