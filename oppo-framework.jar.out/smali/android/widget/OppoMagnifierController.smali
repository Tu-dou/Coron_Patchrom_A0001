.class public Landroid/widget/OppoMagnifierController;
.super Ljava/lang/Object;
.source "OppoMagnifierController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OppoMagnifierController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurOffset:I

.field private mCurX:I

.field private mCurY:I

.field private mDownMotionEvent:Landroid/view/MotionEvent;

.field private mHasOnTouchListener:Z

.field private mMagnifier:Landroid/widget/OppoTextViewMagnifier;

.field private mMagnifierEnabled:Z

.field private final mOppoEditor:Landroid/widget/OppoEditor;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/OppoEditor;)V
    .locals 1
    .parameter "context"
    .parameter "editor"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifierEnabled:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    .line 48
    invoke-virtual {p2}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    .line 49
    iput-object p2, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    .line 50
    iput-object p1, p0, Landroid/widget/OppoMagnifierController;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private declared-synchronized getMagnifier()Landroid/widget/OppoTextViewMagnifier;
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/widget/OppoTextViewMagnifier;

    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/OppoTextViewMagnifier;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isOutside(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 181
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 182
    .local v1, y:F
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveMagnifier(II)V
    .locals 4
    .parameter "curX"
    .parameter "curY"

    .prologue
    .line 93
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 97
    .local v0, location:[I
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 98
    invoke-direct {p0}, Landroid/widget/OppoMagnifierController;->getMagnifier()Landroid/widget/OppoTextViewMagnifier;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v2, p1

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/widget/OppoTextViewMagnifier;->move(II)V

    goto :goto_0
.end method

.method private moveMagnifier(IIII)V
    .locals 8
    .parameter "curX"
    .parameter "curY"
    .parameter "realX"
    .parameter "realY"

    .prologue
    .line 102
    iget-object v3, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 106
    .local v0, location:[I
    iget-object v3, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 107
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 108
    .local v1, lx:I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 109
    .local v2, ly:I
    invoke-direct {p0}, Landroid/widget/OppoMagnifierController;->getMagnifier()Landroid/widget/OppoTextViewMagnifier;

    move-result-object v3

    add-int v4, p1, v1

    add-int v5, p4, v2

    add-int v6, p3, v1

    add-int v7, p4, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/OppoTextViewMagnifier;->move(IIII)V

    goto :goto_0
.end method

.method private positionCursor(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 136
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    if-nez v8, :cond_0

    .line 174
    :goto_0
    return-void

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_2

    .line 140
    :cond_1
    const-string v8, "OppoMagnifierController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTextView=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v8, "OppoMagnifierController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_2
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v8, v9}, Landroid/widget/OppoTextViewHelper;->getLineNumber(Landroid/widget/TextView;F)I

    move-result v3

    .line 145
    .local v3, line:I
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v8, v3, v9}, Landroid/widget/OppoTextViewHelper;->getOffsetByLine(Landroid/widget/TextView;IF)I

    move-result v5

    .line 146
    .local v5, offset:I
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-gtz v8, :cond_4

    :cond_3
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const/high16 v9, 0x1

    invoke-static {v8, v9}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    if-nez v8, :cond_5

    .line 148
    :cond_4
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 154
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/OppoMagnifierController;->isOutside(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 155
    .local v6, outside:Z
    if-eqz v6, :cond_6

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    goto/16 :goto_0

    .line 151
    .end local v6           #outside:Z
    :cond_5
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-static {v8, v9, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1

    .line 159
    .restart local v6       #outside:Z
    :cond_6
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 160
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 161
    .local v2, left:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 162
    .local v7, top:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 163
    .local v0, bottom:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 165
    .local v4, lineRight:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v8, v8, v4

    if-lez v8, :cond_8

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 171
    :cond_7
    :goto_2
    add-int v8, v7, v0

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    goto/16 :goto_0

    .line 167
    :cond_8
    iget v8, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    if-eq v5, v8, :cond_7

    .line 168
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 169
    iput v5, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    goto :goto_2
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 189
    :cond_0
    iput v1, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 190
    iput v1, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 192
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 195
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 196
    return-void
.end method

.method private showMagnifier(IIZ)V
    .locals 5
    .parameter "curX"
    .parameter "curY"
    .parameter "animated"

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 74
    .local v0, location:[I
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 75
    invoke-direct {p0}, Landroid/widget/OppoMagnifierController;->getMagnifier()Landroid/widget/OppoTextViewMagnifier;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v2, p1

    aget v3, v0, v4

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/OppoTextViewMagnifier;->show(IIZ)V

    .line 76
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private showMagnifier(IIIIZ)Z
    .locals 10
    .parameter "curX"
    .parameter "curY"
    .parameter "realX"
    .parameter "realY"
    .parameter "animated"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 80
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return v0

    .line 83
    :cond_0
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 84
    .local v6, location:[I
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 85
    aget v7, v6, v0

    .line 86
    .local v7, lx:I
    aget v8, v6, v9

    .line 87
    .local v8, ly:I
    invoke-direct {p0}, Landroid/widget/OppoMagnifierController;->getMagnifier()Landroid/widget/OppoTextViewMagnifier;

    move-result-object v0

    add-int v1, p1, v7

    add-int v2, p4, v8

    add-int v3, p3, v7

    add-int v4, p4, v8

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoTextViewMagnifier;->show(IIIIZ)V

    .line 88
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v9

    .line 89
    goto :goto_0
.end method


# virtual methods
.method public hideMagnifier()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    invoke-virtual {v0}, Landroid/widget/OppoTextViewMagnifier;->hide()V

    goto :goto_0
.end method

.method public isMagnifierShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    invoke-virtual {v0}, Landroid/widget/OppoTextViewMagnifier;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return v4

    .line 243
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->isMagnifierShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, p2}, Landroid/widget/OppoMagnifierController;->positionCursor(Landroid/view/MotionEvent;)V

    .line 245
    iget v0, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    iget v1, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/OppoMagnifierController;->moveMagnifier(IIII)V

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 250
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iput-boolean v4, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    .line 254
    :cond_1
    iput v2, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 255
    iput-object v1, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 260
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    iput-boolean v4, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    .line 264
    :cond_2
    iput v2, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, -0x1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 201
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 204
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 205
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->hasOnTouchListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->isMagnifierShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Landroid/widget/OppoMagnifierController;->positionCursor(Landroid/view/MotionEvent;)V

    .line 213
    iget v0, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    iget v1, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/OppoMagnifierController;->moveMagnifier(IIII)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 221
    iput v1, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 226
    :pswitch_3
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 230
    iput v1, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/widget/OppoMagnifierController;->positionCursor(Landroid/view/MotionEvent;)V

    .line 65
    iget v1, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    iget v2, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/OppoMagnifierController;->showMagnifier(IIIIZ)Z

    goto :goto_0
.end method
