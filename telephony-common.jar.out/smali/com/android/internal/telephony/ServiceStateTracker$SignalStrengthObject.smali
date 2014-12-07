.class Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalStrengthObject"
.end annotation


# instance fields
.field public cursignal:Landroid/telephony/SignalStrength;

.field public curvalue:I

.field public isLte:Z

.field public prevalue:I

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/telephony/SignalStrength;IZ)V
    .locals 1
    .parameter
    .parameter "cursignalstrength"
    .parameter "oldsignalvalue"
    .parameter "isLte"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->isLte:Z

    .line 1026
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->cursignal:Landroid/telephony/SignalStrength;

    .line 1027
    iput p3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->prevalue:I

    .line 1028
    iput-boolean p4, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->isLte:Z

    .line 1029
    if-eqz p4, :cond_0

    .line 1030
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    add-int/lit16 v0, v0, 0x8c

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->curvalue:I

    .line 1035
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->curvalue:I

    goto :goto_0
.end method


# virtual methods
.method public genSignalStrength()Landroid/telephony/SignalStrength;
    .locals 3

    .prologue
    .line 1037
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1038
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->cursignal:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1042
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->isLte:Z

    if-nez v1, :cond_0

    .line 1043
    const-string v1, "GsmSignalStrength"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->prevalue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    :goto_0
    invoke-static {v0}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    return-object v1

    .line 1045
    :cond_0
    const-string v1, "LteRsrp"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->prevalue:I

    add-int/lit16 v2, v2, -0x8c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
