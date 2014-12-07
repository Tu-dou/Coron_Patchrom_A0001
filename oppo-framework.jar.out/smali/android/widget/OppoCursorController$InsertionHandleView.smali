.class Landroid/widget/OppoCursorController$InsertionHandleView;
.super Landroid/widget/OppoCursorController$OppoHandleView;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertionHandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field protected static final DELAY_WHEN_HANDLE_INVISIBLE:I = 0xc8


# instance fields
.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "editor"
    .parameter "drawable"

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 1081
    invoke-direct {p0, p1, p2, p3, p3}, Landroid/widget/OppoCursorController$OppoHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1082
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1088
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1097
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected hideAfterDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1103
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Landroid/widget/OppoCursorController$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$InsertionHandleView$1;-><init>(Landroid/widget/OppoCursorController$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 1110
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1111
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1115
    invoke-super {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 1116
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1117
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1121
    invoke-super {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    .line 1122
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1123
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/16 v2, 0xbb8

    .line 1143
    invoke-super {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1144
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1159
    :goto_0
    :pswitch_0
    return v0

    .line 1149
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    .line 1153
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    .line 1144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1127
    invoke-super {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 1128
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V

    .line 1129
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1133
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 1134
    return-void
.end method

.method public updateSelection(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0, p1, p1}, Landroid/widget/OppoEditor;->setTextSelectionWrap(II)V

    .line 1139
    return-void
.end method
