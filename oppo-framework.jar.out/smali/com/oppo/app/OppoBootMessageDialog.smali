.class public Lcom/oppo/app/OppoBootMessageDialog;
.super Landroid/app/ProgressDialog;
.source "OppoBootMessageDialog.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoBootMessageDialog"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const v0, 0xc030402

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method private initWindow(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 133
    const/16 v1, 0x77

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 134
    const/16 v1, 0x7e5

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 135
    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 136
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 137
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 139
    return-void
.end method

.method public static show(Landroid/content/Context;)Lcom/oppo/app/OppoBootMessageDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    new-instance v0, Lcom/oppo/app/OppoBootMessageDialog;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoBootMessageDialog;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, dialog:Lcom/oppo/app/OppoBootMessageDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoBootMessageDialog;->setProgressStyle(I)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoBootMessageDialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v0}, Lcom/oppo/app/OppoBootMessageDialog;->show()V

    .line 126
    return-object v0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/app/OppoBootMessageDialog;->initWindow(Landroid/view/Window;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 95
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, msgs:[Ljava/lang/String;
    array-length v2, v4

    .line 100
    .local v2, length:I
    if-le v2, v9, :cond_2

    .line 102
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, current:I
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, total:I
    if-lez v6, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getMax()I

    move-result v7

    mul-int/2addr v7, v0

    div-int v5, v7, v6

    .line 106
    .local v5, percent:I
    invoke-virtual {p0, v5}, Lcom/oppo/app/OppoBootMessageDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #current:I
    .end local v5           #percent:I
    .end local v6           #total:I
    :cond_2
    :goto_1
    if-lez v2, :cond_0

    .line 113
    const v7, 0x102000b

    invoke-virtual {p0, v7}, Lcom/oppo/app/OppoBootMessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 114
    .local v3, messageView:Landroid/widget/TextView;
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    .end local v3           #messageView:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "OppoBootMessageDialog"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
