.class Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "OppoDragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothAnimator"
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;FI)V
    .locals 4
    .parameter
    .parameter "smoothness"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    .line 1098
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput p2, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    .line 1100
    int-to-float v0, p3

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mDurationF:F

    .line 1101
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mA:F

    .line 1102
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mB:F

    .line 1103
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mC:F

    .line 1104
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1125
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method

.method public onUpdate(FF)V
    .locals 0
    .parameter "frac"
    .parameter "smoothFrac"

    .prologue
    .line 1133
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 1141
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1145
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mDurationF:F

    div-float v0, v1, v2

    .line 1147
    .local v0, fraction:F
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_1

    .line 1148
    invoke-virtual {p0, v5, v5}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1149
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->onStop()V

    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1152
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v1, p0}, Lcom/oppo/widget/OppoDragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mStartTime:J

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1119
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->onStart()V

    .line 1120
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoDragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1121
    return-void
.end method

.method public transform(F)F
    .locals 3
    .parameter "frac"

    .prologue
    const/high16 v2, 0x3f80

    .line 1107
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1108
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1112
    :goto_0
    return v0

    .line 1109
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1110
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1112
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
