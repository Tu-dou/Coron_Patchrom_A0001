.class public Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;
    }
.end annotation


# static fields
.field public static final GESTURE_CIRCLE:I = 0x6

.field public static final GESTURE_DOUBLE_SWIP:I = 0x7

.field public static final GESTURE_DOUBLE_TAP:I = 0x1

.field public static final GESTURE_DOWN_TO_UP_SWIP:I = 0xb

.field public static final GESTURE_DOWN_VEE:I = 0x3

.field public static final GESTURE_LEFT_TO_RIGHT_SWIP:I = 0x8

.field public static final GESTURE_LEFT_VEE:I = 0x4

.field public static final GESTURE_M:I = 0xc

.field public static final GESTURE_RIGHT_TO_LEFT_SWIP:I = 0x9

.field public static final GESTURE_RIGHT_VEE:I = 0x5

.field public static final GESTURE_UP_TO_DOWN_SWIP:I = 0xa

.field public static final GESTURE_UP_VEE:I = 0x2

.field public static final GESTURE_W:I = 0xd

.field public static final MSG_SCREEN_TURNED_OFF:I = 0x2711

.field public static final MSG_SCREEN_TURNING_ON:I = 0x2710

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_TIME_CPU_LOCK:I = 0x3e8


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field private mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

.field private mAnimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mExManager:Landroid/os/IOppoExService;

.field private mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

.field private mHandler:Landroid/os/Handler;

.field private mIsInOffHook:Z

.field private mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "OppoScreenOffGestureManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager$WakeLock;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "keyguardMediator"
    .parameter "broadcastWakeLock"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 53
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 92
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    .line 245
    new-instance v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 99
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "OppoScreenOffGestureManager.mAnimCpuLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    new-instance v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    .line 107
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    .local v0, telephoneManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 110
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    return p1
.end method

.method private dealExScreenOffGesture(I)V
    .locals 4
    .parameter "nGesture"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 218
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 221
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoScreenOffGestureManager  dealScreenoffGesture nGesture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mExManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v1, p1}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing dealScreenoffGesture"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private gestureTosString(I)Ljava/lang/String;
    .locals 1
    .parameter "nGesture"

    .prologue
    .line 165
    const-string v0, ""

    .line 166
    .local v0, strGesture:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    const-string v0, "GESTURE_DOUBLE_TAP"

    .line 169
    goto :goto_0

    .line 171
    :pswitch_1
    const-string v0, "GESTURE_UP_VEE"

    .line 172
    goto :goto_0

    .line 174
    :pswitch_2
    const-string v0, "GESTURE_DOWN_VEE"

    .line 175
    goto :goto_0

    .line 177
    :pswitch_3
    const-string v0, "GESTURE_LEFT_VEE"

    .line 178
    goto :goto_0

    .line 180
    :pswitch_4
    const-string v0, "GESTURE_RIGHT_VEE"

    .line 181
    goto :goto_0

    .line 183
    :pswitch_5
    const-string v0, "GESTURE_CIRCLE"

    .line 184
    goto :goto_0

    .line 186
    :pswitch_6
    const-string v0, "GESTURE_DOUBLE_SWIP"

    .line 187
    goto :goto_0

    .line 189
    :pswitch_7
    const-string v0, "GESTURE_LEFT_TO_RIGHT_SWIP"

    .line 190
    goto :goto_0

    .line 192
    :pswitch_8
    const-string v0, "GESTURE_RIGHT_TO_LEFT_SWIP"

    .line 193
    goto :goto_0

    .line 195
    :pswitch_9
    const-string v0, "GESTURE_UP_TO_DOWN_SWIP"

    .line 196
    goto :goto_0

    .line 198
    :pswitch_a
    const-string v0, "GESTURE_DOWN_TO_UP_SWIP"

    .line 199
    goto :goto_0

    .line 201
    :pswitch_b
    const-string v0, "GESTURE_M"

    .line 202
    goto :goto_0

    .line 204
    :pswitch_c
    const-string v0, "GESTURE_W"

    .line 205
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private isGestureExist(I)Z
    .locals 5
    .parameter "nGesture"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, isGestureExist:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v2, :cond_0

    .line 232
    const-string v2, "OPPOExService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 237
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v2, p1}, Landroid/os/IOppoExService;->getGestureState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoScreenOffGestureManager isGestureExist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v3, "Failing getGestureState"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I
    .locals 6
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 115
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 116
    .local v0, down:Z
    :goto_0
    const v3, -0x40000001

    and-int/2addr p2, v3

    .line 117
    if-eqz p3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    if-nez v3, :cond_2

    .line 118
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "-----  return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_1
    return p2

    .line 115
    .end local v0           #down:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    .restart local v0       #down:Z
    :cond_2
    const/16 v3, 0x86

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    iget v2, v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    .line 124
    .local v2, nGesture:I
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 130
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealScreenOffGesture is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->gestureTosString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealExScreenOffGesture(I)V

    goto :goto_1
.end method

.method isGestureDoubleTap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    iget v1, v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInOffHook()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenoffGestureKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 213
    const/16 v0, 0x86

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method screenTurnedOff(I)V
    .locals 3
    .parameter "why"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 141
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 145
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    const/16 v2, 0x2711

    invoke-interface {v1, v2}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing screenTurnedOff"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method screenTurningOn()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 153
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 157
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    const/16 v2, 0x2710

    invoke-interface {v1, v2}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing screenTurningOn"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateGestureInfo()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->updateGestureInfo()V

    .line 278
    return-void
.end method
