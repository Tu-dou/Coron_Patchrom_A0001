.class Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "OppoPasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoPasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 229
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 230
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->popupResId:I

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 242
    return-void
.end method

.method public isInside(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x5

    .line 259
    iget-boolean v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v2, :cond_0

    .line 272
    :goto_0
    return v1

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v2, v1

    .line 263
    .local v0, code:I
    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_4

    .line 264
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    .line 265
    if-ne v0, v4, :cond_2

    .line 266
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    .line 267
    :cond_2
    if-ne v0, v3, :cond_3

    .line 268
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    .line 272
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_0

    .line 269
    :cond_4
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 270
    sget v1, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_1
.end method

.method public onPressed()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 277
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 278
    return-void
.end method

.method public onReleased(Z)V
    .locals 2
    .parameter "inside"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 247
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 252
    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 238
    return-void
.end method
