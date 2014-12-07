.class public Lcom/android/server/wm/OppoWindowStateHelper;
.super Ljava/lang/Object;
.source "OppoWindowStateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideLwExtr(Landroid/view/WindowManager$LayoutParams;Ljava/util/ArrayList;ZZ)Z
    .locals 4
    .parameter "mAttrs"
    .parameter
    .parameter "doAnimation"
    .parameter "requestAnim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, mChildWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_0

    .line 56
    const/4 p3, 0x0

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    return p3
.end method

.method public static showLwExtr(Landroid/view/WindowManager$LayoutParams;Ljava/util/ArrayList;ZZ)Z
    .locals 4
    .parameter "mAttrs"
    .parameter
    .parameter "doAnimation"
    .parameter "requestAnim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, mChildWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_0

    .line 72
    const/4 p3, 0x0

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    return p3
.end method
