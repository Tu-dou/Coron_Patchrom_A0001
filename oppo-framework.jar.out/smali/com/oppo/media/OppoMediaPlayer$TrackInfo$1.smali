.class final Lcom/oppo/media/OppoMediaPlayer$TrackInfo$1;
.super Ljava/lang/Object;
.source "OppoMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
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
        "Lcom/oppo/media/OppoMediaPlayer$TrackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 1622
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    invoke-direct {v0, p1}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1618
    invoke-virtual {p0, p1}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 1627
    new-array v0, p1, [Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1618
    invoke-virtual {p0, p1}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo$1;->newArray(I)[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method
