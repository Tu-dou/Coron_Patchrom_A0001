.class Lcom/oppo/media/OppoCueParser$Info;
.super Ljava/lang/Object;
.source "OppoCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oppo/media/OppoCueParser;


# direct methods
.method private constructor <init>(Lcom/oppo/media/OppoCueParser;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object p1, p0, Lcom/oppo/media/OppoCueParser$Info;->this$0:Lcom/oppo/media/OppoCueParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/oppo/media/OppoCueParser$Info;->mKey:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/oppo/media/OppoCueParser$Info;->mValues:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/media/OppoCueParser;Lcom/oppo/media/OppoCueParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoCueParser$Info;-><init>(Lcom/oppo/media/OppoCueParser;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/media/OppoCueParser$Info;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/media/OppoCueParser$Info;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oppo/media/OppoCueParser$Info;->mKey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setValue(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oppo/media/OppoCueParser$Info;->mValues:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v0, "mKey=%s, mValues=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/media/OppoCueParser$Info;->mKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/media/OppoCueParser$Info;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
