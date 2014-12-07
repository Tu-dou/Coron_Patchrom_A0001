.class Lcom/android/server/wm/OppoAppTransition$1;
.super Ljava/lang/Object;
.source "OppoAppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OppoAppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OppoAppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OppoAppTransition;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition$1;->this$0:Lcom/android/server/wm/OppoAppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    const/high16 v1, 0x3e80

    .line 103
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 104
    div-float v0, p1, v1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method
