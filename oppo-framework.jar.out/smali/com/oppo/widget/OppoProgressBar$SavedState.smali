.class Lcom/oppo/widget/OppoProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "OppoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/widget/OppoProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field progress:I

.field secondaryProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1027
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoProgressBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar$SavedState;->progress:I

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar$SavedState;->secondaryProgress:I

    .line 1018
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/widget/OppoProgressBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1009
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1022
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1023
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    return-void
.end method
