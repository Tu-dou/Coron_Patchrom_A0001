.class abstract Landroid/widget/OppoTranslateController$OnAskListener;
.super Lcom/oppo/translate/IOppoTranslateAskListener$Stub;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoTranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnAskListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method private constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnAskListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateAskListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 684
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$OnAskListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method


# virtual methods
.method initWindow()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public onAskResult(Z)V
    .locals 1
    .parameter "accept"

    .prologue
    .line 688
    if-eqz p1, :cond_1

    .line 689
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController$OnAskListener;->initWindow()V

    .line 690
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController$OnAskListener;->updateOnAccept()V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnAskListener;->this$0:Landroid/widget/OppoTranslateController;

    #calls: Landroid/widget/OppoTranslateController;->isWindowShowing()Z
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$700(Landroid/widget/OppoTranslateController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnAskListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-virtual {v0}, Landroid/widget/OppoTranslateController;->onDismiss()V

    goto :goto_0
.end method

.method updateOnAccept()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method
