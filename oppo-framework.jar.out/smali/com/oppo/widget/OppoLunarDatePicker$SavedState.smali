.class Lcom/oppo/widget/OppoLunarDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "OppoLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoLunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/widget/OppoLunarDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1030
    new-instance v0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mYear:I

    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mMonth:I

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mDay:I

    .line 1018
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/widget/OppoLunarDatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1005
    iput p2, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mYear:I

    .line 1006
    iput p3, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mMonth:I

    .line 1007
    iput p4, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mDay:I

    .line 1008
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/oppo/widget/OppoLunarDatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 992
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 992
    iget v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 992
    iget v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 992
    iget v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1022
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1023
    iget v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget v0, p0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    return-void
.end method
