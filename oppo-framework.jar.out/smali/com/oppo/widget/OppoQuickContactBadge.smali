.class public Lcom/oppo/widget/OppoQuickContactBadge;
.super Landroid/widget/ImageView;
.source "OppoQuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoQuickContactBadge$QuickContact;,
        Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;,
        Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;
    }
.end annotation


# static fields
.field static EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x0

.field static PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x0

.field private static final SHARE_NAME:Ljava/lang/String; = "RE_QUERY"

.field private static final TAG:Ljava/lang/String; = "OppoQuickContactBadge"

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static mCanClick:Z


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mListener:Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;

.field private mMode:I

.field private mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    sput-boolean v2, Lcom/oppo/widget/OppoQuickContactBadge;->mCanClick:Z

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 75
    sput v3, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_ID_COLUMN_INDEX:I

    .line 76
    sput v2, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_LOOKUP_STRING_COLUMN_INDEX:I

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 83
    sput v3, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_ID_COLUMN_INDEX:I

    .line 84
    sput v2, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_LOOKUP_STRING_COLUMN_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoQuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoQuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadge;->init()V

    .line 119
    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V

    return-void
.end method

.method public static getIsReQuery(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 279
    const-string v1, "RE_QUERY"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "re_query"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;

    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;-><init>(Lcom/oppo/widget/OppoQuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;

    .line 124
    invoke-virtual {p0, p0}, Lcom/oppo/widget/OppoQuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoQuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoQuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setReQuery(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "re"

    .prologue
    .line 266
    const-string v1, "RE_QUERY"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "re_query"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method private trigger(JLjava/lang/String;)V
    .locals 7
    .parameter "persionId"
    .parameter "num"

    .prologue
    .line 192
    if-eqz p3, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mMode:I

    iget-object v4, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p3

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/oppo/widget/OppoQuickContactBadge$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 195
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoQuickContactBadge;->setReQuery(Landroid/content/Context;Z)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "OppoQuickContactBadge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t trigger the personId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 155
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iput-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 162
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 168
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 169
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 171
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 173
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 174
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 175
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 176
    iget-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mListener:Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mListener:Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;

    invoke-interface {v2, p0, v1}, Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;->onQuick(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .parameter "excludeMimes"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 134
    iput p1, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mMode:I

    .line 135
    return-void
.end method

.method public setOppoQuickContactBadgeListener(Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge;->mListener:Lcom/oppo/widget/OppoQuickContactBadge$OppoQuickContactBadgeListener;

    .line 103
    return-void
.end method
