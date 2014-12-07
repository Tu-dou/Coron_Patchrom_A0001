.class Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;
.super Landroid/view/View;
.source "OppoSmartWakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoSmartWakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartWakeGestureView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoSmartWakeView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OppoSmartWakeView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSmartWakeView$SmartWakeGestureView;->this$0:Lcom/android/internal/policy/impl/OppoSmartWakeView;

    .line 119
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
