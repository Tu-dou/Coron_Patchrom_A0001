.class public final enum Landroid/telephony/MSimSmsMessage$MessageClass;
.super Ljava/lang/Enum;
.source "MSimSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MSimSmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/MSimSmsMessage$MessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/MSimSmsMessage$MessageClass;

.field public static final enum CLASS_0:Landroid/telephony/MSimSmsMessage$MessageClass;

.field public static final enum CLASS_1:Landroid/telephony/MSimSmsMessage$MessageClass;

.field public static final enum CLASS_2:Landroid/telephony/MSimSmsMessage$MessageClass;

.field public static final enum CLASS_3:Landroid/telephony/MSimSmsMessage$MessageClass;

.field public static final enum UNKNOWN:Landroid/telephony/MSimSmsMessage$MessageClass;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Landroid/telephony/MSimSmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/MSimSmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    const-string v1, "CLASS_0"

    invoke-direct {v0, v1, v3}, Landroid/telephony/MSimSmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_0:Landroid/telephony/MSimSmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    const-string v1, "CLASS_1"

    invoke-direct {v0, v1, v4}, Landroid/telephony/MSimSmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_1:Landroid/telephony/MSimSmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    const-string v1, "CLASS_2"

    invoke-direct {v0, v1, v5}, Landroid/telephony/MSimSmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_2:Landroid/telephony/MSimSmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    const-string v1, "CLASS_3"

    invoke-direct {v0, v1, v6}, Landroid/telephony/MSimSmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_3:Landroid/telephony/MSimSmsMessage$MessageClass;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/telephony/MSimSmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/MSimSmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/MSimSmsMessage$MessageClass;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_0:Landroid/telephony/MSimSmsMessage$MessageClass;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_1:Landroid/telephony/MSimSmsMessage$MessageClass;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_2:Landroid/telephony/MSimSmsMessage$MessageClass;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/MSimSmsMessage$MessageClass;->CLASS_3:Landroid/telephony/MSimSmsMessage$MessageClass;

    aput-object v1, v0, v6

    sput-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->$VALUES:[Landroid/telephony/MSimSmsMessage$MessageClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/MSimSmsMessage$MessageClass;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimSmsMessage$MessageClass;

    return-object v0
.end method

.method public static values()[Landroid/telephony/MSimSmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/telephony/MSimSmsMessage$MessageClass;->$VALUES:[Landroid/telephony/MSimSmsMessage$MessageClass;

    invoke-virtual {v0}, [Landroid/telephony/MSimSmsMessage$MessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/MSimSmsMessage$MessageClass;

    return-object v0
.end method
