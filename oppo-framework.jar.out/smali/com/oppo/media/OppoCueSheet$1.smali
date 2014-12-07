.class final Lcom/oppo/media/OppoCueSheet$1;
.super Ljava/lang/Object;
.source "OppoCueSheet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoCueSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oppo/media/OppoCueSheet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/media/OppoCueSheet;
    .locals 1
    .parameter "source"

    .prologue
    .line 118
    new-instance v0, Lcom/oppo/media/OppoCueSheet;

    invoke-direct {v0, p1}, Lcom/oppo/media/OppoCueSheet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/oppo/media/OppoCueSheet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/media/OppoCueSheet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oppo/media/OppoCueSheet;
    .locals 1
    .parameter "size"

    .prologue
    .line 122
    new-array v0, p1, [Lcom/oppo/media/OppoCueSheet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/oppo/media/OppoCueSheet$1;->newArray(I)[Lcom/oppo/media/OppoCueSheet;

    move-result-object v0

    return-object v0
.end method
