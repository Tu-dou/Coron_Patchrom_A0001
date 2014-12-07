.class Lcom/oppo/widget/OppoOptionMenuBar$5;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->getFadeAnimator(Landroid/widget/ImageView;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$5;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$5;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 1736
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar$5;->val$target:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1737
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1738
    .local v1, value:I
    shl-int/lit8 v2, v1, 0x18

    or-int/lit8 v0, v2, 0x0

    .line 1740
    .local v0, backGroundColor:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar$5;->val$target:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1742
    .end local v0           #backGroundColor:I
    .end local v1           #value:I
    :cond_0
    return-void
.end method
