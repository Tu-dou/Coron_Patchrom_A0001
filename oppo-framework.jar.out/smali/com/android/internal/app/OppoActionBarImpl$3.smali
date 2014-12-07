.class Lcom/android/internal/app/OppoActionBarImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl$3;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$3;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$200(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$3;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/OppoActionBarImpl;->resizeScreenLayout(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$300(Lcom/android/internal/app/OppoActionBarImpl;Z)V

    .line 168
    return-void
.end method
