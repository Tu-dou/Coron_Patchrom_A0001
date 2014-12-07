.class public Lcom/android/internal/telephony/uicc/OppoUiccFunction;
.super Ljava/lang/Object;
.source "OppoUiccFunction.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "add for SIMInfo db, only for QCOM platform"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oppoBuildEmailString(Ljava/lang/String;III)[B
    .locals 6
    .parameter "email"
    .parameter "bufferlen"
    .parameter "recordNumber"
    .parameter "sfi"

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, emailString:[B
    const/4 v0, 0x0

    .line 66
    .local v0, byteTag:[B
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 68
    :cond_0
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "error build Email String"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v3, 0x0

    .line 96
    :goto_0
    return-object v3

    .line 71
    :cond_1
    new-array v1, p1, [B

    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, i:I
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p1, -0x2

    if-ge v2, v3, :cond_2

    .line 76
    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 81
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 84
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_3
    add-int/lit8 v3, p1, -0x2

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 90
    add-int/lit8 v3, p1, -0x1

    rem-int/lit16 v4, p2, 0xfa

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 92
    const-string v3, "RIL_AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oppoBuildEmailString x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v3, v1

    .line 96
    goto :goto_0

    .line 95
    :cond_4
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "delete email"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static oppoBuildNumber2String(Ljava/lang/String;)[B
    .locals 7
    .parameter "num"

    .prologue
    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, num2String:[B
    const/4 v0, 0x0

    .line 103
    .local v0, bcdNumber:[B
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 105
    :cond_0
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "error build Number2 String"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v3, 0x0

    .line 126
    :goto_0
    return-object v3

    .line 108
    :cond_1
    new-array v2, v5, [B

    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 111
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 115
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 116
    if-eqz v0, :cond_3

    .line 118
    const-string v3, "RIL_AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteTag length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    aput-byte v6, v2, v6

    .line 120
    const/4 v3, 0x1

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 121
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    move-object v3, v2

    .line 126
    goto :goto_0

    .line 125
    :cond_4
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "delete Number2"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static oppoGetSimType()Z
    .locals 4

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, vRet:Z
    const-string v2, "gsm.sim.card.type"

    const-string v3, "SIM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, vStr:Ljava/lang/String;
    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 57
    :cond_0
    return v0
.end method

.method public static oppoWriteSim()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public static oppoWriteUsim()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "gsm.sim.card.type"

    const-string v1, "USIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
