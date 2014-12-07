.class public Landroid/widget/OppoEditor;
.super Landroid/widget/Editor;
.source "OppoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoEditor$PastePanelOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEditor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursrOffset:I

.field private mFlag:I

.field private mHasOnTouchListener:Z

.field private mIsInTextSelectionMode:Z

.field private mIsInTextTranslationMode:Z

.field private mLongPressed:Z

.field private mMagnifierController:Landroid/widget/OppoMagnifierController;

.field mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

.field mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mTextView:Landroid/widget/TextView;

.field private mTranslateController:Landroid/widget/OppoTranslateController;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 72
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 76
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 84
    iput v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 85
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 86
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 91
    iput-object p1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/OppoEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    return p1
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkInputMethodScreenMode()V
    .locals 4

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 969
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 970
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 971
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 972
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 976
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .parameter "layout"
    .parameter "hintLayout"
    .parameter "offset"

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method getButtonShowHides(ZI)Z
    .locals 5
    .parameter "isTextEditable"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 523
    :try_start_0
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v1, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 524
    .local v1, passwordTransformed:Z
    sparse-switch p2, :sswitch_data_0

    .line 573
    .end local v1           #passwordTransformed:Z
    :cond_0
    :goto_0
    return v3

    .line 527
    .restart local v1       #passwordTransformed:Z
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 533
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 536
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 547
    :sswitch_2
    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    goto :goto_0

    .line 550
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 553
    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 555
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isImSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 557
    goto :goto_0

    .line 562
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSearchEnabled()Z

    move-result v3

    goto :goto_0

    .line 567
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isTranslationEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 571
    .end local v1           #passwordTransformed:Z
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "OppoEditor"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_2
        0xc02044e -> :sswitch_3
        0xc02044f -> :sswitch_1
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_0
        0xc020452 -> :sswitch_4
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method getFloatPanelShowHides([I)Ljava/util/ArrayList;
    .locals 7
    .parameter "buttons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v5, showHides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 485
    .local v3, isTextEditable:Ljava/lang/Boolean;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 486
    .local v1, button:I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6, v1}, Landroid/widget/OppoEditor;->getButtonShowHides(ZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    .end local v1           #button:I
    :cond_0
    return-object v5
.end method

.method getLastTapPositionWrap()I
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v0

    .line 317
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 319
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 325
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getLastTouchOffsetsWrap()J
    .locals 5

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 294
    .local v2, selectionController:Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 295
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 296
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public getLongPressed()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    return v0
.end method

.method getMagnifierController()Landroid/widget/OppoMagnifierController;
    .locals 3

    .prologue
    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, controller:Landroid/widget/OppoMagnifierController;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    if-nez v1, :cond_0

    .line 806
    new-instance v1, Landroid/widget/OppoMagnifierController;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/widget/OppoMagnifierController;-><init>(Landroid/content/Context;Landroid/widget/OppoEditor;)V

    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 808
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 810
    :cond_1
    return-object v0
.end method

.method getOppoInsertionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 409
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 410
    const/4 v1, 0x0

    .line 420
    :goto_0
    return-object v1

    .line 413
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 416
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 417
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 420
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getOppoSelectionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 424
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 435
    :goto_0
    return-object v1

    .line 428
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 429
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 431
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 432
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 435
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getSelectHandleCenterRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleLeftRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 471
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleRightRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 479
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleWindowStyle()I
    .locals 1

    .prologue
    .line 451
    const v0, 0x10102c8

    return v0
.end method

.method handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V
    .locals 21
    .parameter "v"
    .parameter "cc"

    .prologue
    .line 641
    const/4 v12, 0x0

    .line 642
    .local v12, min:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->length()I

    move-result v11

    .line 644
    .local v11, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->isFocused()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    .line 646
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    .line 648
    .local v15, selEnd:I
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 649
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 652
    .end local v15           #selEnd:I
    .end local v16           #selStart:I
    :cond_0
    const/4 v5, 0x0

    .line 653
    .local v5, data:Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "clipboard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 656
    .local v4, clip:Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 661
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 795
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 657
    .restart local p2
    :catch_0
    move-exception v7

    .line 658
    .local v7, e:Ljava/lang/SecurityException;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    .end local v7           #e:Ljava/lang/SecurityException;
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 672
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->length()I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 681
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    move-result v17

    if-nez v17, :cond_2

    if-nez v5, :cond_3

    .line 682
    :cond_2
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "***data=="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "***"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 686
    :cond_3
    const/4 v13, 0x0

    .line 687
    .local v13, paste:Ljava/lang/CharSequence;
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-----data.getItemCount()="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 689
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 691
    :cond_4
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "=====paste===="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "****"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 695
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11, v13}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 697
    :catch_1
    move-exception v7

    .line 698
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 711
    .end local v7           #e:Ljava/lang/Exception;
    .end local v13           #paste:Ljava/lang/CharSequence;
    :sswitch_3
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc040534

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 721
    .restart local p2
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 722
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 726
    const/4 v6, 0x0

    .line 727
    .local v6, delayedTime:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 728
    const/16 v6, 0xc8

    .line 730
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/OppoEditor$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$2;-><init>(Landroid/widget/OppoEditor;)V

    int-to-long v0, v6

    move-wide/from16 v19, v0

    invoke-virtual/range {v17 .. v20}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 741
    .end local v6           #delayedTime:I
    .restart local p2
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 742
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v9, intent:Landroid/content/Intent;
    const/4 v10, 0x0

    .line 744
    .local v10, intentTemp:Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 746
    .local v14, query:Ljava/lang/String;
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 750
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 751
    :catch_2
    move-exception v7

    .line 752
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intentTemp:Landroid/content/Intent;
    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .restart local v10       #intentTemp:Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 764
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #intentTemp:Landroid/content/Intent;
    .end local v14           #query:Ljava/lang/String;
    :sswitch_6
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->hide()V

    .line 768
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 770
    new-instance v17, Landroid/widget/OppoTranslateController;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/OppoEditor$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$3;-><init>(Landroid/widget/OppoEditor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoTranslateController;-><init>(Landroid/widget/Editor;Landroid/widget/TextView;Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 784
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoTranslateController;->show()V

    goto/16 :goto_1

    .line 789
    :sswitch_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 790
    .local v8, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_1

    .line 791
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 661
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_3
        0xc02044e -> :sswitch_4
        0xc02044f -> :sswitch_2
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_1
        0xc020452 -> :sswitch_7
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method hasMagnifierController()Z
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnTouchListener()Z
    .locals 1

    .prologue
    .line 948
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    return v0
.end method

.method hasPasswordTransformationMethodWrap()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideInsertionPointCursorControllerWrap()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 163
    :cond_0
    return-void
.end method

.method hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 156
    :cond_0
    return-void
.end method

.method public isAllTextSelected()Z
    .locals 2

    .prologue
    .line 928
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 930
    const/4 v0, 0x1

    .line 932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCutAndPasteEnabled()Z
    .locals 2

    .prologue
    .line 936
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 938
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isImSwitcherEnabled()Z
    .locals 2

    .prologue
    .line 920
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 922
    const/4 v0, 0x0

    .line 924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInsertToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 901
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMagnifierEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 878
    :cond_0
    return v2
.end method

.method public isSearchEnabled()Z
    .locals 2

    .prologue
    .line 912
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 914
    const/4 v0, 0x0

    .line 916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectionToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isToolbarEnabled()Z
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 884
    const/4 v0, 0x0

    .line 886
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTranslationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 954
    iget v2, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    .line 962
    :cond_0
    :goto_0
    return v1

    .line 958
    :cond_1
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 959
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 962
    const/4 v1, 0x1

    goto :goto_0
.end method

.method needInsertPanel()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 100
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 106
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 108
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 110
    :cond_2
    invoke-super {p0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 111
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 123
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 126
    :cond_2
    invoke-super {p0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 127
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 304
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 305
    if-nez p1, :cond_1

    .line 306
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 310
    :cond_1
    return-void
.end method

.method onTapUpEvent()V
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 581
    :cond_0
    return-void
.end method

.method onTouchEventWrap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const/4 v0, 0x1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 343
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionX:F

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionY:F

    .line 349
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mTouchFocusSelected:Z

    .line 350
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIgnoreActionUpEvent:Z

    goto :goto_0
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 188
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 189
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 190
    .local v1, selectAllGotFocus:Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 191
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 194
    .local v2, text:Ljava/lang/CharSequence;
    invoke-direct {p0}, Landroid/widget/OppoEditor;->checkInputMethodScreenMode()V

    .line 196
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz v3, :cond_2

    .line 198
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 199
    .local v0, offset:I
    check-cast v2, Landroid/text/Spannable;

    .end local v2           #text:Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 200
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCursorInsideEasyCorrectionSpanWrap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    new-instance v3, Landroid/widget/OppoEditor$1;

    invoke-direct {v3, p0}, Landroid/widget/OppoEditor$1;-><init>(Landroid/widget/OppoEditor;)V

    iput-object v3, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 214
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    .end local v0           #offset:I
    :cond_2
    :goto_0
    return-void

    .line 216
    .restart local v0       #offset:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->show()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->setSecondTap()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .parameter "handled"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 815
    const/4 p1, 0x0

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, vibrate:Z
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 819
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 821
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 822
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 823
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoMagnifierController;->show()V

    .line 824
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->show()V

    .line 825
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 826
    const/4 p1, 0x1

    .line 829
    :cond_0
    if-nez p1, :cond_1

    .line 830
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->touchPositionIsInSelectionWrap()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 831
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 832
    const/4 p1, 0x1

    .line 851
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 852
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 859
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 860
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 863
    :cond_3
    return p1

    .line 834
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 845
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result p1

    move v0, p1

    goto :goto_0

    .line 853
    :cond_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 856
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 133
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 136
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 139
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 142
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 149
    :cond_2
    return-void
.end method

.method public setEditFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 867
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 868
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 869
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 871
    :cond_0
    return-void
.end method

.method public setHasOnTouchListener(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 944
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 945
    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0
    .parameter "longPressed"

    .prologue
    .line 443
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 444
    return-void
.end method

.method setTextSelectionWrap(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 456
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    move v1, v3

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 235
    :cond_2
    const-string v4, "TextView"

    const-string v5, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 237
    goto :goto_0

    .line 240
    :cond_3
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_4

    .line 242
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 244
    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    .line 252
    .local v2, willExtract:Z
    if-nez v2, :cond_5

    .line 257
    :cond_5
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 258
    .local v1, selectionStarted:Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/OppoEditor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_0

    .line 260
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 261
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 262
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #selectionStarted:Z
    :cond_7
    move v1, v3

    .line 257
    goto :goto_1
.end method

.method startTextSelectionMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 594
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v3, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v3

    if-nez v3, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_2

    .line 604
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    .line 610
    .local v0, mOppoSelectionCursorController:Landroid/widget/OppoCursorController;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->show()V

    .line 612
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    move v1, v2

    .line 613
    goto :goto_0
.end method

.method startTextSelectionModeIfDouleTap(JFFFF)V
    .locals 9
    .parameter "previousTapUpTime"
    .parameter "x"
    .parameter "y"
    .parameter "previousX"
    .parameter "previousY"

    .prologue
    .line 501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v3, v7, p1

    .line 502
    .local v3, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoEditor;->isPositionOnTextWrap(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 503
    sub-float v0, p3, p5

    .line 504
    .local v0, deltaX:F
    sub-float v1, p4, p6

    .line 505
    .local v1, deltaY:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 506
    .local v2, distanceSquared:F
    iget-object v7, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 508
    .local v6, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 509
    .local v5, touchSlop:I
    mul-int v7, v5, v5

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 510
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 515
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v5           #touchSlop:I
    .end local v6           #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method protected stopSelectionActionMode()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 180
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 184
    :cond_0
    return-void
.end method

.method stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 584
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 586
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 589
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 591
    :cond_1
    return-void
.end method

.method textview()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method touchPositionIsInSelectionWrap()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 271
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 272
    .local v4, selectionStart:I
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 274
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 288
    :goto_0
    return v7

    .line 278
    :cond_0
    if-le v4, v3, :cond_1

    .line 279
    move v5, v4

    .line 280
    .local v5, tmp:I
    move v4, v3

    .line 281
    move v3, v5

    .line 282
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 284
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 285
    .local v2, selectionController:Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 286
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 288
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 14

    .prologue
    .line 365
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v12, v12, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v12, :cond_1

    .line 366
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 371
    .local v4, layout:Landroid/text/Layout;
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 372
    .local v2, hintLayout:Landroid/text/Layout;
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 373
    .local v8, offset:I
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 374
    .local v6, line:I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 375
    .local v11, top:I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v4, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 377
    .local v0, bottom:I
    invoke-direct {p0, v4, v2, v8}, Landroid/widget/OppoEditor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v9

    .line 378
    .local v9, primaryHorizontal:F
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v10, v12

    .line 379
    .local v10, right:I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v5, v12

    .line 380
    .local v5, left:I
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    iget-object v13, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v3, v12, v13

    .line 382
    .local v3, hspace:I
    const/4 v1, 0x0

    .line 383
    .local v1, cursorOffset:I
    sub-int v12, v10, v3

    if-lez v12, :cond_2

    float-to-int v12, v9

    if-ne v12, v10, :cond_2

    .line 384
    iget v1, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 387
    :cond_2
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getGravity()I

    move-result v12

    const/16 v13, 0x11

    if-eq v12, v13, :cond_3

    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getGravity()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 389
    :cond_3
    const/4 v1, 0x0

    .line 392
    :cond_4
    invoke-virtual {v4, v8}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    :goto_1
    iput v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 394
    move v7, v0

    .line 395
    .local v7, middle:I
    iget v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 397
    add-int v12, v11, v0

    shr-int/lit8 v7, v12, 0x1

    .line 401
    :cond_5
    const/4 v12, 0x0

    int-to-float v13, v1

    sub-float v13, v9, v13

    invoke-virtual {p0, v12, v11, v7, v13}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    .line 403
    iget v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 404
    const/4 v12, 0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v13

    invoke-virtual {p0, v12, v7, v0, v13}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    goto/16 :goto_0

    .line 392
    .end local v7           #middle:I
    :cond_6
    const/4 v12, 0x1

    goto :goto_1
.end method
