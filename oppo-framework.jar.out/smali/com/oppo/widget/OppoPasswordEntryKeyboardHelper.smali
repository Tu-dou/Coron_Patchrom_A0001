.class public Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "OppoPasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final QWERTY_SHIFTED:I = 0x2

.field private static final SYMBOLS:I = 0x3

.field private static final SYMBOLS_SHIFTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OppoPasswordEntryKeyboardHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private final mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field mLayouts:[I

.field private mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private final mTargetView:Landroid/view/View;

.field private mUsingScreenWidth:Z

.field private mVibratePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    .line 82
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V
    .locals 6
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"
    .parameter "useFullScreenWidth"

    .prologue
    .line 87
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V
    .locals 3
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"
    .parameter "useFullScreenWidth"
    .parameter "layouts"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 53
    iput v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 63
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 71
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    .line 92
    iput-object p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 94
    iput-object p2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 95
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 96
    iput-boolean p4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    .line 97
    if-eqz p5, :cond_1

    .line 98
    array-length v1, p5

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wrong number of layouts"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, p5, v0

    aput v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboards()V

    .line 106
    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x1t 0x4t 0xbt 0xct
        0x2t 0x4t 0xbt 0xct
        0x0t 0x4t 0xbt 0xct
        0x3t 0x4t 0xbt 0xct
        0x4t 0x4t 0xbt 0xct
    .end array-data
.end method

.method private createKeyboardsWithDefaultWidth()V
    .locals 6

    .prologue
    const v5, 0xc020449

    const/4 v4, 0x1

    .line 146
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 147
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 148
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 150
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 152
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 153
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 155
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 158
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 159
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 160
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 161
    return-void
.end method

.method private createKeyboardsWithSpecificSize(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const v3, 0xc020449

    const/4 v6, 0x1

    .line 126
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 127
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 129
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 131
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 133
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 134
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 136
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 137
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 139
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 141
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 142
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 143
    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 309
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 312
    return-void
.end method

.method private handleClose()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method private handleModeChange()V
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 259
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 260
    .local v1, next:Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v2, :cond_3

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 265
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 266
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 267
    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 269
    :cond_2
    return-void

    .line 262
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v2, :cond_1

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 280
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v5, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 284
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 285
    .local v2, next:Lcom/oppo/widget/OppoPasswordEntryKeyboard;
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v5, :cond_5

    :cond_2
    move v1, v4

    .line 287
    .local v1, isAlphaMode:Z
    :goto_1
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v5, :cond_8

    .line 288
    if-eqz v1, :cond_6

    move v5, v4

    :goto_2
    iput v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 289
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 297
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 298
    if-eq v2, v0, :cond_4

    .line 299
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 301
    :cond_4
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_c

    move v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 302
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v6, :cond_d

    :goto_5
    invoke-virtual {v5, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .end local v1           #isAlphaMode:Z
    :cond_5
    move v1, v3

    .line 285
    goto :goto_1

    .restart local v1       #isAlphaMode:Z
    :cond_6
    move v5, v6

    .line 288
    goto :goto_2

    .line 289
    :cond_7
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_3

    .line 290
    :cond_8
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v4, :cond_a

    .line 291
    iput v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 292
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    :goto_6
    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_6

    .line 293
    :cond_a
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_3

    .line 294
    iput v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 295
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    :goto_7
    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_7

    :cond_c
    move v5, v3

    .line 301
    goto :goto_4

    :cond_d
    move v4, v3

    .line 302
    goto :goto_5
.end method

.method private performHapticFeedback()V
    .locals 3

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->performHapticFeedback(II)Z

    .line 328
    :cond_0
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .parameter "character"

    .prologue
    .line 184
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 185
    .local v4, viewRootImpl:Landroid/view/ViewRootImpl;
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 187
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 188
    array-length v0, v2

    .line 189
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 190
    aget-object v1, v2, v3

    .line 191
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 193
    invoke-virtual {v4, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v0           #N:I
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v3           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public createKeyboards()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 110
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboardsWithDefaultWidth()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboardsWithSpecificSize(II)V

    goto :goto_0
.end method

.method public handleBackspace()V
    .locals 1

    .prologue
    .line 272
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 273
    return-void
.end method

.method public handleClear()V
    .locals 1

    .prologue
    .line 276
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 277
    return-void
.end method

.method public isAlpha()Z
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 212
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleBackspace()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 215
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleClear()V

    goto :goto_0

    .line 218
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 219
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_0

    .line 221
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_5

    .line 222
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_0

    .line 224
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 226
    iget v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 229
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->performHapticFeedback()V

    .line 320
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 332
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 336
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .parameter "keyEventCode"

    .prologue
    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 200
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 201
    .local v12, viewRootImpl:Landroid/view/ViewRootImpl;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 205
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 209
    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 119
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    iput p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 181
    return-void

    .line 166
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 167
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 168
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    .local v1, visiblePassword:Z
    :goto_1
    const/4 v0, 0x0

    .line 172
    .local v0, enablePreview:Z
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .end local v0           #enablePreview:Z
    .end local v1           #visiblePassword:Z
    :cond_1
    move v1, v2

    .line 168
    goto :goto_1

    .line 175
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 176
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 177
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 247
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 248
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 255
    :cond_1
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 244
    const-string v3, "OppoPasswordEntryKeyboardHelper"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 252
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method
