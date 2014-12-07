.class Landroid/widget/OppoEmojiPlugin$EmojiItem;
.super Ljava/lang/Object;
.source "OppoEmojiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoEmojiPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiItem"
.end annotation


# instance fields
.field public mEnd:I

.field public mStart:I

.field public mUnicodeStr:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput v0, p0, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mStart:I

    .line 196
    iput v0, p0, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mEnd:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mUnicodeStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoEmojiPlugin$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/widget/OppoEmojiPlugin$EmojiItem;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mUnicodeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/OppoEmojiPlugin$EmojiItem;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
