.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 248
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
