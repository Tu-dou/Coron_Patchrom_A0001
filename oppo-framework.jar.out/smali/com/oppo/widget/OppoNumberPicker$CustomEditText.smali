.class public Lcom/oppo/widget/OppoNumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "OppoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2157
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2158
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 2162
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2163
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2164
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker$CustomEditText;->clearFocus()V

    .line 2166
    :cond_0
    return-void
.end method