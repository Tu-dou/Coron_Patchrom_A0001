.class public Lcom/oppo/widget/OppoShortCutButton;
.super Landroid/widget/LinearLayout;
.source "OppoShortCutButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;
    }
.end annotation


# static fields
.field private static final ACTION_IME_HIDE:Ljava/lang/String; = "com.oppo.android.INPUT_WINDOW_HIDDED"

.field private static final ACTION_IME_SHOW:Ljava/lang/String; = "com.oppo.android.INPUT_WINDOW_SHOWN"

.field private static final DEBUG:Z = true

.field private static final MAXCHILDCOUNT:I = 0x3

.field private static final MINCHILDCOUNT:I = 0x1

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoShortCutButton"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundButton:Landroid/graphics/drawable/Drawable;

.field private mButtonColor:I

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeText:Ljava/lang/String;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralText:Ljava/lang/String;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveText:Ljava/lang/String;

.field private mButtonShadowColor:I

.field private mButtonShadowR:F

.field private mButtonShadowX:F

.field private mButtonShadowY:F

.field private mButtonSize:I

.field private mChildCount:I

.field private mImeStateReceiverRegistered:Z

.field private final mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

.field private mIsButtonNegativeAble:Z

.field private mIsButtonNeutralAble:Z

.field private mIsButtonPositiveAble:Z

.field private mIsShow:Z

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

.field private mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

.field private mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

.field private mReceiverEnabled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 61
    iput v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 62
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackgroundButton:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    .line 65
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    .line 66
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    .line 67
    iput-boolean v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    .line 68
    iput-boolean v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    .line 69
    iput-boolean v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    .line 70
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    .line 71
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    .line 72
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    .line 76
    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowX:F

    .line 77
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowY:F

    .line 78
    const v5, 0x3dcccccd

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowR:F

    .line 79
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    .line 80
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 81
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 82
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    .line 83
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;

    .line 84
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .line 85
    iput-boolean v9, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 90
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 686
    new-instance v5, Lcom/oppo/widget/OppoShortCutButton$1;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoShortCutButton$1;-><init>(Lcom/oppo/widget/OppoShortCutButton;)V

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p0, p0, Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    .line 140
    sget-object v5, Loppo/R$styleable;->OppoShortCutButton:[I

    invoke-virtual {p1, p2, v5, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 143
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 144
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 145
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :pswitch_0
    const/16 v5, 0xc

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowColor:I

    .line 150
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonShadowColor == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    :pswitch_1
    const/4 v5, 0x4

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonColor:I

    .line 183
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonColor == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    :pswitch_2
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonSize:I

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonSize:I

    .line 191
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonSize == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    :pswitch_3
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 199
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mChildCount == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 204
    :pswitch_4
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 207
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mBackground == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :pswitch_5
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackgroundButton:Landroid/graphics/drawable/Drawable;

    .line 215
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mBackgroundButton == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackgroundButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 220
    :pswitch_6
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    .line 223
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonPositiveText == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 228
    :pswitch_7
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    .line 231
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonNegativeText == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 236
    :pswitch_8
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    .line 239
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mButtonNeutralText == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    :pswitch_9
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    .line 247
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mIsButtonPositiveAble == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 252
    :pswitch_a
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    .line 255
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mIsButtonNegativeAble == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 260
    :pswitch_b
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    .line 263
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mIsButtonNeutralAble == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 268
    :pswitch_c
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 271
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- mReceiverEnabled == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 281
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_1
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 286
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0xc09040a

    invoke-virtual {v3, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 288
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->getCountChild(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 290
    const-string v5, "OppoShortCutButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- OppoShortCutButton mChildCount == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const v5, 0xc020409

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    .line 293
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 294
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setId(I)V

    .line 302
    const v5, 0xc02040a

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    .line 303
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 304
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setId(I)V

    .line 312
    const v5, 0xc02040b

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    .line 313
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 314
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setId(I)V

    .line 322
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 323
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 349
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    packed-switch v5, :pswitch_data_1

    .line 388
    :goto_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutButton;->prepareTabLayoutAnim()V

    .line 389
    return-void

    .line 351
    :pswitch_d
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 358
    :pswitch_e
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 369
    :pswitch_f
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 376
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_0
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoShortCutButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoShortCutButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoShortCutButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private prepareTabLayoutAnim()V
    .locals 11

    .prologue
    const/high16 v8, 0x3f00

    const-wide/16 v9, 0x32

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 741
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 742
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 743
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 744
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 747
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 748
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 749
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 750
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 751
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/4 v5, 0x2

    const/4 v7, 0x2

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 754
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 755
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    return-void
.end method


# virtual methods
.method public getCountChild(I)I
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, countChild:I
    if-lt p1, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 401
    move v0, p1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    if-ge p1, v1, :cond_2

    .line 403
    const/4 v0, 0x1

    goto :goto_0

    .line 404
    :cond_2
    if-le p1, v2, :cond_0

    .line 405
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 718
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 720
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 721
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.oppo.android.INPUT_WINDOW_HIDDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v1, "com.oppo.android.INPUT_WINDOW_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 725
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;->onShortCutButtonClick(Landroid/view/View;)V

    .line 684
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 731
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 733
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 736
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 737
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 667
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 668
    const-string v0, "OppoShortCutButton"

    const-string v1, "-- onLayout --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method public setBroadcastEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 766
    return-void
.end method

.method public setButtonBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "drawable"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 596
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonEnable([Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, count:I
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-ge v2, v3, :cond_0

    .line 484
    const/4 v2, 0x0

    .line 494
    :goto_0
    return v2

    .line 487
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v2, v3, :cond_1

    .line 488
    iget v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 491
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 492
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 494
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setButtonNegativeEnbale(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNegativeText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNegativeVisible(I)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralEnbale(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralVisible(I)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveEnbale(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveVisible(I)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonText([Ljava/lang/String;)Z
    .locals 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, count:I
    if-nez p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 424
    :cond_1
    array-length v3, p1

    iget v4, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v3, v4, :cond_0

    .line 428
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v2, v3, :cond_2

    .line 429
    iget v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 432
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 433
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setNegativeButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method public setNeutralButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public setPositiveButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public setShortButtonListener(Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .line 678
    return-void
.end method

.method public setShortCutButtonBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "drawable"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoShortCutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public setShortCutButtonTextColor(I)Z
    .locals 1
    .parameter "color"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 660
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 661
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public setShortCutButtonTextSize(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 610
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 611
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 612
    const/4 v0, 0x1

    return v0
.end method
