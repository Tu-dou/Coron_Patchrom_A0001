.class public Lcom/oppo/widget/OppoCheckBox;
.super Landroid/widget/Button;
.source "OppoCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoCheckBox$1;,
        Lcom/oppo/widget/OppoCheckBox$SavedState;,
        Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final ALLSELECT_SET:[I = null

.field private static final MAX_INDEX:I = 0x2

.field private static final PARTSELECT_SET:[I = null

.field public static final SELECT_ALL:I = 0x2

.field public static final SELECT_NONE:I = 0x0

.field public static final SELECT_PART:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoCheckBox"


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

.field private mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v3, [I

    const v1, 0xc01005f

    aput v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoCheckBox;->ALLSELECT_SET:[I

    .line 59
    new-array v0, v3, [I

    const v1, 0xc01005e

    aput v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoCheckBox;->PARTSELECT_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const v0, 0xc01043e

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    sget-object v3, Loppo/R$styleable;->OppoCheckBox:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 82
    .local v2, state:I
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoCheckBox;->setState(I)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 284
    iget-object v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getDrawableState()[I

    move-result-object v0

    .line 286
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 287
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->invalidate()V

    .line 289
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    .line 210
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 216
    .end local v0           #buttonDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    .line 222
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    .end local v0           #buttonDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 299
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 301
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .parameter "extraSpace"

    .prologue
    .line 270
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 271
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 272
    sget-object v1, Lcom/oppo/widget/OppoCheckBox;->PARTSELECT_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoCheckBox;->mergeDrawableStates([I[I)[I

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 275
    sget-object v1, Lcom/oppo/widget/OppoCheckBox;->ALLSELECT_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoCheckBox;->mergeDrawableStates([I[I)[I

    .line 277
    :cond_1
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    .local v1, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getGravity()I

    move-result v8

    and-int/lit8 v7, v8, 0x70

    .line 247
    .local v7, verticalGravity:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 248
    .local v2, drawableHeight:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 250
    .local v3, drawableWidth:I
    const/4 v6, 0x0

    .line 251
    .local v6, top:I
    sparse-switch v7, :sswitch_data_0

    .line 259
    :goto_0
    add-int v0, v6, v2

    .line 260
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getWidth()I

    move-result v8

    sub-int v4, v8, v3

    .line 261
    .local v4, left:I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getWidth()I

    move-result v5

    .line 263
    .local v5, right:I
    :goto_2
    invoke-virtual {v1, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    .end local v0           #bottom:I
    .end local v2           #drawableHeight:I
    .end local v3           #drawableWidth:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    .end local v7           #verticalGravity:I
    :cond_0
    return-void

    .line 253
    .restart local v2       #drawableHeight:I
    .restart local v3       #drawableWidth:I
    .restart local v6       #top:I
    .restart local v7       #verticalGravity:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getHeight()I

    move-result v8

    sub-int v6, v8, v2

    .line 254
    goto :goto_0

    .line 256
    :sswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v6, v8, 0x2

    goto :goto_0

    .line 260
    .restart local v0       #bottom:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4       #left:I
    :cond_2
    move v5, v3

    .line 261
    goto :goto_2

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 198
    const-class v0, Lcom/oppo/widget/OppoCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 204
    const-class v0, Lcom/oppo/widget/OppoCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 354
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoCheckBox$SavedState;

    .line 356
    .local v0, ss:Lcom/oppo/widget/OppoCheckBox$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    iget v1, v0, Lcom/oppo/widget/OppoCheckBox$SavedState;->state:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoCheckBox;->setState(I)V

    .line 358
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->requestLayout()V

    .line 359
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 343
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoCheckBox;->setFreezesText(Z)V

    .line 344
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 346
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoCheckBox$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 348
    .local v0, ss:Lcom/oppo/widget/OppoCheckBox$SavedState;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getState()I

    move-result v2

    iput v2, v0, Lcom/oppo/widget/OppoCheckBox$SavedState;->state:I

    .line 349
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->toggle()V

    .line 94
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 179
    if-eqz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 182
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 186
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 187
    iput-object p1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->setMinHeight(I)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->refreshDrawableState()V

    .line 193
    return-void

    :cond_2
    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public setOnStateChangeListener(Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    .line 139
    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    .line 147
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 111
    iget v0, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    if-eq v0, p1, :cond_0

    .line 112
    iput p1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    .line 113
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->refreshDrawableState()V

    .line 114
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoCheckBox;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 118
    iget-boolean v0, p0, Lcom/oppo/widget/OppoCheckBox;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoCheckBox;->mBroadcasting:Z

    .line 123
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;->onStateChanged(Lcom/oppo/widget/OppoCheckBox;I)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;->onStateChanged(Lcom/oppo/widget/OppoCheckBox;I)V

    .line 130
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoCheckBox;->mBroadcasting:Z

    goto :goto_0
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 87
    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    if-ge v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->setState(I)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
