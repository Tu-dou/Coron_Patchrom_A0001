.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;
.super Landroid/telephony/PhoneStateListener;
.source "OppoPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x0

    .line 2014
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 2015
    packed-switch p1, :pswitch_data_0

    .line 2027
    :goto_0
    :pswitch_0
    return-void

    .line 2017
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$702(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    goto :goto_0

    .line 2022
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$702(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    goto :goto_0

    .line 2015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
