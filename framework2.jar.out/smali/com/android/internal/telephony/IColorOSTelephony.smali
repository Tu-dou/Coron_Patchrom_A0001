.class public interface abstract Lcom/android/internal/telephony/IColorOSTelephony;
.super Ljava/lang/Object;
.source "IColorOSTelephony.java"


# static fields
.field public static final COLOR_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final COLOR_CHANGE_ICC_LOCK_PWD:I = 0x271c

.field public static final COLOR_CHECK_4G:I = 0x271d

.field public static final COLOR_CLOSE_ICC_LOGICAL_CHANNEL:I = 0x2724

.field public static final COLOR_EMT_DIAL:I = 0x2712

.field public static final COLOR_EMT_ENABLE_ENGINEER:I = 0x2714

.field public static final COLOR_EMT_HUNGUP:I = 0x2713

.field public static final COLOR_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final COLOR_GET_ICC_LOCK_ENABLED:I = 0x271a

.field public static final COLOR_GET_ICC_PIN1_RTY_COUNT:I = 0x271e

.field public static final COLOR_GET_IS_3G_BUTTON:I = 0x2718

.field public static final COLOR_GET_LAST_ERROR:I = 0x2725

.field public static final COLOR_GET_PREFERRED_NETWORK_TYPE:I = 0x2716

.field public static final COLOR_GET_SC_ADDRESS:I = 0x271f

.field public static final COLOR_GET_SIM_INDICATOR_STATE:I = 0x2715

.field public static final COLOR_OPEN_ICC_LOGICAL_CHANNEL:I = 0x2723

.field public static final COLOR_QCOM_DUAL_CARD_DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.ITelephonyMSim"

.field public static final COLOR_SET_ICC_LOCK_ENABLED:I = 0x271b

.field public static final COLOR_SET_LIN1_NUMBER:I = 0x2719

.field public static final COLOR_SET_PREFERRED_NETWORK_TYPE:I = 0x2717

.field public static final COLOR_SET_SC_ADDRESS:I = 0x2720

.field public static final COLOR_SINGLE_CARD_DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field public static final COLOR_TRANSMIT_ICC_BASIC_CHANNEL:I = 0x2722

.field public static final COLOR_TRANSMIT_ICC_LOGICAL_CHANNEL:I = 0x2721

.field public static final COLOR_TRANSMIT_ICC_SIM_IO:I = 0x2726


# virtual methods
.method public abstract colorChangeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorCheckUsimIs4G(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorCloseIccLogicalChannel(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorEmtDial(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorEmtHungup(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorEnableEngineerTest(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorGetIccLockEnabled(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorGetIccPin1RetryCount(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorGetLastError(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorGetPreferredNetworkType(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorGetScAddressGemini(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorGetSimIndicatorState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorIs3GButtonEnable(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorOpenIccLogicalChannel(ILjava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorSetIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorSetLine1Number(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorSetPreferredNetworkType(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorSetScAddressGemini(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorTransmitIccBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorTransmitIccLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract colorTransmitIccSimIO(IIIIIILjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
