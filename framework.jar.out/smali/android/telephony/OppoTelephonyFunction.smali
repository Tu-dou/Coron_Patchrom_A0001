.class public Landroid/telephony/OppoTelephonyFunction;
.super Ljava/lang/Object;
.source "OppoTelephonyFunction.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of OppoTelephonyFunction"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field public static final CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final PORT_ADDRESS_16_REFERENCE_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OppoTelephonyFunction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .parameter "rfu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 125
    .local v2, sz:I
    const/4 v1, 0x0

    .line 127
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 128
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return v1
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 100
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    return-object v0
.end method

.method public static divideDataMessage([B)[[B
    .locals 10
    .parameter "data"

    .prologue
    .line 63
    array-length v3, p0

    .line 65
    .local v3, dataLen:I
    const/16 v0, 0x85

    .line 68
    .local v0, bytePreSeg:I
    if-le v3, v0, :cond_0

    .line 69
    add-int/lit8 v0, v0, -0x5

    .line 72
    :cond_0
    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    div-int v6, v7, v0

    .line 73
    .local v6, total:I
    move v5, v3

    .line 74
    .local v5, remainLen:I
    const/4 v2, 0x0

    .line 75
    .local v2, count:I
    new-array v4, v6, [[B

    .line 77
    .local v4, dataSegList:[[B
    :goto_0
    if-lez v5, :cond_2

    .line 80
    if-le v5, v0, :cond_1

    .line 81
    move v1, v0

    .line 86
    .local v1, copyLen:I
    :goto_1
    sub-int/2addr v5, v1

    .line 88
    new-array v7, v1, [B

    aput-object v7, v4, v2

    .line 90
    mul-int v7, v2, v0

    aget-object v8, v4, v2

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_0

    .line 83
    .end local v1           #copyLen:I
    :cond_1
    move v1, v5

    .restart local v1       #copyLen:I
    goto :goto_1

    .line 95
    .end local v1           #copyLen:I
    :cond_2
    return-object v4
.end method

.method public static dmAutoRegisterSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 196
    if-nez v0, :cond_1

    .line 198
    const/4 p0, 0x0

    .line 210
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-object p0

    .line 203
    .restart local v0       #index:I
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dmAutoRegisterSmsOrigPort(Ljava/lang/String;)I
    .locals 3
    .parameter "address"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, origPort:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 183
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 188
    .end local v0           #index:I
    :cond_0
    :goto_0
    return v1

    .line 184
    .restart local v0       #index:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getMinMatch()I
    .locals 3

    .prologue
    .line 106
    const-string/jumbo v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method public static stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 9
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 146
    if-nez p0, :cond_0

    move-object v2, v5

    .line 172
    :goto_0
    return-object v2

    .line 149
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v6, v7}, Landroid/telephony/OppoTelephonyFunction;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 151
    .local v3, septets:I
    new-array v2, v3, [B

    .line 153
    .local v2, ret:[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {p0, v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v2           #ret:[B
    .end local v3           #septets:I
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 161
    .local v4, temp:[B
    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [B

    .line 163
    .restart local v2       #ret:[B
    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v2, v6

    .line 165
    const/4 v6, 0x0

    const/4 v7, 0x1

    array-length v8, v4

    invoke-static {v4, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 167
    .end local v2           #ret:[B
    .end local v4           #temp:[B
    :catch_1
    move-exception v1

    .line 168
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "OppoTelephonyFunction"

    const-string/jumbo v7, "unsurport encoding."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 169
    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v4, 0x0

    .line 52
    :goto_0
    return-object v4

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 43
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 47
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
