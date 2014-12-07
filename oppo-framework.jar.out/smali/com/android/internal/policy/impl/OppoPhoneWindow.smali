.class public Lcom/android/internal/policy/impl/OppoPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "OppoPhoneWindow.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoPhoneWindow"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x1

    const-string v1, "OppoPhoneWindow"

    const-string v2, "OppoPhoneWindow"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static newActionBarContextView(Landroid/content/Context;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static newActionMode(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)Lcom/android/internal/view/StandaloneActionMode;
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "callback"
    .parameter "isFocusable"

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/internal/view/OppoStandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/OppoStandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 84
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/PhoneWindow;
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindow;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;-><init>(Landroid/content/Context;)V

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setActionModeLayout(Landroid/view/ViewStub;)V
    .locals 1
    .parameter "stub"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const v0, 0xc090445

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 8
    .parameter "decor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 165
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 168
    .local v2, layout:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Loppo/R$styleable;->OppoWindow:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 170
    .local v1, addMaskView:Z
    if-eqz v1, :cond_0

    .line 171
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v3, maskView:Landroid/widget/ImageView;
    const v4, 0xc02046e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 173
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 178
    .end local v3           #maskView:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    return-object v2
.end method

.method public hookGetScreenLayout(I)I
    .locals 11
    .parameter "layoutResource"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getLocalFeatures()I

    move-result v4

    .line 102
    .local v4, features:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Loppo/R$styleable;->OppoWindow:[I

    invoke-virtual {v9, v10}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 104
    .local v3, b:Landroid/content/res/TypedArray;
    and-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_0

    .line 105
    and-int/lit16 v9, v4, 0x100

    if-eqz v9, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x4

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 109
    .local v5, isFloating:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    if-eqz v5, :cond_2

    .line 150
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v5           #isFloating:Z
    :cond_0
    :goto_0
    invoke-virtual {v3, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 151
    .local v2, addMaskView:Z
    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0xc09043b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->hookGetScreenLayout(I)I

    move-result v8

    return v8

    .line 122
    .end local v2           #addMaskView:Z
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v5       #isFloating:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->isOppoStyle()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 123
    const-string v9, "OppoPhoneWindow"

    const-string v10, "Use oppo_screen_action_bar layout!"

    invoke-static {v6, v9, v10}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    const p1, 0xc090446

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 129
    const-string v9, "OppoPhoneWindow"

    const-string v10, "Use screen_simple layout when starting window!"

    invoke-static {v9, v10}, Lcom/oppo/util/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/R$styleable;->ActionBar:[I

    invoke-virtual {v9, v10}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 133
    .local v1, actionBarStyle:Landroid/content/res/TypedArray;
    const/16 v9, 0x8

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 134
    .local v7, titleOptions:I
    and-int/lit8 v9, v7, 0x8

    if-eqz v9, :cond_5

    .line 135
    .local v6, showTitle:Z
    :goto_1
    if-nez v6, :cond_4

    .line 136
    const p1, 0xc090444

    .line 138
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v6           #showTitle:Z
    :cond_5
    move v6, v8

    .line 134
    goto :goto_1
.end method
