.class public Lcom/android/internal/telephony/OppoGsmAlphabet;
.super Ljava/lang/Object;
.source "OppoGsmAlphabet.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "constant define from QCOM"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static is0X80coding:Z

.field private static is0X81coding:Z

.field private static is0X82coding:Z

.field private static max:I

.field private static min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 49
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 50
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containChinese(Ljava/lang/String;)Z
    .locals 6
    .parameter "strName"

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v4

    .line 296
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 297
    .local v1, ch:[C
    array-length v3, v1

    .line 299
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 300
    aget-char v0, v1, v2

    .line 301
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isChinese(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    const/4 v4, 0x1

    goto :goto_0

    .line 299
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
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
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 263
    .local v2, sz:I
    const/4 v1, 0x0

    .line 265
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 267
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return v1
.end method

.method public static enableEncodeTo0x81(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, ret:Z
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->containChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isThai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isRussian(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static enableToEncode0X80()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    return v0
.end method

.method public static enableToEncode0X81()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    return v0
.end method

.method public static enableToEncode0X82()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return v0
.end method

.method public static encodeTo0x81(Ljava/lang/String;)[B
    .locals 12
    .parameter "src"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, b0x81:[B
    const/4 v2, 0x0

    .line 386
    .local v2, bytes:[B
    const/4 v1, 0x0

    .line 387
    .local v1, base:B
    const/4 v3, 0x0

    .line 388
    .local v3, data:B
    const/4 v6, 0x0

    .line 389
    .local v6, len:I
    const/4 v7, 0x0

    .line 391
    .local v7, offset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 392
    add-int/lit8 v9, v6, 0x3

    new-array v0, v9, [B

    .line 395
    const/16 v9, -0x7f

    aput-byte v9, v0, v11

    .line 398
    int-to-byte v9, v6

    aput-byte v9, v0, v10

    .line 400
    const/4 v7, 0x3

    .line 401
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 403
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    const-string v9, "utf-16be"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    invoke-static {v8}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isEnglish(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 418
    if-nez v1, :cond_0

    .line 419
    aget-byte v9, v2, v11

    shl-int/lit8 v9, v9, 0x1

    int-to-byte v1, v9

    .line 420
    const/4 v9, 0x2

    aput-byte v1, v0, v9

    .line 424
    :cond_0
    aget-byte v3, v2, v10

    .line 425
    and-int/lit16 v9, v3, 0x80

    if-nez v9, :cond_1

    .line 426
    or-int/lit16 v9, v3, 0x80

    int-to-byte v3, v9

    .line 434
    :cond_1
    :goto_1
    add-int v9, v7, v5

    aput-byte v3, v0, v9

    .line 401
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 408
    :catch_0
    move-exception v4

    .line 409
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encodeTo0x81() : unsurport encoding of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    const/4 v0, 0x0

    .line 437
    .end local v0           #b0x81:[B
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #temp:Ljava/lang/String;
    :cond_2
    return-object v0

    .line 431
    .restart local v0       #b0x81:[B
    .restart local v8       #temp:Ljava/lang/String;
    :cond_3
    aget-byte v3, v2, v10

    goto :goto_1
.end method

.method public static isChinese(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, ret:Z
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 278
    .local v1, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v1, v2, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x1

    .line 287
    :cond_1
    return v0
.end method

.method public static isEnglish(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 312
    .local v3, sz:I
    const/4 v2, 0x1

    .line 313
    .local v2, ret:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 315
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, c:C
    const/16 v4, 0x21

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_0

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 324
    .end local v0           #c:C
    :cond_1
    return v2
.end method

.method public static isRussian(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 351
    .local v4, sz:I
    const/4 v3, 0x1

    .line 352
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 353
    .local v1, hasRussian:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 355
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 356
    .local v0, c:C
    const/16 v5, 0x21

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_0

    .line 353
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_0
    const/16 v5, 0x400

    if-lt v0, v5, :cond_1

    const/16 v5, 0x4ff

    if-gt v0, v5, :cond_1

    .line 359
    const/4 v1, 0x1

    goto :goto_1

    .line 361
    :cond_1
    const/4 v3, 0x0

    .line 366
    .end local v0           #c:C
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isThai(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 330
    .local v4, sz:I
    const/4 v3, 0x1

    .line 331
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 332
    .local v1, hasThai:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 334
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    .local v0, c:C
    const/16 v5, 0x21

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_0

    .line 332
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const/16 v5, 0xe01

    if-lt v0, v5, :cond_1

    const/16 v5, 0xe59

    if-gt v0, v5, :cond_1

    .line 338
    const/4 v1, 0x1

    goto :goto_1

    .line 340
    :cond_1
    const/4 v3, 0x0

    .line 345
    .end local v0           #c:C
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static judge([BII)V
    .locals 6
    .parameter "src"
    .parameter "srcOff"
    .parameter "srcLen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    const/16 v2, 0x7fff

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 109
    sput v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 114
    const/4 v2, 0x2

    if-lt p2, v2, :cond_0

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 121
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eqz v2, :cond_3

    .line 123
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 126
    .local v1, temp:I
    if-gez v1, :cond_1

    .line 128
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    add-int/lit16 v2, v2, 0x82

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 143
    .end local v0           #i:I
    .end local v1           #temp:I
    :cond_0
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int/2addr v2, v3

    const/16 v3, 0x81

    if-ge v2, v3, :cond_5

    .line 147
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-ne v2, v3, :cond_4

    .line 149
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 150
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 151
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 173
    :goto_1
    return-void

    .line 131
    .restart local v0       #i:I
    .restart local v1       #temp:I
    :cond_1
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    if-le v2, v1, :cond_2

    .line 133
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 135
    :cond_2
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    if-ge v2, v1, :cond_3

    .line 137
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 118
    .end local v1           #temp:I
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 161
    .end local v0           #i:I
    :cond_4
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 162
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 163
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    goto :goto_1

    .line 169
    :cond_5
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 170
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 171
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    goto :goto_1
.end method

.method public static stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 9
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_0

    move-object v2, v5

    .line 99
    :goto_0
    return-object v2

    .line 69
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 71
    .local v3, septets:I
    new-array v2, v3, [B

    .line 73
    .local v2, ret:[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {p0, v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v2           #ret:[B
    .end local v3           #septets:I
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 88
    .local v4, temp:[B
    array-length v6, v4

    div-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 89
    .restart local v2       #ret:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->judge([BII)V

    .line 90
    const/4 v6, 0x0

    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Lcom/android/internal/telephony/OppoGsmAlphabet;->ucs2ToAlphaField([BIII[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v2           #ret:[B
    .end local v4           #temp:[B
    :catch_1
    move-exception v1

    .line 95
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "unsurport encoding."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 96
    goto :goto_0
.end method

.method public static ucs2ToAlphaField([BIII[B)[B
    .locals 5
    .parameter "src"
    .parameter "srcOff"
    .parameter "srcLen"
    .parameter "destOff"
    .parameter "dest"

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, outOff:I
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    if-nez v3, :cond_3

    .line 183
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    if-eqz v3, :cond_1

    .line 185
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x3

    new-array p4, v3, [B

    .line 186
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 188
    const/16 v3, -0x7f

    aput-byte v3, p4, p3

    .line 190
    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v3, v3, 0x7f80

    sput v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 191
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 192
    add-int/lit8 v1, p3, 0x3

    .line 205
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 209
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-nez v3, :cond_2

    .line 211
    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    .line 221
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 205
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 194
    .end local v0           #i:I
    :cond_1
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    if-eqz v3, :cond_0

    .line 196
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array p4, v3, [B

    .line 197
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 199
    const/16 v3, -0x7e

    aput-byte v3, p4, p3

    .line 201
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 202
    add-int/lit8 v3, p3, 0x3

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 203
    add-int/lit8 v1, p3, 0x4

    goto :goto_0

    .line 217
    .restart local v0       #i:I
    :cond_2
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int v2, v3, v4

    .line 219
    .local v2, temp:I
    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    goto :goto_2

    .line 227
    .end local v0           #i:I
    .end local v2           #temp:I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    new-array p4, v3, [B

    .line 228
    const/16 v3, -0x80

    aput-byte v3, p4, p3

    .line 229
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    :cond_4
    return-object p4
.end method
