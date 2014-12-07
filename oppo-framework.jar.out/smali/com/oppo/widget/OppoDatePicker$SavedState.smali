.class Lcom/oppo/widget/OppoDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "OppoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDatePicker;
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
            "Lcom/oppo/widget/OppoDatePicker$SavedState;",
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
    .line 869
    new-instance v0, Lcom/oppo/widget/OppoDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    .line 857
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/widget/OppoDatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 843
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 844
    iput p2, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    .line 845
    iput p3, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    .line 846
    iput p4, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    .line 847
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/oppo/widget/OppoDatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 831
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 861
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 862
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    return-void
.end method
