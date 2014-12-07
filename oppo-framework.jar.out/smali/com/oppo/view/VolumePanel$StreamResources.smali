.class final enum Lcom/oppo/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/oppo/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/oppo/view/VolumePanel$StreamResources;


# instance fields
.field circleIconMuteRes:I

.field circleIconRes:I

.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 177
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0xc04048a

    const v5, 0xc08045f

    const v6, 0xc080461

    const v7, 0xc0804bc

    const v8, 0xc0804bd

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 184
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0xc04048b

    const v5, 0xc080494

    const v6, 0xc080495

    const v7, 0xc0804b7

    const v8, 0xc0804b8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 191
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0xc04048c

    const v5, 0xc080460

    const v6, 0xc080460

    const v7, 0xc0804b6

    const v8, 0xc0804b6

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 198
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0xc04048d

    const v5, 0xc080036

    const v6, 0xc080035

    const v7, 0xc0804be

    const v8, 0xc0804bf

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 205
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0xc04048e

    const v5, 0xc08049b

    const v6, 0xc080493

    const v7, 0xc0804b4

    const v8, 0xc0804b5

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 212
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "SystemStream"

    const/4 v2, 0x5

    const/4 v3, 0x1

    const v4, 0xc040527

    const v5, 0xc080497

    const v6, 0xc080498

    const v7, 0xc0804ba

    const v8, 0xc0804bb

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->SystemStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 219
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const v4, 0xc04048f

    const v5, 0xc080496

    const v6, 0xc08049a

    const v7, 0xc0804c0

    const v8, 0xc0804c1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 236
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "MasterStream"

    const/4 v2, 0x7

    const/16 v3, -0x64

    const v4, 0xc04048e

    const v5, 0xc080497

    const v6, 0xc080498

    const v7, 0xc0804ba

    const v8, 0xc0804bb

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 243
    new-instance v0, Lcom/oppo/view/VolumePanel$StreamResources;

    const-string v1, "RemoteStream"

    const/16 v2, 0x8

    const/16 v3, -0xc8

    const v4, 0xc04048e

    const v5, 0xc080481

    const v6, 0xc080482

    const v7, 0xc080481

    const v8, 0xc080482

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/oppo/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/VolumePanel$StreamResources;

    .line 176
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/view/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->SystemStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/view/VolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->$VALUES:[Lcom/oppo/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "circleIconRes"
    .parameter "circleIconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    iput p3, p0, Lcom/oppo/view/VolumePanel$StreamResources;->streamType:I

    .line 263
    iput p4, p0, Lcom/oppo/view/VolumePanel$StreamResources;->descRes:I

    .line 264
    iput p5, p0, Lcom/oppo/view/VolumePanel$StreamResources;->iconRes:I

    .line 265
    iput p6, p0, Lcom/oppo/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 266
    iput p7, p0, Lcom/oppo/view/VolumePanel$StreamResources;->circleIconRes:I

    .line 267
    iput p8, p0, Lcom/oppo/view/VolumePanel$StreamResources;->circleIconMuteRes:I

    .line 268
    iput-boolean p9, p0, Lcom/oppo/view/VolumePanel$StreamResources;->show:Z

    .line 269
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/view/VolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 176
    const-class v0, Lcom/oppo/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/oppo/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/oppo/view/VolumePanel$StreamResources;->$VALUES:[Lcom/oppo/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/oppo/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/view/VolumePanel$StreamResources;

    return-object v0
.end method
