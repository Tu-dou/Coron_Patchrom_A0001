.class public Landroid/widget/OppoEmojiPlugin;
.super Ljava/lang/Object;
.source "OppoEmojiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoEmojiPlugin$1;,
        Landroid/widget/OppoEmojiPlugin$EmojiItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DRAWABLE_ClASS_FULL_PATH:Ljava/lang/String; = "com.oppo.exp.emoji.R$drawable"

.field private static final DRAWABLE_TYPE_NAME:Ljava/lang/String; = "drawable"

.field private static final MAX_EMOJI_UNICODE:I = 0xe537

.field private static final MIN_EMOJI_UNICODE:I = 0xe001

.field private static final PLUGIN_PACKAGE_NAME:Ljava/lang/String; = "com.oppo.exp.emoji"

.field private static final TAG:Ljava/lang/String; = "OppoEmojiPlugin"

.field private static mInstance:Landroid/widget/OppoEmojiPlugin;

.field static final mInstanceSync:Ljava/lang/Object;

.field private static mMatchPattern:Ljava/util/regex/Pattern;

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field private mEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoEmojiPlugin$EmojiItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/OppoEmojiPlugin;->mInstanceSync:Ljava/lang/Object;

    .line 188
    invoke-static {}, Landroid/widget/OppoEmojiPlugin;->initEmojiChars()V

    .line 189
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/OppoEmojiPlugin;->mEmojis:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 67
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 69
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.oppo.exp.emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Landroid/widget/OppoEmojiPlugin;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "OppoEmojiPlugin"

    const-string v4, "couldn\'t get resources"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static containEmoji(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "cs"

    .prologue
    const/4 v1, 0x0

    .line 259
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    sget-object v2, Landroid/widget/OppoEmojiPlugin;->mMatchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 263
    .local v0, m:Ljava/util/regex/Matcher;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3
    .parameter "resName"

    .prologue
    .line 105
    sget-object v0, Landroid/widget/OppoEmojiPlugin;->mResources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    const-string v2, "com.oppo.exp.emoji"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getEmojiDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "resName"

    .prologue
    .line 131
    sget-object v2, Landroid/widget/OppoEmojiPlugin;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 132
    const-string v2, "OppoEmojiPlugin"

    const-string v3, "OppoEmojiPlugin, NO drawable found ?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 138
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-object v2, Landroid/widget/OppoEmojiPlugin;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Landroid/widget/OppoEmojiPlugin;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/widget/OppoEmojiPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/widget/OppoEmojiPlugin;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    sget-object v1, Landroid/widget/OppoEmojiPlugin;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Landroid/widget/OppoEmojiPlugin;->mInstance:Landroid/widget/OppoEmojiPlugin;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/widget/OppoEmojiPlugin;

    invoke-direct {v0, p0}, Landroid/widget/OppoEmojiPlugin;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/widget/OppoEmojiPlugin;->mInstance:Landroid/widget/OppoEmojiPlugin;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Landroid/widget/OppoEmojiPlugin;->mInstance:Landroid/widget/OppoEmojiPlugin;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getNextEmojiUnicode(I)I
    .locals 2
    .parameter "emojiUnicode"

    .prologue
    .line 153
    move v0, p0

    .line 154
    .local v0, next:I
    const v1, 0xe05a

    if-ne v0, v1, :cond_0

    .line 155
    const v0, 0xe101

    .line 168
    :goto_0
    return v0

    .line 156
    :cond_0
    const v1, 0xe15a

    if-ne v0, v1, :cond_1

    .line 157
    const v0, 0xe201

    goto :goto_0

    .line 158
    :cond_1
    const v1, 0xe253

    if-ne v0, v1, :cond_2

    .line 159
    const v0, 0xe301

    goto :goto_0

    .line 160
    :cond_2
    const v1, 0xe34d

    if-ne v0, v1, :cond_3

    .line 161
    const v0, 0xe401

    goto :goto_0

    .line 162
    :cond_3
    const v1, 0xe44c

    if-ne v0, v1, :cond_4

    .line 163
    const v0, 0xe501

    goto :goto_0

    .line 165
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static initEmojiChars()V
    .locals 6

    .prologue
    const v5, 0xe537

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, emojiReglex:Ljava/lang/StringBuilder;
    const v2, 0xe001

    .local v2, i:I
    :goto_0
    if-gt v2, v5, :cond_1

    .line 175
    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, emojiChar:Ljava/lang/String;
    if-ge v2, v5, :cond_0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_1
    invoke-static {v2}, Landroid/widget/OppoEmojiPlugin;->getNextEmojiUnicode(I)I

    move-result v2

    goto :goto_0

    .line 179
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    .end local v0           #emojiChar:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Landroid/widget/OppoEmojiPlugin;->mMatchPattern:Ljava/util/regex/Pattern;

    .line 184
    return-void
.end method


# virtual methods
.method public declared-synchronized refreshEmojiOfText(Ljava/lang/CharSequence;Landroid/text/method/TransformationMethod;Ljava/lang/CharSequence;Landroid/widget/TextView;Landroid/text/Spannable$Factory;)Ljava/lang/CharSequence;
    .locals 18
    .parameter "buffer"
    .parameter "transformation"
    .parameter "transformed"
    .parameter "view"
    .parameter "spannableFactory"

    .prologue
    .line 205
    monitor-enter p0

    if-nez p1, :cond_0

    move-object/from16 v13, p3

    .line 255
    .end local p3
    .local v13, transformed:Ljava/lang/CharSequence;
    :goto_0
    monitor-exit p0

    return-object v13

    .line 209
    .end local v13           #transformed:Ljava/lang/CharSequence;
    .restart local p3
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoEmojiPlugin;->mEmojis:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 210
    .local v9, prevSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoEmojiPlugin;->mEmojis:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 213
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 214
    .local v11, string:Ljava/lang/String;
    sget-object v14, Landroid/widget/OppoEmojiPlugin;->mMatchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 216
    .local v8, m:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 217
    new-instance v5, Landroid/widget/OppoEmojiPlugin$EmojiItem;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Landroid/widget/OppoEmojiPlugin$EmojiItem;-><init>(Landroid/widget/OppoEmojiPlugin$1;)V

    .line 218
    .local v5, emoData:Landroid/widget/OppoEmojiPlugin$EmojiItem;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    iput v14, v5, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mStart:I

    .line 219
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    iput v14, v5, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mEnd:I

    .line 220
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 221
    .local v6, i:I
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mUnicodeStr:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoEmojiPlugin;->mEmojis:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 205
    .end local v5           #emoData:Landroid/widget/OppoEmojiPlugin$EmojiItem;
    .end local v6           #i:I
    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #prevSize:I
    .end local v11           #string:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 227
    .restart local v8       #m:Ljava/util/regex/Matcher;
    .restart local v9       #prevSize:I
    .restart local v11       #string:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 228
    .local v4, emoBuffer:Landroid/text/Spannable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoEmojiPlugin;->mEmojis:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_2

    if-eqz v9, :cond_5

    .line 229
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/OppoEmojiPlugin;->mEmojis:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoEmojiPlugin$EmojiItem;

    .line 230
    .local v3, emo:Landroid/widget/OppoEmojiPlugin$EmojiItem;
    iget-object v14, v3, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mUnicodeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/OppoEmojiPlugin;->getEmojiDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 232
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_3

    .line 233
    const-string v14, "OppoEmojiPlugin"

    const-string v15, "Drawable d = getEmojiDrawable(emo.mUnicodeStr)....d == null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 237
    :cond_3
    if-nez v4, :cond_4

    .line 238
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    .line 241
    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    new-instance v10, Landroid/text/style/ImageSpan;

    const/4 v14, 0x0

    invoke-direct {v10, v2, v14}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 243
    .local v10, span:Landroid/text/style/ImageSpan;
    iget v14, v3, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mStart:I

    iget v15, v3, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mEnd:I

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-interface {v4, v10, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 248
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #emo:Landroid/widget/OppoEmojiPlugin$EmojiItem;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #span:Landroid/text/style/ImageSpan;
    :cond_5
    if-eqz v4, :cond_6

    move-object v12, v4

    .line 249
    .local v12, text:Ljava/lang/CharSequence;
    :goto_3
    if-nez p2, :cond_7

    .line 250
    move-object/from16 p3, v12

    :goto_4
    move-object/from16 v13, p3

    .line 255
    .end local p3
    .restart local v13       #transformed:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .end local v12           #text:Ljava/lang/CharSequence;
    .end local v13           #transformed:Ljava/lang/CharSequence;
    .restart local p3
    :cond_6
    move-object/from16 v12, p1

    .line 248
    goto :goto_3

    .line 252
    .restart local v12       #text:Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v0, v12, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    goto :goto_4
.end method
