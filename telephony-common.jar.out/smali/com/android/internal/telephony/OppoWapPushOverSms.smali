.class public Lcom/android/internal/telephony/OppoWapPushOverSms;
.super Ljava/lang/Object;
.source "OppoWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private bundle:Landroid/os/Bundle;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for wappush, only for QCOM"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    .line 138
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 139
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/OppoWapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/OppoWapPushOverSms;)Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    return-object v0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 26
    .parameter "pdu"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for blacklist"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 161
    const/4 v11, 0x0

    .line 162
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v23, p1, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 163
    .local v20, transactionId:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v23, p1, v12

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 164
    .local v16, pduType:I
    const/4 v9, 0x0

    .line 166
    .local v9, headerLength:I
    const/16 v23, 0x6

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    const/16 v23, 0x7

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 169
    const/16 v23, 0x1

    .line 339
    :goto_0
    return v23

    .line 172
    :cond_0
    new-instance v23, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 182
    const/16 v23, 0x2

    goto :goto_0

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v9, v0

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int/lit8 v11, v23, 0x2

    .line 187
    move v10, v11

    .line 201
    .local v10, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v23

    if-nez v23, :cond_2

    .line 203
    const/16 v23, 0x2

    goto :goto_0

    .line 206
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v15

    .line 207
    .local v15, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    .line 208
    .local v4, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 210
    new-array v8, v9, [B

    .line 211
    .local v8, header:[B
    const/16 v23, 0x0

    array-length v0, v8

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v10, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    if-eqz v15, :cond_5

    const-string v23, "application/vnd.wap.coc"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 216
    move-object/from16 v14, p1

    .line 229
    .local v14, intentData:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    add-int v24, v11, v9

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v11, v0

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    .line 233
    .local v21, wapAppId:Ljava/lang/String;
    if-nez v21, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 237
    :cond_3
    if-nez v15, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, contentType:Ljava/lang/String;
    :goto_2
    const/16 v19, 0x1

    .line 243
    .local v19, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 245
    .local v22, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v22, :cond_7

    .line 276
    :cond_4
    :goto_3
    if-nez v19, :cond_9

    .line 277
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 218
    .end local v6           #contentType:Ljava/lang/String;
    .end local v14           #intentData:[B
    .end local v19           #processFurther:Z
    .end local v21           #wapAppId:Ljava/lang/String;
    .end local v22           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_5
    add-int v7, v10, v9

    .line 219
    .local v7, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v7

    move/from16 v0, v23

    new-array v14, v0, [B

    .line 220
    .restart local v14       #intentData:[B
    const/16 v23, 0x0

    array-length v0, v14

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v7, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .end local v7           #dataIndex:I
    .restart local v21       #wapAppId:Ljava/lang/String;
    :cond_6
    move-object v6, v15

    .line 237
    goto :goto_2

    .line 248
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v19       #processFurther:Z
    .restart local v22       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_7
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v13, intent:Landroid/content/Intent;
    const-string v23, "transactionId"

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v23, "pduType"

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v23, "header"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 252
    const-string v23, "data"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 253
    const-string v23, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 255
    const-string v23, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 264
    const-string v23, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "address"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v23, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "service_center"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6, v13}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    .line 271
    .local v18, procRet:I
    and-int/lit8 v23, v18, 0x1

    if-lez v23, :cond_4

    const v23, 0x8000

    and-int v23, v23, v18

    if-nez v23, :cond_4

    .line 273
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 279
    .end local v13           #intent:Landroid/content/Intent;
    .end local v18           #procRet:I
    .end local v22           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v23

    .line 285
    .end local v6           #contentType:Ljava/lang/String;
    .end local v19           #processFurther:Z
    .end local v21           #wapAppId:Ljava/lang/String;
    :cond_9
    if-nez v15, :cond_a

    .line 287
    const/16 v23, 0x2

    goto/16 :goto_0

    .line 293
    :cond_a
    const-string v23, "application/vnd.wap.mms-message"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 294
    const-string v17, "android.permission.RECEIVE_MMS"

    .line 295
    .local v17, permission:Ljava/lang/String;
    const/16 v3, 0x12

    .line 305
    .local v3, appOp:I
    :goto_4
    new-instance v13, Landroid/content/Intent;

    const-string v23, "android.intent.action.NEW_WAPPUSH_TO_BLACKLIST"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v23, "mimeType"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v23, "transactionId"

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v23, "pduType"

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v23, "header"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 315
    const-string v23, "data"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 316
    const-string v23, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 317
    const-string v23, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 324
    const-string v23, "WAP PUSH"

    const-string v24, "put addr info into intent 2"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v23, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "address"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v23, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "service_center"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchToBlackList(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 339
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 297
    .end local v3           #appOp:I
    .end local v13           #intent:Landroid/content/Intent;
    .end local v17           #permission:Ljava/lang/String;
    :cond_c
    const-string v17, "android.permission.RECEIVE_WAP_PUSH"

    .line 298
    .restart local v17       #permission:Ljava/lang/String;
    const/16 v3, 0x13

    .restart local v3       #appOp:I
    goto/16 :goto_4
.end method

.method public dispatchWapPdu([BLandroid/os/Bundle;)I
    .locals 3
    .parameter "pdu"
    .parameter "extra"

    .prologue
    .line 349
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispathchWapPdu!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "service_center"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OppoWapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method
