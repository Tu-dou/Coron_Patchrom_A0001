.class Landroid/widget/OppoTranslateController$StartServiceListener;
.super Landroid/widget/OppoTranslateController$OnServiceListener;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoTranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method private constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$OnServiceListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 729
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$StartServiceListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method


# virtual methods
.method getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;
    .locals 1

    .prologue
    .line 738
    new-instance v0, Landroid/widget/OppoTranslateController$StartServiceListener$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoTranslateController$StartServiceListener$1;-><init>(Landroid/widget/OppoTranslateController$StartServiceListener;)V

    return-object v0
.end method

.method isShowPrompt()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x1

    return v0
.end method
