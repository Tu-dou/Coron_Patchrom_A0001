.class public Lcom/oppo/widget/OppoPasswordEntryKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "OppoPasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final KEYCODE_CLEAR:I = -0x7

.field public static final KEYCODE_SPACE:I = 0x20

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field static sSpacebarVerticalCorrection:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "mode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 50
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    .line 51
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 56
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    .line 70
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "mode"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;IIII)V

    .line 50
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    .line 51
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 56
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    .line 76
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 5
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 50
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    .line 51
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 56
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    .line 90
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0xc080417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0xc080418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    const v1, 0xc050419

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    .line 85
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 8
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v7, 0x0

    .line 94
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 95
    .local v0, key:Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;
    iget-object v1, v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->codes:[I

    aget v6, v1, v7

    .line 96
    .local v6, code:I
    if-ltz v6, :cond_1

    const/16 v1, 0xa

    if-eq v6, v1, :cond_1

    const/16 v1, 0x20

    if-lt v6, v1, :cond_0

    const/16 v1, 0x7f

    if-le v6, v1, :cond_1

    .line 98
    :cond_0
    const-string v1, " "

    iput-object v1, v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->label:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {v0, v7}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->setEnabled(Z)V

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->codes:[I

    aget v1, v1, v7

    sparse-switch v1, :sswitch_data_0

    .line 112
    :goto_0
    return-object v0

    .line 103
    :sswitch_0
    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 106
    :sswitch_1
    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 109
    :sswitch_2
    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method enableShiftLock()V
    .locals 7

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, i:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->getShiftKeyIndices()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget v3, v0, v2

    .line 149
    .local v3, index:I
    if-ltz v3, :cond_1

    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 150
    iget-object v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/Keyboard$Key;

    aput-object v5, v6, v1

    .line 151
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v1

    instance-of v5, v5, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v1

    check-cast v5, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->enableShiftLock()V

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v3           #index:I
    :cond_2
    return-void
.end method

.method public isShifted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 217
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 219
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method setEnterKeyResources(Landroid/content/res/Resources;III)V
    .locals 4
    .parameter "res"
    .parameter "previewId"
    .parameter "iconId"
    .parameter "labelId"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 127
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 128
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 135
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    :cond_0
    return-void
.end method

.method setShiftLocked(Z)V
    .locals 5
    .parameter "shiftLocked"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .local v0, arr$:[Landroid/inputmethodservice/Keyboard$Key;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 169
    .local v3, shiftKey:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 170
    iput-boolean p1, v3, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 171
    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v3           #shiftKey:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    if-eqz p1, :cond_2

    const/4 v4, 0x2

    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    .line 175
    return-void

    .line 174
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setShifted(Z)Z
    .locals 5
    .parameter "shiftState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, shiftChanged:Z
    if-nez p1, :cond_3

    .line 187
    iget v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    if-eqz v4, :cond_2

    move v1, v2

    .line 188
    :goto_0
    iput v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    .line 193
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 194
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 195
    if-nez p1, :cond_5

    .line 196
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 197
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    iput-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 193
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_2
    move v1, v3

    .line 187
    goto :goto_0

    .line 189
    :cond_3
    iget v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    if-nez v4, :cond_0

    .line 190
    iget v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    if-nez v4, :cond_4

    move v1, v2

    .line 191
    :goto_4
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    goto :goto_1

    :cond_4
    move v1, v3

    .line 190
    goto :goto_4

    .line 198
    .restart local v0       #i:I
    :cond_5
    iget v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftState:I

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 200
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 206
    :cond_6
    return v1
.end method
