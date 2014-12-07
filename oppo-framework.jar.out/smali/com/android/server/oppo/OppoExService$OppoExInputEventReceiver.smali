.class final Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "OppoExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OppoExInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoExService;


# direct methods
.method public constructor <init>(Lcom/android/server/oppo/OppoExService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    .line 166
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 177
    .local v2, handled:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    #getter for: Lcom/android/server/oppo/OppoExService;->mIsPaused:Z
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$100(Lcom/android/server/oppo/OppoExService;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    #getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    #getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 180
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 181
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    #getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .line 182
    .local v0, callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 183
    #getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/os/IOppoExInputCallBack;->onInputEvent(Landroid/view/InputEvent;)V

    .line 180
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0           #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    const/4 v2, 0x1

    .line 194
    .end local v3           #i:I
    .end local v4           #size:I
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 196
    :goto_1
    return-void

    .line 186
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Throwable;
    :try_start_4
    const-string v5, "OppoExService"

    const-string v6, "Failure IOppoExInputCallBack onInputEvent"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    invoke-virtual {p0, p1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5
.end method
