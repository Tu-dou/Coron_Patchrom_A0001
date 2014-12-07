.class public Lcom/oppo/media/OppoCueSheet;
.super Ljava/lang/Object;
.source "OppoCueSheet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/media/OppoCueSheet;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OppoCueSheet"


# instance fields
.field private mPerformer:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/media/OppoCueTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/oppo/media/OppoCueSheet$1;

    invoke-direct {v0}, Lcom/oppo/media/OppoCueSheet$1;-><init>()V

    sput-object v0, Lcom/oppo/media/OppoCueSheet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    sget-object v1, Lcom/oppo/media/OppoCueTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 103
    return-void
.end method


# virtual methods
.method public addCueTrack(Lcom/oppo/media/OppoCueTrack;)V
    .locals 1
    .parameter "track"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getCueTrack(I)Lcom/oppo/media/OppoCueTrack;
    .locals 3
    .parameter "index"

    .prologue
    .line 63
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/media/OppoCueSheet;->getCueTrackCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 64
    :cond_0
    const-string v0, "OppoCueSheet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCueTrack, index out of bound. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/media/OppoCueTrack;

    goto :goto_0
.end method

.method public getCueTrackCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPerformer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setPerformer(Ljava/lang/String;)V
    .locals 0
    .parameter "performer"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 78
    const-string v4, "mTitle=%s, mPerformer=%s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oppo/media/OppoCueSheet;->getCueTrackCount()I

    move-result v3

    .line 81
    .local v3, trackCount:I
    if-lez v3, :cond_1

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Track List:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, track:Lcom/oppo/media/OppoCueTrack;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoCueSheet;->getCueTrack(I)Lcom/oppo/media/OppoCueTrack;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oppo/media/OppoCueTrack;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0           #i:I
    .end local v2           #track:Lcom/oppo/media/OppoCueTrack;
    :cond_1
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mPerformer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/oppo/media/OppoCueSheet;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 113
    return-void
.end method
