.class public Lcom/android/internal/policy/impl/OppoSmartWakeView;
.super Ljava/lang/Object;
.source "OppoSmartWakeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;
    }
.end annotation


# static fields
.field private static final PERSIST_KEY:Ljava/lang/String; = "persist.sys.oppo.screenshot"

.field private static final TAG:Ljava/lang/String; = "OppoSmartWakeView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExManager:Landroid/os/IOppoExService;

.field private mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

.field private mIsShow:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mIsShow:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mExManager:Landroid/os/IOppoExService;

    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mIsShow:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mExManager:Landroid/os/IOppoExService;

    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 55
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const/16 v4, 0x588

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OppoSmartWakeView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mWM:Landroid/view/WindowManager;

    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;-><init>(Lcom/android/internal/policy/impl/OppoSmartWakeView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const-string v0, "OPPOExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mExManager:Landroid/os/IOppoExService;

    .line 76
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;->setVisibility(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->resumeDeliverPointerEvent()V

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mIsShow:Z

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v1}, Landroid/os/IOppoExService;->resumeExInputEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoSmartWakeView"

    const-string v2, "Failing resumeExInputEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mIsShow:Z

    return v0
.end method

.method public pauseDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "persist.sys.oppo.screenshot"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public resumeDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "persist.sys.oppo.screenshot"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mGestureView:Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->pauseDeliverPointerEvent()V

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mIsShow:Z

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v1}, Landroid/os/IOppoExService;->pauseExInputEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoSmartWakeView"

    const-string v2, "Failing pauseExInputEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
