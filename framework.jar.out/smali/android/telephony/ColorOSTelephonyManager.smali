.class public Landroid/telephony/ColorOSTelephonyManager;
.super Ljava/lang/Object;
.source "ColorOSTelephonyManager.java"

# interfaces
.implements Landroid/telephony/IColorOSTelephony;


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of ColorOSTelephonyManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorOSTelephonyManager"

.field private static isQcomGeminiSupport:Z

.field private static mContext:Landroid/content/Context;

.field private static final sInstance:Landroid/telephony/ColorOSTelephonyManager;

.field private static vDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/telephony/ColorOSTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/ColorOSTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    .line 50
    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 52
    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oppo.qualcomm.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 68
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    sput-object p0, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 58
    :cond_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->initRemoteService()V

    .line 60
    sget-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 531
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 526
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getMTKsupportGeminiFlag()Z
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 107
    .local v0, vRet:Z
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 110
    :cond_0
    return v0
.end method

.method private getRemoteServiceBinder()Landroid/os/IBinder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 629
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v3

    sput-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 631
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v3, v4, :cond_1

    .line 632
    const/4 v2, 0x1

    .line 638
    .local v2, vType:I
    :goto_0
    if-ne v4, v2, :cond_2

    .line 639
    const/4 v1, 0x1

    .line 640
    .local v1, vDebugType:I
    const-string/jumbo v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 651
    .local v0, mRemote:Landroid/os/IBinder;
    :goto_1
    if-nez v0, :cond_0

    .line 652
    const-string v3, "ColorOSTelephonyManager"

    const-string v4, "***********************************"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v3, "ColorOSTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorOSTelephonyManager is NULL !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v3, "ColorOSTelephonyManager"

    const-string v4, "***********************************"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    .line 658
    .end local v0           #mRemote:Landroid/os/IBinder;
    :cond_0
    return-object v0

    .line 635
    .end local v1           #vDebugType:I
    .end local v2           #vType:I
    :cond_1
    const/4 v2, 0x2

    .restart local v2       #vType:I
    goto :goto_0

    .line 642
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 643
    const/4 v1, 0x2

    .line 644
    .restart local v1       #vDebugType:I
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #mRemote:Landroid/os/IBinder;
    goto :goto_1

    .line 647
    .end local v0           #mRemote:Landroid/os/IBinder;
    .end local v1           #vDebugType:I
    :cond_3
    const/4 v1, 0x3

    .line 648
    .restart local v1       #vDebugType:I
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #mRemote:Landroid/os/IBinder;
    goto :goto_1
.end method

.method private static initRemoteService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 75
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 82
    .local v0, vType:I
    :goto_0
    if-ne v2, v0, :cond_1

    .line 83
    const-string v1, "com.android.internal.telephony.msim.ITelephonyMSim"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    .line 91
    :goto_1
    return-void

    .line 79
    .end local v0           #vType:I
    :cond_0
    const/4 v0, 0x2

    .restart local v0       #vType:I
    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 86
    const-string v1, "com.android.internal.telephony.ITelephony"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_2
    const-string v1, "com.android.internal.telephony.ITelephony"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    goto :goto_1
.end method

.method public static innerGetQcomDualCard()Z
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    .line 96
    .local v0, vRet:Z
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.qualcomm.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 99
    :cond_0
    return v0
.end method


# virtual methods
.method public answerRingingCallGemini(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 588
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 589
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->endCall(I)Z

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 594
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 597
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public colorChangeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "subscription"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 914
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 915
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 919
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    if-eqz p4, :cond_0

    .line 925
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 932
    :goto_0
    const/16 v4, 0x271c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 942
    :goto_1
    return-void

    .line 929
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v2

    .line 936
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorChangeIccLockPassword ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 939
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorCheckUsimIs4G(I)Z
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 946
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 948
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 951
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/16 v5, 0x271d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 962
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    :goto_0
    return v2

    .line 957
    .end local v2           #_result:Z
    :catch_0
    move-exception v3

    .line 958
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorCheckUsimIs4G ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    const/4 v2, 0x0

    .line 962
    .restart local v2       #_result:Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 962
    .end local v2           #_result:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorCloseIccLogicalChannel(II)Z
    .locals 8
    .parameter "subscription"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1140
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1143
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    const/16 v5, 0x2724

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 1155
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    :goto_0
    return v2

    .line 1150
    .end local v2           #_result:Z
    :catch_0
    move-exception v3

    .line 1151
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorCloseIccLogicalChannel ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    const/4 v2, 0x0

    .line 1155
    .restart local v2       #_result:Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1155
    .end local v2           #_result:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorEmtDial(ILjava/lang/String;)V
    .locals 7
    .parameter "subscription"
    .parameter "telNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 663
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 664
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 667
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    const/16 v4, 0x2712

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorEmtDial ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 677
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorEmtHungup(ILjava/lang/String;)V
    .locals 7
    .parameter "subscription"
    .parameter "telNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 684
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 685
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 688
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 691
    const/16 v4, 0x2713

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorEmtHungup ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 698
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorEnableEngineerTest(IZ)V
    .locals 7
    .parameter "subscription"
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 705
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 706
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 709
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/16 v4, 0x2714

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v2

    .line 716
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorEnableEngineerTest ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 719
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorGetDataSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1355
    .local v1, _reply:Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 1356
    .local v2, _result:I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1358
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1359
    const/4 v5, -0x1

    .line 1386
    :goto_0
    return v5

    .line 1362
    :cond_0
    if-nez v4, :cond_1

    .line 1364
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1365
    const/16 v5, 0x272c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move v5, v2

    .line 1386
    goto :goto_0

    .line 1369
    :catch_0
    move-exception v3

    .line 1370
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetDataSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    const/4 v2, -0x1

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1374
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 1380
    :cond_1
    :try_start_2
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "multi_sim_data_call"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_1

    .line 1382
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public colorGetDefaultDataSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1393
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1397
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1398
    const/16 v5, 0x272c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1407
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    :goto_0
    return v2

    .line 1402
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1403
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetDefaultDataSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1404
    const/4 v2, -0x1

    .line 1407
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1407
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetDefaultSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1298
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1300
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1302
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1303
    const/4 v2, -0x1

    .line 1321
    :goto_0
    return v2

    .line 1307
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    const/16 v5, 0x272a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1317
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1312
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1313
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    const/4 v2, -0x1

    .line 1317
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1317
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccCardTypeGemini(I)Ljava/lang/String;
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1570
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1572
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1574
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1575
    const/4 v2, 0x0

    .line 1593
    :goto_0
    return-object v2

    .line 1579
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/16 v5, 0x2736

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1582
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1590
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1585
    .end local v2           #_result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1586
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1587
    const/4 v2, 0x0

    .line 1590
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1590
    .end local v2           #_result:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccCardTypeGeminiGlobal(I)Ljava/lang/String;
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1626
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1628
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1630
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1631
    const/4 v2, 0x0

    .line 1649
    :goto_0
    return-object v2

    .line 1635
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/16 v5, 0x2738

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1646
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1641
    .end local v2           #_result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1642
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccCardTypeGeminiGlobal ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1643
    const/4 v2, 0x0

    .line 1646
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1646
    .end local v2           #_result:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccLockEnabled(I)Z
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 859
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 861
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 865
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/16 v5, 0x271a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 876
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    :goto_0
    return v2

    .line 871
    .end local v2           #_result:Z
    :catch_0
    move-exception v3

    .line 872
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccLockEnabled ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    const/4 v2, 0x0

    .line 876
    .restart local v2       #_result:Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 876
    .end local v2           #_result:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccPin1RetryCount(I)I
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 970
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 976
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    const/16 v5, 0x271e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 987
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 991
    :goto_0
    return v2

    .line 982
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 983
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccPin1RetryCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    const/4 v2, -0x1

    .line 987
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 987
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetInterfaceReserve1(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1709
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetInterfaceReserve2(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1713
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetInterfaceReserve3(I)I
    .locals 6
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1720
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1722
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1725
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    const/16 v4, 0x273d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1732
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    return v2

    .line 1732
    .end local v2           #_result:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorGetInterfaceReserve4(I)I
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1740
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetLastError(I)I
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1163
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1165
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1168
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    const/16 v5, 0x2725

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1179
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1182
    :goto_0
    return v2

    .line 1174
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1175
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetLastError ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    const/4 v2, -0x1

    .line 1179
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1179
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPreferredNetworkType(I)I
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 759
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 762
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    const/16 v5, 0x2716

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 773
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    :goto_0
    return v2

    .line 768
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 769
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetPreferredNetworkType ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    const/4 v2, -0x1

    .line 773
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 773
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPrioritySubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1441
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1443
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1446
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1447
    const/16 v5, 0x2730

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1456
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1460
    :goto_0
    return v2

    .line 1451
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1452
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1453
    const/4 v2, -0x1

    .line 1456
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1456
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomActiveSubscriptionsCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1245
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1247
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1249
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1250
    const/4 v2, -0x1

    .line 1269
    :goto_0
    return v2

    .line 1255
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1256
    const/16 v5, 0x2728

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1265
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1260
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1261
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1262
    const/4 v2, -0x1

    .line 1265
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1265
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomImeiGemini(I)Ljava/lang/String;
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1654
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1656
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1658
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1659
    const/4 v2, 0x0

    .line 1677
    :goto_0
    return-object v2

    .line 1663
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    const/16 v5, 0x2739

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1667
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1674
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1669
    .end local v2           #_result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1670
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomImeiGemini ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    const/4 v2, 0x0

    .line 1674
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1674
    .end local v2           #_result:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomLTECDMAImei(I)[Ljava/lang/String;
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1682
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1684
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1686
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1687
    const/4 v2, 0x0

    .line 1705
    :goto_0
    return-object v2

    .line 1691
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    const/16 v5, 0x273a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1702
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1697
    .end local v2           #_result:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1698
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomLTECDMAImei ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    const/4 v2, 0x0

    .line 1702
    .restart local v2       #_result:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1702
    .end local v2           #_result:[Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSMSSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1416
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1418
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1422
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1423
    const/16 v5, 0x272f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1432
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    :goto_0
    return v2

    .line 1427
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1428
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetSMSSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    const/4 v2, -0x1

    .line 1432
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1432
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetScAddressGemini(II)Ljava/lang/String;
    .locals 8
    .parameter "subscription"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 996
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1000
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1001
    const/4 v2, 0x0

    .line 1021
    :goto_0
    return-object v2

    .line 1006
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/16 v5, 0x271f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1018
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1013
    .end local v2           #_result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1014
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetScAddressGemini ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    const/4 v2, 0x0

    .line 1018
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1018
    .end local v2           #_result:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSimIndicatorState(I)I
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 726
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 728
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 732
    .local v4, mRemote:Landroid/os/IBinder;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v5

    if-nez v5, :cond_0

    .line 752
    :goto_0
    return v2

    .line 738
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/16 v5, 0x2715

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 749
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 744
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 745
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetSimIndicatorState ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    const/4 v2, -0x1

    .line 749
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 749
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetVoiceSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1326
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1328
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1330
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1331
    const/4 v2, -0x1

    .line 1349
    :goto_0
    return v2

    .line 1335
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1336
    const/16 v5, 0x272b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1345
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1340
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1341
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetVoiceSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    const/4 v2, -0x1

    .line 1345
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1345
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIs3GButtonEnable(I)Z
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 806
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 808
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 811
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/16 v5, 0x2718

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 822
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    :goto_0
    return v2

    .line 817
    .end local v2           #_result:Z
    :catch_0
    move-exception v3

    .line 818
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIs3GButtonEnable ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    const/4 v2, 0x0

    .line 822
    .restart local v2       #_result:Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 822
    .end local v2           #_result:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIsQcomSubActive(I)Z
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1217
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1219
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1221
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1240
    :goto_0
    return v2

    .line 1226
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    const/16 v5, 0x2727

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1237
    .local v2, _result:Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1232
    .end local v2           #_result:Z
    :catch_0
    move-exception v3

    .line 1233
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIsQcomSubActive ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    const/4 v2, 0x0

    .line 1237
    .restart local v2       #_result:Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1237
    .end local v2           #_result:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorOpenIccLogicalChannel(ILjava/lang/String;)[I
    .locals 8
    .parameter "subscription"
    .parameter "AID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1113
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1115
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1118
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1121
    const/16 v5, 0x2723

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1130
    .local v2, _result:[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    :goto_0
    return-object v2

    .line 1125
    .end local v2           #_result:[I
    :catch_0
    move-exception v3

    .line 1126
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorOpenIccLogicalChannel ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    const/4 v2, 0x0

    .line 1130
    .restart local v2       #_result:[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1130
    .end local v2           #_result:[I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetDataSubscription(I)V
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1486
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1488
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1491
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    const/16 v4, 0x2732

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1503
    :goto_0
    return-void

    .line 1496
    :catch_0
    move-exception v2

    .line 1497
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetDataSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1500
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetDefaultDataSubscription(I)V
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1507
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1509
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1512
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    const/16 v4, 0x2733

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1524
    :goto_0
    return-void

    .line 1517
    :catch_0
    move-exception v2

    .line 1518
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetDefaultDataSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1521
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetDefaultSubscription(I)V
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1274
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1275
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1277
    .local v3, mRemote:Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1282
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    const/16 v4, 0x2729

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v2

    .line 1288
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1291
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "subscription"
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 884
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 888
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    if-eqz p4, :cond_1

    .line 894
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 900
    :goto_1
    const/16 v4, 0x271b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 910
    :goto_2
    return-void

    :cond_0
    move v4, v5

    .line 890
    goto :goto_0

    .line 898
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 903
    :catch_0
    move-exception v2

    .line 904
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetIccLockEnabled ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 907
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetLine1Number(ILjava/lang/String;)Z
    .locals 8
    .parameter "subscription"
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 830
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 832
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 834
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 854
    :goto_0
    return v2

    .line 839
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    const/16 v5, 0x2719

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 851
    .local v2, _result:Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 846
    .end local v2           #_result:Z
    :catch_0
    move-exception v3

    .line 847
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetLine1Number ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    const/4 v2, 0x0

    .line 851
    .restart local v2       #_result:Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 851
    .end local v2           #_result:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPreferredNetworkType(II)I
    .locals 8
    .parameter "subscription"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 781
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 783
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 786
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/16 v5, 0x2717

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 798
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    :goto_0
    return v2

    .line 793
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 794
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPreferredNetworkType ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    const/4 v2, -0x1

    .line 798
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 798
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPrioritySubscription(I)V
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1549
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1551
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1554
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    const/16 v4, 0x2735

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    :goto_0
    return-void

    .line 1559
    :catch_0
    move-exception v2

    .line 1560
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1563
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetSMSSubscription(I)V
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1528
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1530
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1533
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    const/16 v4, 0x2734

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    :goto_0
    return-void

    .line 1538
    :catch_0
    move-exception v2

    .line 1539
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetSMSSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1542
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetScAddressGemini(ILjava/lang/String;I)V
    .locals 7
    .parameter "subscription"
    .parameter "scAddr"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1026
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1027
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1029
    .local v3, mRemote:Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1034
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    const/16 v4, 0x2720

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v2

    .line 1042
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetScAddressGemini ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1045
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetVoiceSubscription(I)V
    .locals 7
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1465
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1467
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1470
    .local v3, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    const/16 v4, 0x2731

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1482
    :goto_0
    return-void

    .line 1475
    :catch_0
    move-exception v2

    .line 1476
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetVoiceSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1479
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorTransmitIccBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "subscription"
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1085
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1088
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    const/16 v5, 0x2722

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1105
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    :goto_0
    return-object v2

    .line 1100
    .end local v2           #_result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1101
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorTransmitIccBasicChannel ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    const/4 v2, 0x0

    .line 1105
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1105
    .end local v2           #_result:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorTransmitIccLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "subscription"
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1052
    .local v1, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1054
    .local v2, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1057
    .local v5, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1066
    const/16 v6, 0x2721

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1067
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1068
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1075
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    :goto_0
    return-object v3

    .line 1070
    .end local v3           #_result:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1071
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ColorOSTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "colorTransmitIccLogicalChannel ERROR !!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    const/4 v3, 0x0

    .line 1075
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1075
    .end local v3           #_result:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public colorTransmitIccSimIO(IIIIIILjava/lang/String;)[B
    .locals 8
    .parameter "subscription"
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1187
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1189
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1192
    .local v4, mRemote:Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1200
    const/16 v5, 0x2726

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1209
    .local v2, _result:[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    :goto_0
    return-object v2

    .line 1204
    .end local v2           #_result:[B
    :catch_0
    move-exception v3

    .line 1205
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorTransmitIccSimIO ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    const/4 v2, 0x0

    .line 1209
    .restart local v2       #_result:[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1209
    .end local v2           #_result:[B
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorgetSIMInfoBySlot(I)I
    .locals 8
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1598
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1600
    .local v1, _reply:Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1602
    .local v4, mRemote:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1603
    const/4 v2, -0x1

    .line 1621
    :goto_0
    return v2

    .line 1607
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    const/16 v5, 0x2737

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1618
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1613
    .end local v2           #_result:I
    :catch_0
    move-exception v3

    .line 1614
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1615
    const/4 v2, -0x1

    .line 1618
    .restart local v2       #_result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1618
    .end local v2           #_result:I
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public endCallGemini(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 537
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 538
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->endCall(I)Z

    move-result v1

    .line 549
    :cond_0
    :goto_0
    return v1

    .line 540
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 544
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 548
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 549
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallStateGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 130
    const/4 v0, -0x1

    .line 132
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 133
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPhoneTypeGemini(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 476
    const/4 v0, -0x1

    .line 478
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 479
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 485
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getDataActivityGemini(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 460
    const/4 v0, -0x1

    .line 462
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 463
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v0

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public getDataNetworkTypeGemini(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 492
    const/4 v0, -0x1

    .line 494
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 495
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 501
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getDataStateGemini(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 444
    const/4 v0, -0x1

    .line 446
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 447
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v0

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 453
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 245
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 251
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 377
    const-string v0, ""

    .line 379
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 381
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 165
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 396
    const-string v0, ""

    .line 398
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 399
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 412
    const-string v0, ""

    .line 414
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 415
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 421
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 210
    const/4 v0, -0x1

    .line 212
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 213
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 219
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 428
    const-string v0, ""

    .line 430
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 431
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 437
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 508
    const-string v0, ""

    .line 510
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 511
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimStateGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 178
    const/4 v0, -0x1

    .line 180
    .local v0, vRet:I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 181
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 348
    :cond_0
    return-object v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 335
    :cond_0
    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 117
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 149
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasIccCardGemini(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, vRet:Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 197
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 203
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, vRet:Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 296
    :cond_0
    return v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, vRet:Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 283
    :cond_0
    return v0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, vRet:Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 229
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 235
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 322
    :cond_0
    return-object v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, vRet:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 309
    :cond_0
    return-object v0
.end method

.method public isRingingGemini(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 603
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 604
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRinging(I)Z

    move-result v1

    .line 615
    :cond_0
    :goto_0
    return v1

    .line 606
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 610
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 614
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 615
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, vRet:Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .parameter "listener"
    .parameter "events"
    .parameter "simId"

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 259
    sget-object v2, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone_msim"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MSimTelephonyManager;

    .line 260
    .local v1, mTelephonyManager:Landroid/telephony/MSimTelephonyManager;
    iput p3, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    .line 261
    invoke-virtual {v1, p1, p2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 271
    .end local v1           #mTelephonyManager:Landroid/telephony/MSimTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 268
    sget-object v2, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 269
    .local v0, mSingTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public showCallScreenGemini(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 555
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 556
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->showCallScreen()Z

    move-result v1

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 558
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 562
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 566
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 567
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public silenceRingerGemini(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 573
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 574
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->silenceRinger()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 579
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0

    .line 582
    :catch_1
    move-exception v0

    goto :goto_0
.end method
