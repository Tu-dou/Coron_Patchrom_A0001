.class Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;
.super Ljava/lang/Object;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoDrawableHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 659
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    .line 661
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 648
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    .line 649
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 654
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    .line 655
    return-void
.end method
