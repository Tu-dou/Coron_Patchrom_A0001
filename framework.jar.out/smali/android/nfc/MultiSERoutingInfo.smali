.class public Landroid/nfc/MultiSERoutingInfo;
.super Ljava/lang/Object;
.source "MultiSERoutingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/MultiSERoutingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static LOCATION_ESE:B

.field public static LOCATION_HOST:B

.field public static LOCATION_UICC:B

.field public static POWER_STATE_BATTERY_OFF:B

.field public static POWER_STATE_SWITCHED_OFF:B

.field public static POWER_STATE_SWITCHED_ON:B

.field public static PROTOCOL_MIFARE:B

.field public static ROUTE_AID:B

.field public static ROUTE_DEFAULT:B

.field public static ROUTE_PROTOCOL:B

.field public static ROUTE_TECHNOLOGY:B

.field public static TECHNOLOGY_A:B

.field public static TECHNOLOGY_B:B

.field public static TECHNOLOGY_F:B


# instance fields
.field private mLocation:B

.field private mPowerState:B

.field private mRouteDetail:[B

.field private mRouteType:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10
    const/4 v0, 0x0

    sput-byte v0, Landroid/nfc/MultiSERoutingInfo;->ROUTE_DEFAULT:B

    .line 11
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->ROUTE_AID:B

    .line 12
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->ROUTE_PROTOCOL:B

    .line 13
    const/4 v0, 0x3

    sput-byte v0, Landroid/nfc/MultiSERoutingInfo;->ROUTE_TECHNOLOGY:B

    .line 15
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->LOCATION_UICC:B

    .line 16
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->LOCATION_ESE:B

    .line 17
    sput-byte v3, Landroid/nfc/MultiSERoutingInfo;->LOCATION_HOST:B

    .line 19
    sput-byte v3, Landroid/nfc/MultiSERoutingInfo;->POWER_STATE_BATTERY_OFF:B

    .line 20
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->POWER_STATE_SWITCHED_OFF:B

    .line 21
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->POWER_STATE_SWITCHED_ON:B

    .line 23
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->PROTOCOL_MIFARE:B

    .line 25
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->TECHNOLOGY_A:B

    .line 26
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->TECHNOLOGY_B:B

    .line 27
    sput-byte v3, Landroid/nfc/MultiSERoutingInfo;->TECHNOLOGY_F:B

    .line 99
    new-instance v0, Landroid/nfc/MultiSERoutingInfo$1;

    invoke-direct {v0}, Landroid/nfc/MultiSERoutingInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/MultiSERoutingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(B[BBB)V
    .locals 0
    .parameter "routeType"
    .parameter "routeDetail"
    .parameter "location"
    .parameter "powerState"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    .line 46
    iput-object p2, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[B

    .line 47
    iput-byte p3, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    .line 48
    iput-byte p4, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()B
    .locals 1

    .prologue
    .line 68
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    return v0
.end method

.method public getPowerState()B
    .locals 1

    .prologue
    .line 76
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    return v0
.end method

.method public getRouteDetail()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[B

    return-object v0
.end method

.method public getRouteType()B
    .locals 1

    .prologue
    .line 52
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    return v0
.end method

.method public setLocation(B)V
    .locals 0
    .parameter "mLocation"

    .prologue
    .line 72
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    .line 73
    return-void
.end method

.method public setPowerState(B)V
    .locals 0
    .parameter "mPowerState"

    .prologue
    .line 80
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    .line 81
    return-void
.end method

.method public setRouteDetail([B)V
    .locals 0
    .parameter "mRouteDetail"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[B

    .line 65
    return-void
.end method

.method public setRouteType(B)V
    .locals 0
    .parameter "mRouteType"

    .prologue
    .line 56
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[B

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    :cond_0
    return-void
.end method
