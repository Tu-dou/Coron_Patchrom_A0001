.class Lcom/oppo/view/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field circleIconMuteRes:I

.field circleIconRes:I

.field divider:Landroid/widget/ImageView;

.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field seekbarView:Landroid/widget/OppoSeekBar;

.field show:Z

.field streamTitle:Landroid/widget/TextView;

.field streamType:I

.field final synthetic this$0:Lcom/oppo/view/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/oppo/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$StreamControl;->this$0:Lcom/oppo/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/view/VolumePanel;Lcom/oppo/view/VolumePanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/oppo/view/VolumePanel$StreamControl;-><init>(Lcom/oppo/view/VolumePanel;)V

    return-void
.end method
