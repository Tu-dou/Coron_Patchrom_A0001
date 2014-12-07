.class public Lcom/oppo/util/OppoDialogUtil;
.super Ljava/lang/Object;
.source "OppoDialogUtil.java"


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1

.field public static final BIT_FOUSED_BUTTON_NEGATIVE:I = 0x10

.field public static final BIT_FOUSED_BUTTON_NEUTRAL:I = 0x20

.field public static final BIT_FOUSED_BUTTON_POSITIVE:I = 0x8

.field public static final BIT_FOUSED_DEFAULT:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoDialogUtil"


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFousedFlag:I

.field private textColor:Landroid/content/res/ColorStateList;

.field private textFousedColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    .line 73
    iput-object p1, p0, Lcom/oppo/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private changeFousedBg(I)V
    .locals 2
    .parameter "mFousedButtons"

    .prologue
    .line 108
    sparse-switch p1, :sswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 110
    :sswitch_0
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :sswitch_1
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 118
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :sswitch_2
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :sswitch_3
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :sswitch_4
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_3
        0x25 -> :sswitch_1
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
    .end sparse-switch
.end method

.method private initialize(Landroid/view/Window;)V
    .locals 2
    .parameter "mWindow"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->textColor:Landroid/content/res/ColorStateList;

    .line 145
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    .line 146
    return-void
.end method

.method private setButtonBackground(I)V
    .locals 2
    .parameter "whichButtons"

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 99
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private takeScreenShot(Landroid/view/Window;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "mWindow"

    .prologue
    const/4 v6, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, view:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 213
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 214
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 215
    .local v2, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 216
    .local v4, width:I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 217
    .local v1, height:I
    invoke-static {v2, v6, v6, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 219
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    const/4 v2, 0x0

    .line 223
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setDialogButtonFlag(Landroid/view/Window;)V
    .locals 3
    .parameter "mWindow"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, flag:I
    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    .line 151
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    .line 152
    const v1, 0x102001b

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    .line 153
    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 154
    const/16 v0, 0x8

    .line 156
    :cond_0
    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 157
    const/16 v0, 0x10

    .line 159
    :cond_1
    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 160
    const/16 v0, 0x20

    .line 162
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/oppo/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;I)V

    .line 163
    return-void
.end method

.method public setDialogButtonFlag(Landroid/view/Window;I)V
    .locals 3
    .parameter "mWindow"
    .parameter "flag"

    .prologue
    .line 167
    const v2, 0x1020019

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    .line 168
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    .line 169
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoDialogUtil;->initialize(Landroid/view/Window;)V

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, whichButtons:I
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 184
    or-int/lit8 v1, v1, 0x1

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 187
    or-int/lit8 v1, v1, 0x2

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 190
    or-int/lit8 v1, v1, 0x4

    .line 193
    :cond_4
    invoke-direct {p0, v1}, Lcom/oppo/util/OppoDialogUtil;->setButtonBackground(I)V

    .line 194
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method public setDialogDrag(Lcom/android/internal/app/AlertController;Landroid/view/Window;)V
    .locals 0
    .parameter "ac"
    .parameter "window"

    .prologue
    .line 207
    invoke-virtual {p0, p2}, Lcom/oppo/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;)V

    .line 208
    return-void
.end method
