.class public interface abstract Lcom/android/internal/telephony/IOppoTelephony;
.super Ljava/lang/Object;
.source "IOppoTelephony.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final OPPO_CHANGE_ICC_LOCK_PWD:I = 0x2717

.field public static final OPPO_CLOSE_ICC_LOGICAL_CHANNEL:I = 0x2722

.field public static final OPPO_EMT_DIAL:I = 0x2712

.field public static final OPPO_EMT_ENABLE_ENGINEER:I = 0x2714

.field public static final OPPO_EMT_HUNGUP:I = 0x2713

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final OPPO_GET_AUDIO_RECORD_STATE:I = 0x2725

.field public static final OPPO_GET_ICC_LOCK_ENABLED:I = 0x2715

.field public static final OPPO_GET_ICC_PIN1_RTY_COUNT:I = 0x2719

.field public static final OPPO_GET_LAST_ERROR:I = 0x2723

.field public static final OPPO_GET_PREFERRED_NETWORK_TYPE:I = 0x271c

.field public static final OPPO_GET_SC_ADDRESS:I = 0x271a

.field public static final OPPO_GET_SIM_INDICATOR_STATE:I = 0x271e

.field public static final OPPO_GET_SIM_INDICATOR_STATE_GEMINI:I = 0x2726

.field public static final OPPO_IS_DIALING:I = 0x2718

.field public static final OPPO_OPEN_ICC_LOGICAL_CHANNEL:I = 0x2721

.field public static final OPPO_SET_ICC_LOCK_ENABLED:I = 0x2716

.field public static final OPPO_SET_PREFERRED_NETWORK_TYPE:I = 0x271d

.field public static final OPPO_SET_SC_ADDRESS:I = 0x271b

.field public static final OPPO_TRANSMIT_ICC_BASIC_CHANNEL:I = 0x2720

.field public static final OPPO_TRANSMIT_ICC_LOGICAL_CHANNEL:I = 0x271f

.field public static final OPPO_TRANSMIT_ICC_SIM_IO:I = 0x2724


# virtual methods
.method public abstract emtDial(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract emtHungup(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableEngineerTest(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getScAddressGemini(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract oppoGetIccLockEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract oppoGetIccPin1RetryCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract oppoIsDialing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScAddressGemini(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
