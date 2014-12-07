.class Lcom/oppo/widget/OppoOptionMenuBar$2;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGalleryItemClick(Lcom/oppo/widget/OppoMenuItem;I)V
    .locals 9
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 480
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$000(Lcom/oppo/widget/OppoOptionMenuBar;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 482
    .local v0, duration:J
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J
    invoke-static {v3, v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$002(Lcom/oppo/widget/OppoOptionMenuBar;J)J

    .line 483
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$100(Lcom/oppo/widget/OppoOptionMenuBar;)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 524
    .end local v0           #duration:J
    :cond_0
    :goto_0
    return-void

    .line 486
    .restart local v0       #duration:J
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$200(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$300(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    invoke-interface {p1}, Lcom/oppo/widget/OppoMenuItem;->getScrollDownType()I

    move-result v2

    .line 489
    .local v2, type:I
    const-string v3, "OppoOptionMenuBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scroll type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    packed-switch v2, :pswitch_data_0

    .line 513
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v3, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 514
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 519
    .end local v2           #type:I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1000(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 521
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/oppo/widget/OppoMenuItem;)Z

    goto :goto_0

    .line 492
    .restart local v2       #type:I
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 493
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v3, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    goto :goto_1

    .line 497
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v3, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 498
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v3, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->access$702(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;

    .line 499
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_1

    .line 503
    :pswitch_2
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v3, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 504
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #calls: Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$800(Lcom/oppo/widget/OppoOptionMenuBar;)V

    goto :goto_1

    .line 508
    :pswitch_3
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v3, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 509
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z
    invoke-static {v3, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->access$902(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    goto :goto_1

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
