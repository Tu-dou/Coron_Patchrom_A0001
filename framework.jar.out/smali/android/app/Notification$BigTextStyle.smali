.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2221
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 2222
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 2224
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 2225
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2226
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 8
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_RESOURCE:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jiamiao.He@Plf.Keyguard, 2013.02.04: make notification to oppo\'s"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const v7, 0xc02047b

    const/4 v2, 0x0

    .line 2269
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$500(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    .line 2270
    .local v6, hadThreeLines:Z
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    #setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v1, v3}, Landroid/app/Notification$Builder;->access$502(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2278
    const v1, 0xc09041f

    invoke-virtual {p0, v1}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2281
    .local v0, contentView:Landroid/widget/RemoteViews;
    if-eqz v6, :cond_0

    .line 2283
    const v1, 0xc020477

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2286
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2287
    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2288
    const v1, 0xc020476

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2290
    return-object v0

    .end local v0           #contentView:Landroid/widget/RemoteViews;
    .end local v6           #hadThreeLines:Z
    :cond_1
    move v6, v2

    .line 2269
    goto :goto_0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extras"

    .prologue
    .line 2258
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 2260
    const-string v0, "android.text"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2261
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .parameter "cs"

    .prologue
    .line 2250
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2251
    return-object p0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 3
    .parameter "wip"

    .prologue
    .line 2298
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2300
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2302
    return-object p1
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .parameter "title"

    .prologue
    .line 2233
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 2234
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .parameter "cs"

    .prologue
    .line 2241
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 2242
    return-object p0
.end method
