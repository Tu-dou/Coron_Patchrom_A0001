.class Lcom/oppo/widget/OppoOptionMenuBarItem$1;
.super Landroid/os/Handler;
.source "OppoOptionMenuBarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 184
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const-string v1, "OppoOptionMenuBarItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 191
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 192
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->access$000(Lcom/oppo/widget/OppoOptionMenuBarItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->access$000(Lcom/oppo/widget/OppoOptionMenuBarItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
