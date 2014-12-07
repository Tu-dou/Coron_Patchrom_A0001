.class Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OppoTranslateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateManagerService;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateManagerService;Lcom/oppo/translate/OppoTranslateManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;-><init>(Lcom/oppo/translate/OppoTranslateManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    .line 349
    .local v1, userId:I
    iget-object v4, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v4}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 350
    .local v0, retval:Z
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    const-string v3, "OppoTranslateManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- ignore this call back from a background user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 351
    return v0

    .end local v0           #retval:Z
    :cond_0
    move v0, v3

    .line 349
    goto :goto_0

    .restart local v0       #retval:Z
    :cond_1
    move v2, v3

    .line 350
    goto :goto_1
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 356
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v9

    if-nez v9, :cond_0

    .line 377
    :goto_0
    return v7

    .line 359
    :cond_0
    iget-object v9, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v9}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 360
    :try_start_0
    iget-object v10, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v10}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, curEngineId:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 362
    iget-object v10, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/translate/OppoTranslateInfo;

    .line 363
    .local v6, ti:Lcom/oppo/translate/OppoTranslateInfo;
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 364
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 365
    .local v5, pkg:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 366
    if-nez p4, :cond_2

    .line 367
    monitor-exit v9

    move v7, v8

    goto :goto_0

    .line 369
    :cond_2
    iget-object v7, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #calls: Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z
    invoke-static {v7}, Lcom/oppo/translate/OppoTranslateManagerService;->access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z

    .line 370
    monitor-exit v9

    move v7, v8

    goto :goto_0

    .line 364
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 376
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #ti:Lcom/oppo/translate/OppoTranslateInfo;
    :cond_4
    monitor-exit v9

    goto :goto_0

    .end local v1           #curEngineId:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public onSomePackagesChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    .line 382
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v8

    if-nez v8, :cond_0

    .line 444
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v8}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, curEngine:Lcom/oppo/translate/OppoTranslateInfo;
    :try_start_0
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v8}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, curEngineId:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 389
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v8}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/translate/OppoTranslateInfo;

    .line 390
    .local v6, ti:Lcom/oppo/translate/OppoTranslateInfo;
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, tiId:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 392
    move-object v2, v6

    .line 395
    :cond_2
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, change:I
    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 399
    :cond_3
    if-eq v0, v12, :cond_4

    if-ne v0, v13, :cond_1

    .line 401
    :cond_4
    const-string v8, "OppoTranslateManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Translate engine uninstalled, disabling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oppo/util/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/oppo/translate/OppoTranslateManagerService;->setEngineEnabledLocked(Ljava/lang/String;Z)Z
    invoke-static {v8, v10, v11}, Lcom/oppo/translate/OppoTranslateManagerService;->access$400(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 443
    .end local v0           #change:I
    .end local v3           #curEngineId:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #ti:Lcom/oppo/translate/OppoTranslateInfo;
    .end local v7           #tiId:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 408
    .restart local v3       #curEngineId:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    iget-object v10, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;
    invoke-static {v10}, Lcom/oppo/translate/OppoTranslateManagerService;->access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;

    move-result-object v10

    #calls: Lcom/oppo/translate/OppoTranslateManagerService;->buildEngineListLocked(Ljava/util/List;)V
    invoke-static {v8, v10}, Lcom/oppo/translate/OppoTranslateManagerService;->access$500(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/util/List;)V

    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, changed:Z
    if-eqz v2, :cond_7

    .line 413
    invoke-virtual {v2}, Lcom/oppo/translate/OppoTranslateInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 414
    .restart local v0       #change:I
    if-eq v0, v12, :cond_6

    if-ne v0, v13, :cond_7

    .line 416
    :cond_6
    const/4 v5, 0x0

    .line 418
    .local v5, si:Landroid/content/pm/ServiceInfo;
    :try_start_2
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v8}, Lcom/oppo/translate/OppoTranslateManagerService;->access$600(Lcom/oppo/translate/OppoTranslateManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-virtual {v2}, Lcom/oppo/translate/OppoTranslateInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #getter for: Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;
    invoke-static {v12}, Lcom/oppo/translate/OppoTranslateManagerService;->access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v12

    invoke-interface {v8, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 422
    :goto_2
    if-nez v5, :cond_7

    .line 425
    :try_start_3
    const-string v8, "OppoTranslateManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current translate engine removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oppo/util/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #calls: Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z
    invoke-static {v8}, Lcom/oppo/translate/OppoTranslateManagerService;->access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 427
    const/4 v1, 0x1

    .line 428
    const/4 v2, 0x0

    .line 434
    .end local v0           #change:I
    .end local v5           #si:Landroid/content/pm/ServiceInfo;
    :cond_7
    if-nez v2, :cond_8

    .line 437
    iget-object v8, p0, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->this$0:Lcom/oppo/translate/OppoTranslateManagerService;

    #calls: Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z
    invoke-static {v8}, Lcom/oppo/translate/OppoTranslateManagerService;->access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z

    move-result v1

    .line 440
    :cond_8
    if-eqz v1, :cond_9

    .line 443
    :cond_9
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 420
    .restart local v0       #change:I
    .restart local v5       #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v8

    goto :goto_2
.end method
