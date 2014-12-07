.class Lcom/android/internal/app/OppoActionBarImpl$5;
.super Ljava/lang/Object;
.source "OppoActionBarImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/OppoActionBarImpl;->initScreenInfo()V
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
    .line 516
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl$5;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$5;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl$5;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$1100(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    #setter for: Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$1002(Lcom/android/internal/app/OppoActionBarImpl;I)I

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$5;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl$5;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$1100(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    #setter for: Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->access$1202(Lcom/android/internal/app/OppoActionBarImpl;I)I

    .line 522
    return-void
.end method
