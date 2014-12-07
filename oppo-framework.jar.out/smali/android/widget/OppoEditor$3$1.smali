.class Landroid/widget/OppoEditor$3$1;
.super Ljava/lang/Object;
.source "OppoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoEditor$3;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoEditor$3;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor$3;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Landroid/widget/OppoEditor$3$1;->this$1:Landroid/widget/OppoEditor$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Landroid/widget/OppoEditor$3$1;->this$1:Landroid/widget/OppoEditor$3;

    iget-object v0, v0, Landroid/widget/OppoEditor$3;->this$0:Landroid/widget/OppoEditor;

    const/4 v1, 0x0

    #setter for: Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z
    invoke-static {v0, v1}, Landroid/widget/OppoEditor;->access$202(Landroid/widget/OppoEditor;Z)Z

    .line 777
    iget-object v0, p0, Landroid/widget/OppoEditor$3$1;->this$1:Landroid/widget/OppoEditor$3;

    iget-object v0, v0, Landroid/widget/OppoEditor$3;->this$0:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 778
    iget-object v0, p0, Landroid/widget/OppoEditor$3$1;->this$1:Landroid/widget/OppoEditor$3;

    iget-object v0, v0, Landroid/widget/OppoEditor$3;->this$0:Landroid/widget/OppoEditor;

    #getter for: Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/OppoEditor;->access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor$3$1;->this$1:Landroid/widget/OppoEditor$3;

    iget-object v1, v1, Landroid/widget/OppoEditor$3;->this$0:Landroid/widget/OppoEditor;

    #getter for: Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/OppoEditor;->access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 779
    return-void
.end method
