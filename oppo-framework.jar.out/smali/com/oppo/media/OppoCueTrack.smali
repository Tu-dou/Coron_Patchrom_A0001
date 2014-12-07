.class public Lcom/oppo/media/OppoCueTrack;
.super Ljava/lang/Object;
.source "OppoCueTrack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/media/OppoCueTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mIndex:I

.field private mPerformer:Ljava/lang/String;

.field private mStartPos:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/oppo/media/OppoCueTrack$1;

    invoke-direct {v0}, Lcom/oppo/media/OppoCueTrack$1;-><init>()V

    sput-object v0, Lcom/oppo/media/OppoCueTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    .line 28
    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    .line 28
    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    .line 88
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    return v0
.end method

.method public getPerformer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    .line 37
    return-void
.end method

.method public setPerformer(Ljava/lang/String;)V
    .locals 0
    .parameter "performer"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setStartPos(I)V
    .locals 0
    .parameter "startPos"

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    .line 69
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    const-string v0, "mIndex=%s, mFilePath=%s, mTitle=%s, mPerformer=%s, mStartPos=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 95
    iget v0, p0, Lcom/oppo/media/OppoCueTrack;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/oppo/media/OppoCueTrack;->mPerformer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/oppo/media/OppoCueTrack;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
