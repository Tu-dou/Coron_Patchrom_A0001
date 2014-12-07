.class public Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "OppoIccPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field protected static final OPPO_EVENT_GET_ADN_FIELD_INFO_DONE:I = 0x66


# instance fields
.field protected mBaseHandler:Landroid/os/Handler;

.field private simNameLeng:I

.field private simNumberLeng:I

.field private simTotal:I

.field private simUsed:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 69
    new-instance v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNumberLeng:I

    .line 63
    return-void
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 287
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OppoIccPhoneBookInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 291
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OppoIccPhoneBookInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public oppoAddAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber1"
    .parameter "newPhoneNumber2"
    .parameter "pin2"
    .parameter "email"

    .prologue
    .line 116
    const/4 v6, -0x1

    .line 117
    .local v6, index:I
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v0, :cond_1

    .line 124
    const-string v0, "Add adn phonebook not ready"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 125
    const/4 v0, -0x1

    .line 154
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->checkThread()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 131
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 132
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 133
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v2, oldAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v3, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_5

    .line 137
    if-eqz p6, :cond_2

    .line 138
    invoke-virtual {v3, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber2(Ljava/lang/String;)V

    .line 139
    :cond_2
    if-eqz p8, :cond_3

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object/from16 v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->oppoUpdateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v6

    .line 142
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 147
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mSuccess:Z

    if-nez v0, :cond_4

    .line 150
    const-string v0, "oppoAddAdnRecordsInEfBySearchEx:Failed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 151
    const/4 v6, -0x1

    :cond_4
    move v0, v6

    .line 154
    goto :goto_0

    .line 145
    :cond_5
    :try_start_1
    const-string v0, "adnCache == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v2           #oldAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v7           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 4

    .prologue
    const/16 v3, 0x6f3a

    const/16 v2, 0x4f30

    .line 197
    const-string v0, "oppoGetSimPhonebookAllSpace"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v0, :cond_0

    .line 200
    const-string v0, "oppoGetSimPhonebookAllSpace: phonebook not ready"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 201
    const/4 v0, -0x1

    .line 226
    :goto_0
    return v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccPhoneBookInterfaceManager: oppoGetSimPhonebookAllSpace: simrecord_efid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    if-eq v0, v2, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_2

    .line 211
    iput v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    .line 215
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    .line 225
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oppoGetSimPhonebookAllSpace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 226
    iget v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    goto :goto_0

    .line 213
    :cond_2
    iput v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    goto :goto_1

    .line 222
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simTotal:I

    goto :goto_2
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 5

    .prologue
    .line 268
    const-string v2, "oppoGetSimPhonebookNameLength"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 270
    iget-boolean v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v2, :cond_0

    .line 271
    const-string v2, "oppoGetSimPhonebookNameLength: phonebook not ready"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 272
    const/4 v2, -0x1

    .line 283
    :goto_0
    return v2

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    if-gtz v2, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->checkThread()V

    .line 277
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 278
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v4, 0x6f3a

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->oppoGetADNFieldsInfo(ILandroid/os/Message;)V

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 282
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simNameLeng:I

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 6

    .prologue
    const/16 v5, 0x6f3a

    const/16 v4, 0x4f30

    .line 230
    const-string v2, "oppoGetSimPhonebookUsedSpace"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 232
    iget-boolean v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v2, :cond_0

    .line 233
    const-string v2, "oppoGetSimPhonebookUsedSpace: phonebook not ready"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 234
    const/4 v2, -0x1

    .line 264
    :goto_0
    return v2

    .line 239
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccPhoneBookInterfaceManager: oppoGetSimPhonebookUsedSpace: simrecord_efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 240
    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    if-eq v2, v4, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_3

    .line 244
    iput v4, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    .line 248
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    .line 252
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 255
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    .line 255
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_3
    iput v5, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simrecord_efid:I

    goto :goto_1

    .line 262
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oppoGetSimPhonebookUsedSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 264
    iget v2, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->simUsed:I

    goto :goto_0
.end method

.method public oppoUpdateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber1"
    .parameter "newPhoneNumber2"
    .parameter "index"
    .parameter "pin2"
    .parameter "email"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->phonebookReady:Z

    if-nez v0, :cond_1

    .line 169
    const-string v0, "update phonebook not ready."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v0, :cond_2

    .line 175
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->checkThread()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 182
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 183
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 184
    .local v6, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p1, p5, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v3, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz p4, :cond_3

    .line 187
    invoke-virtual {v3, p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber2(Ljava/lang/String;)V

    .line 188
    :cond_3
    if-eqz p7, :cond_4

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    move v1, p1

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->oppoUpdateAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 191
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 192
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-boolean v0, p0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 192
    .end local v3           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v6           #response:Landroid/os/Message;
    .end local v7           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
