.class Lcom/android/server/wm/OppoAppTransition$2;
.super Ljava/lang/Object;
.source "OppoAppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
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
    .line 290
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition$2;->this$0:Lcom/android/server/wm/OppoAppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition$2;->this$0:Lcom/android/server/wm/OppoAppTransition;

    #setter for: Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I
    invoke-static {v0, v1}, Lcom/android/server/wm/OppoAppTransition;->access$002(Lcom/android/server/wm/OppoAppTransition;I)I

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition$2;->this$0:Lcom/android/server/wm/OppoAppTransition;

    #setter for: Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I
    invoke-static {v0, v1}, Lcom/android/server/wm/OppoAppTransition;->access$102(Lcom/android/server/wm/OppoAppTransition;I)I

    .line 307
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 300
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 295
    return-void
.end method
