.class public Lcom/android/server/wm/OppoWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source "OppoWindowManagerService.java"

# interfaces
.implements Landroid/view/IOppoWindowManager;


# static fields
.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoWindowManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .parameter "context"
    .parameter "pm"
    .parameter "displayManager"
    .parameter "inputManager"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"
    .parameter "onlyCore"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 74
    return-void
.end method

.method private getActiveAudioPids()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 189
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "get_pid"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, pids:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 191
    :cond_0
    const/4 v1, 0x0

    .line 193
    .end local v1           #pids:Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public checkIsFloatWindowForbidden(Ljava/lang/String;I)Z
    .locals 1
    .parameter "packageName"
    .parameter "type"

    .prologue
    .line 239
    invoke-static {p1, p2}, Landroid/view/OppoWindowManagerImplHelper;->checkIsFloatWindowForbidden(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 197
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_4

    .line 198
    invoke-direct {p0}, Lcom/android/server/wm/OppoWindowManagerService;->getActiveAudioPids()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, pids:Ljava/lang/String;
    if-nez v3, :cond_0

    move v7, v8

    .line 232
    .end local v3           #pids:Ljava/lang/String;
    :goto_0
    return v7

    .line 203
    .restart local v3       #pids:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    .line 204
    goto :goto_0

    .line 207
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 208
    .local v2, list:Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_4

    .line 209
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 210
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 211
    .local v5, screenWidth:I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 213
    .local v4, screenHeight:I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    .line 214
    .local v6, size:I
    if-lez v6, :cond_3

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 216
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v4, :cond_2

    move v7, v9

    .line 219
    goto :goto_0

    .line 215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v1           #i:I
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_4

    .line 225
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v5, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v4, :cond_4

    move v7, v9

    .line 227
    goto/16 :goto_0

    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #list:Lcom/android/server/wm/WindowList;
    .end local v3           #pids:Ljava/lang/String;
    .end local v4           #screenHeight:I
    .end local v5           #screenWidth:I
    .end local v6           #size:I
    :cond_4
    move v7, v8

    .line 232
    goto/16 :goto_0
.end method

.method public isInputShow()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotatingLw()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v1

    .line 162
    :cond_1
    return v1
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->isStatusBarVisible()Z

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 145
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 81
    :pswitch_1
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->showStatusBar()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, arg0:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OppoWindowManagerService;->rm_add_StatusBarRunnable(I)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #arg0:I
    :pswitch_3
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isStatusBarVisible()Z

    move-result v2

    .line 97
    .local v2, result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v2           #result:Z
    :pswitch_4
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isInputShow()Z

    move-result v2

    .line 107
    .restart local v2       #result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 112
    .end local v2           #result:Z
    :pswitch_5
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isFullScreen()Z

    move-result v2

    .line 114
    .restart local v2       #result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 123
    .end local v2           #result:Z
    :pswitch_6
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, type:I
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/OppoWindowManagerService;->checkIsFloatWindowForbidden(Ljava/lang/String;I)Z

    move-result v2

    .line 127
    .restart local v2       #result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 137
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #result:Z
    .end local v3           #type:I
    :pswitch_7
    const-string v6, "android.view.IWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isRotatingLw()Z

    move-result v2

    .line 139
    .restart local v2       #result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/OppoWindowManagerPolicy;->rm_add_StatusBarRunnable(I)V

    .line 172
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;
    .locals 56
    .parameter "appToken"
    .parameter "displayId"
    .parameter "width"
    .parameter "height"
    .parameter "force565"

    .prologue
    .line 258
    const-string v6, "android.permission.READ_FRAME_BUFFER"

    const-string v7, "screenshotApplications()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/OppoWindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 263
    :cond_0
    const/4 v5, 0x0

    .line 265
    .local v5, rawss:Landroid/graphics/Bitmap;
    const/16 v39, 0x0

    .line 266
    .local v39, maxLayer:I
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 268
    .local v31, frame:Landroid/graphics/Rect;
    const/16 v46, 0x0

    .line 270
    .local v46, scale:F
    const/16 v45, 0x0

    .line 274
    .local v45, rot:I
    if-nez p1, :cond_2

    .line 275
    const/16 v47, 0x1

    .line 276
    .local v47, screenshotReady:Z
    const/16 v40, 0x0

    .line 282
    .local v40, minLayer:I
    :goto_0
    const/16 v42, 0x0

    .line 283
    .local v42, retryCount:I
    const/16 v21, 0x0

    .local v21, appWin:Lcom/android/server/wm/WindowState;
    move/from16 v43, v42

    .line 286
    .end local v42           #retryCount:I
    .local v43, retryCount:I
    :goto_1
    add-int/lit8 v42, v43, 0x1

    .end local v43           #retryCount:I
    .restart local v42       #retryCount:I
    if-lez v43, :cond_1

    .line 288
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/OppoWindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 293
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OppoWindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v26

    .line 294
    .local v26, displayContent:Lcom/android/server/wm/DisplayContent;
    if-nez v26, :cond_3

    .line 295
    const/4 v11, 0x0

    monitor-exit v7

    .line 515
    :goto_3
    return-object v11

    .line 278
    .end local v21           #appWin:Lcom/android/server/wm/WindowState;
    .end local v26           #displayContent:Lcom/android/server/wm/DisplayContent;
    .end local v40           #minLayer:I
    .end local v42           #retryCount:I
    .end local v47           #screenshotReady:Z
    :cond_2
    const/16 v47, 0x0

    .line 279
    .restart local v47       #screenshotReady:Z
    const v40, 0x7fffffff

    .restart local v40       #minLayer:I
    goto :goto_0

    .line 297
    .restart local v21       #appWin:Lcom/android/server/wm/WindowState;
    .restart local v26       #displayContent:Lcom/android/server/wm/DisplayContent;
    .restart local v42       #retryCount:I
    :cond_3
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v27

    .line 298
    .local v27, displayInfo:Landroid/view/DisplayInfo;
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v28, v0

    .line 299
    .local v28, dw:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v25, v0

    .line 301
    .local v25, dh:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v0, v6, 0x3e8

    move/from16 v19, v0

    .line 303
    .local v19, aboveAppLayer:I
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_5

    const/16 v36, 0x1

    .line 311
    .local v36, isImeTarget:Z
    :goto_4
    const/16 v35, 0x0

    .line 312
    .local v35, including:Z
    const/16 v21, 0x0

    .line 313
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v54

    .line 314
    .local v54, windows:Lcom/android/server/wm/WindowList;
    new-instance v48, Landroid/graphics/Rect;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/Rect;-><init>()V

    .line 315
    .local v48, stackBounds:Landroid/graphics/Rect;
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v34, v6, -0x1

    .local v34, i:I
    :goto_5
    if-ltz v34, :cond_d

    .line 316
    move-object/from16 v0, v54

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/wm/WindowState;

    .line 317
    .local v55, ws:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v55

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v6, :cond_6

    .line 315
    :cond_4
    add-int/lit8 v34, v34, -0x1

    goto :goto_5

    .line 305
    .end local v34           #i:I
    .end local v35           #including:Z
    .end local v36           #isImeTarget:Z
    .end local v48           #stackBounds:Landroid/graphics/Rect;
    .end local v54           #windows:Lcom/android/server/wm/WindowList;
    .end local v55           #ws:Lcom/android/server/wm/WindowState;
    :cond_5
    const/16 v36, 0x0

    goto :goto_4

    .line 320
    .restart local v34       #i:I
    .restart local v35       #including:Z
    .restart local v36       #isImeTarget:Z
    .restart local v48       #stackBounds:Landroid/graphics/Rect;
    .restart local v54       #windows:Lcom/android/server/wm/WindowList;
    .restart local v55       #ws:Lcom/android/server/wm/WindowState;
    :cond_6
    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 326
    if-nez v35, :cond_8

    if-eqz p1, :cond_8

    .line 330
    move-object/from16 v0, v55

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v6, :cond_7

    if-nez v36, :cond_8

    .line 333
    :cond_7
    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_4

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_4

    .line 336
    move-object/from16 v21, v55

    .line 337
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
    :cond_8
    move-object/from16 v0, v55

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v32

    .line 344
    .local v32, fullscreen:Z
    move-object/from16 v0, v55

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_f

    if-nez v32, :cond_f

    const/16 v35, 0x1

    .line 346
    :goto_6
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v53, v0

    .line 347
    .local v53, winAnim:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v53

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v0, v39

    if-ge v0, v6, :cond_9

    .line 348
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v39, v0

    .line 350
    :cond_9
    move-object/from16 v0, v53

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v0, v40

    if-le v0, v6, :cond_a

    .line 351
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v40, v0

    .line 355
    :cond_a
    move-object/from16 v0, v55

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v6, :cond_b

    .line 356
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v51, v0

    .line 357
    .local v51, wf:Landroid/graphics/Rect;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 358
    .local v24, cr:Landroid/graphics/Rect;
    move-object/from16 v0, v51

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int v37, v6, v8

    .line 359
    .local v37, left:I
    move-object/from16 v0, v51

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int v50, v6, v8

    .line 360
    .local v50, top:I
    move-object/from16 v0, v51

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v44, v6, v8

    .line 361
    .local v44, right:I
    move-object/from16 v0, v51

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v22, v6, v8

    .line 362
    .local v22, bottom:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v50

    move/from16 v3, v44

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 363
    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 366
    .end local v22           #bottom:I
    .end local v24           #cr:Landroid/graphics/Rect;
    .end local v37           #left:I
    .end local v44           #right:I
    .end local v50           #top:I
    .end local v51           #wf:Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_c

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_c

    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 368
    const/16 v47, 0x1

    .line 373
    :cond_c
    if-eqz v32, :cond_4

    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 382
    .end local v32           #fullscreen:Z
    .end local v53           #winAnim:Lcom/android/server/wm/WindowStateAnimator;
    .end local v55           #ws:Lcom/android/server/wm/WindowState;
    :cond_d
    if-eqz p1, :cond_10

    if-nez v21, :cond_10

    .line 384
    sget-boolean v6, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_e

    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screenshot: Couldn\'t find a surface matching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_e
    const/4 v11, 0x0

    monitor-exit v7

    goto/16 :goto_3

    .line 455
    .end local v19           #aboveAppLayer:I
    .end local v25           #dh:I
    .end local v26           #displayContent:Lcom/android/server/wm/DisplayContent;
    .end local v27           #displayInfo:Landroid/view/DisplayInfo;
    .end local v28           #dw:I
    .end local v34           #i:I
    .end local v35           #including:Z
    .end local v36           #isImeTarget:Z
    .end local v48           #stackBounds:Landroid/graphics/Rect;
    .end local v54           #windows:Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 344
    .restart local v19       #aboveAppLayer:I
    .restart local v25       #dh:I
    .restart local v26       #displayContent:Lcom/android/server/wm/DisplayContent;
    .restart local v27       #displayInfo:Landroid/view/DisplayInfo;
    .restart local v28       #dw:I
    .restart local v32       #fullscreen:Z
    .restart local v34       #i:I
    .restart local v35       #including:Z
    .restart local v36       #isImeTarget:Z
    .restart local v48       #stackBounds:Landroid/graphics/Rect;
    .restart local v54       #windows:Lcom/android/server/wm/WindowList;
    .restart local v55       #ws:Lcom/android/server/wm/WindowState;
    :cond_f
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 388
    .end local v32           #fullscreen:Z
    .end local v55           #ws:Lcom/android/server/wm/WindowState;
    :cond_10
    if-nez v47, :cond_14

    .line 390
    :try_start_2
    sget-boolean v6, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_11

    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screenshot: No image ready for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " drawState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_11
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    :goto_7
    if-nez v47, :cond_12

    const/4 v6, 0x3

    move/from16 v0, v42

    if-le v0, v6, :cond_24

    .line 457
    :cond_12
    const/4 v6, 0x3

    move/from16 v0, v42

    if-le v0, v6, :cond_13

    const-string v7, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot max retries "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " appWin="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v21, :cond_1c

    const-string v6, "null"

    :goto_8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_13
    if-nez v5, :cond_1d

    .line 462
    const-string v6, "OppoWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot failure taking screenshot for ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to layer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 396
    :cond_14
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_3
    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 398
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    if-nez v39, :cond_17

    .line 399
    :cond_15
    sget-boolean v6, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_16

    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screenshot of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": returning null frame="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxLayer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_16
    const/4 v11, 0x0

    monitor-exit v7

    goto/16 :goto_3

    .line 406
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/OppoWindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v45

    .line 407
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v33

    .line 408
    .local v33, fw:I
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v29

    .line 412
    .local v29, fh:I
    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, v33

    int-to-float v8, v0

    div-float/2addr v6, v8

    move/from16 v0, p4

    int-to-float v8, v0

    move/from16 v0, v29

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v46

    .line 434
    move/from16 v0, v28

    int-to-float v6, v0

    mul-float v6, v6, v46

    float-to-int v0, v6

    move/from16 v28, v0

    .line 435
    move/from16 v0, v25

    int-to-float v6, v0

    mul-float v6, v6, v46

    float-to-int v0, v6

    move/from16 v25, v0

    .line 436
    const/4 v6, 0x1

    move/from16 v0, v45

    if-eq v0, v6, :cond_18

    const/4 v6, 0x3

    move/from16 v0, v45

    if-ne v0, v6, :cond_19

    .line 437
    :cond_18
    move/from16 v49, v28

    .line 438
    .local v49, tmp:I
    move/from16 v28, v25

    .line 439
    move/from16 v25, v49

    .line 440
    const/4 v6, 0x1

    move/from16 v0, v45

    if-ne v0, v6, :cond_1a

    const/16 v45, 0x3

    .line 442
    .end local v49           #tmp:I
    :cond_19
    :goto_9
    sget-boolean v6, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_1b

    .line 443
    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screenshot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " appToken="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v34, 0x0

    :goto_a
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    move/from16 v0, v34

    if-ge v0, v6, :cond_1b

    .line 446
    move-object/from16 v0, v54

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/wm/WindowState;

    .line 447
    .local v52, win:Lcom/android/server/wm/WindowState;
    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v52

    iget v9, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " animLayer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v52

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " surfaceLayer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v52

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 440
    .end local v52           #win:Lcom/android/server/wm/WindowState;
    .restart local v49       #tmp:I
    :cond_1a
    const/16 v45, 0x1

    goto/16 :goto_9

    .line 454
    .end local v49           #tmp:I
    :cond_1b
    const/4 v6, 0x0

    add-int/lit8 v8, v39, 0x5

    move/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1, v6, v8}, Landroid/view/SurfaceControl;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 455
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    .line 457
    .end local v29           #fh:I
    .end local v33           #fw:I
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " drawState="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    .line 468
    :cond_1d
    if-eqz v45, :cond_1e

    .line 469
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 470
    .local v10, ma:Landroid/graphics/Matrix;
    mul-int/lit8 v6, v45, 0x5a

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 471
    const/16 v41, 0x0

    .line 472
    .local v41, nBitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v41

    .line 473
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    move-object/from16 v5, v41

    .line 480
    .end local v10           #ma:Landroid/graphics/Matrix;
    .end local v41           #nBitmap:Landroid/graphics/Bitmap;
    :cond_1e
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eqz p5, :cond_21

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_b
    invoke-static {v7, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 482
    .local v11, bm:Landroid/graphics/Bitmap;
    new-instance v38, Landroid/graphics/Matrix;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Matrix;-><init>()V

    .line 488
    .local v38, matrix:Landroid/graphics/Matrix;
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 489
    .local v23, canvas:Landroid/graphics/Canvas;
    const/high16 v6, -0x100

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 490
    const/4 v6, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 491
    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    sget-boolean v6, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_20

    .line 496
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    new-array v12, v6, [I

    .line 497
    .local v12, buffer:[I
    const/4 v13, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 498
    const/16 v20, 0x1

    .line 499
    .local v20, allBlack:Z
    const/4 v6, 0x0

    aget v30, v12, v6

    .line 500
    .local v30, firstColor:I
    const/16 v34, 0x0

    :goto_c
    array-length v6, v12

    move/from16 v0, v34

    if-ge v0, v6, :cond_1f

    .line 501
    aget v6, v12, v34

    move/from16 v0, v30

    if-eq v6, v0, :cond_22

    .line 502
    const/16 v20, 0x0

    .line 506
    :cond_1f
    if-eqz v20, :cond_20

    .line 507
    const-string v7, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " was monochrome("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")! mSurfaceLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v21, :cond_23

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " maxLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v12           #buffer:[I
    .end local v20           #allBlack:Z
    .end local v30           #firstColor:I
    :cond_20
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 480
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v23           #canvas:Landroid/graphics/Canvas;
    .end local v38           #matrix:Landroid/graphics/Matrix;
    :cond_21
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    goto/16 :goto_b

    .line 500
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v12       #buffer:[I
    .restart local v20       #allBlack:Z
    .restart local v23       #canvas:Landroid/graphics/Canvas;
    .restart local v30       #firstColor:I
    .restart local v38       #matrix:Landroid/graphics/Matrix;
    :cond_22
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    .line 507
    :cond_23
    const-string v6, "null"

    goto :goto_d

    .line 289
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v12           #buffer:[I
    .end local v19           #aboveAppLayer:I
    .end local v20           #allBlack:Z
    .end local v23           #canvas:Landroid/graphics/Canvas;
    .end local v25           #dh:I
    .end local v26           #displayContent:Lcom/android/server/wm/DisplayContent;
    .end local v27           #displayInfo:Landroid/view/DisplayInfo;
    .end local v28           #dw:I
    .end local v30           #firstColor:I
    .end local v34           #i:I
    .end local v35           #including:Z
    .end local v36           #isImeTarget:Z
    .end local v38           #matrix:Landroid/graphics/Matrix;
    .end local v48           #stackBounds:Landroid/graphics/Rect;
    .end local v54           #windows:Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v6

    goto/16 :goto_2

    .restart local v19       #aboveAppLayer:I
    .restart local v25       #dh:I
    .restart local v26       #displayContent:Lcom/android/server/wm/DisplayContent;
    .restart local v27       #displayInfo:Landroid/view/DisplayInfo;
    .restart local v28       #dw:I
    .restart local v34       #i:I
    .restart local v35       #including:Z
    .restart local v36       #isImeTarget:Z
    .restart local v48       #stackBounds:Landroid/graphics/Rect;
    .restart local v54       #windows:Lcom/android/server/wm/WindowList;
    :cond_24
    move/from16 v43, v42

    .end local v42           #retryCount:I
    .restart local v43       #retryCount:I
    goto/16 :goto_1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V
    .locals 12
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "logo"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 525
    const-string v0, "com.oppo.launcher"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-super/range {v0 .. v11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 532
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-super/range {p0 .. p11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method public showStatusBar()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->showStatusBar()V

    .line 168
    return-void
.end method
