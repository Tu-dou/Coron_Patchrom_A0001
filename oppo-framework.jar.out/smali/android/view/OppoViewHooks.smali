.class public Landroid/view/OppoViewHooks;
.super Ljava/lang/Object;
.source "OppoViewHooks.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoViewHooks"


# instance fields
.field private mView:Landroid/view/View;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Landroid/view/OppoViewHooks;->mView:Landroid/view/View;

    .line 31
    iput-object v0, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    .line 37
    iput-object p1, p0, Landroid/view/OppoViewHooks;->mView:Landroid/view/View;

    .line 38
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public detachAllViewsFromParent()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 50
    :cond_0
    return-void
.end method

.method public isClipToPadding()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    iget v1, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    iget-object v2, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    and-int/lit8 v1, v1, 0x22

    iget-object v2, p0, Landroid/view/OppoViewHooks;->mViewGroup:Landroid/view/ViewGroup;

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0
.end method
