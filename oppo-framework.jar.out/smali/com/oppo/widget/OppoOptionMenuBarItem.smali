.class public Lcom/oppo/widget/OppoOptionMenuBarItem;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarItem.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final NO_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBarItem"


# instance fields
.field private final MSG_ANIMATION_END:I

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimationEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconOrig:Landroid/graphics/drawable/Drawable;

.field private mItemId:I

.field private mItemTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 44
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 172
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    .line 180
    const/16 v0, 0x11

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->MSG_ANIMATION_END:I

    .line 181
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 44
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 172
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    .line 180
    const/16 v0, 0x11

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->MSG_ANIMATION_END:I

    .line 181
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 44
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 172
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    .line 180
    const/16 v0, 0x11

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->MSG_ANIMATION_END:I

    .line 181
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBarItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setGravity(I)V

    .line 64
    const v0, 0xc09043c

    invoke-static {p1, v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    const v0, 0xc020467

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 96
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 98
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 99
    .local v0, drawableHeight:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    return v0
.end method

.method public getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method public getmAnimationEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    return v0
.end method

.method public getmIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 159
    const-string v0, "OppoOptionMenuBarItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on change visibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 162
    if-nez p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 168
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setPadding(IIII)V

    .line 147
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 116
    return-void
.end method

.method public setItemEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 120
    return-void
.end method

.method public setItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    const v0, 0x7fffffff

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->update()V

    .line 93
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 69
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 70
    return-void
.end method

.method public setItemTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->update()V

    .line 81
    return-void
.end method

.method public setItemTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setItemVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public setmAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter "animationDrawable"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 258
    return-void
.end method

.method public setmAnimationEnabled(Z)V
    .locals 0
    .parameter "animationEnabled"

    .prologue
    .line 271
    return-void
.end method

.method public startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V
    .locals 11
    .parameter "animationDrawable"
    .parameter "delayMillis"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x11

    .line 211
    const-string v8, "OppoOptionMenuBarItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAnimationEnabled="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "animationDrawable != null ? "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "!animationDrawable.isRunning() ?"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v9

    if-nez v9, :cond_1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    .line 217
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v4

    .line 220
    .local v4, numberOfFrames:I
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 222
    const-wide/16 v0, 0x0

    .line 223
    .local v0, animationDrawableDuation:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 224
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #animationDrawableDuation:J
    .end local v2           #i:I
    .end local v4           #numberOfFrames:I
    :cond_0
    move v5, v7

    .line 211
    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 226
    .restart local v0       #animationDrawableDuation:J
    .restart local v2       #i:I
    .restart local v4       #numberOfFrames:I
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 231
    .local v3, msgEND:Landroid/os/Message;
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x32

    add-long/2addr v6, v0

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    const-string v5, "OppoOptionMenuBarItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animationDrawable.start();"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0           #animationDrawableDuation:J
    .end local v2           #i:I
    .end local v3           #msgEND:Landroid/os/Message;
    .end local v4           #numberOfFrames:I
    :cond_4
    return-void
.end method

.method public stopItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V
    .locals 3
    .parameter "animationDrawable"
    .parameter "delayMillis"

    .prologue
    const/16 v2, 0x11

    .line 242
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, msgEND:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    .end local v0           #msgEND:Landroid/os/Message;
    :cond_0
    return-void
.end method
