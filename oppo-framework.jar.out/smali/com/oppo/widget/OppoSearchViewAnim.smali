.class public Lcom/oppo/widget/OppoSearchViewAnim;
.super Landroid/widget/LinearLayout;
.source "OppoSearchViewAnim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;,
        Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;,
        Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;
    }
.end annotation


# static fields
.field private static final ANIM_SEARCH:I = 0x3eb

.field private static final DEBUG:Z = true

.field private static final HIDE_SEARCH:I = 0x3e9

.field private static final SHOW_SEARCH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OppoSearchViewAnim"


# instance fields
.field private isDoActionBarAnim:Z

.field private isShowAnimationEnabled:Z

.field private mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

.field private final mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mForeground:Landroid/view/View;

.field private mHomeBack:Landroid/widget/ImageView;

.field private mHomeBackMarginRight:I

.field private mHomeBackWidth:I

.field private mIsTriggerActionBarAnim:Z

.field private mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

.field private mOnClickBtnSearchListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;

.field private mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

.field private mOppoSearch:Landroid/view/ViewGroup;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mSearchAnim:Landroid/widget/ImageView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowActionBarRunnable:Ljava/lang/Runnable;

.field private mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mStateSearch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSearchViewAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/16 v2, 0x3e9

    iput v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 61
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 65
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    .line 66
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    .line 68
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    .line 69
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    .line 70
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    .line 72
    iput-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    .line 74
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$1;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$1;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 96
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$2;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$2;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 373
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$3;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$3;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$4;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$4;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 430
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$5;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$5;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    .line 131
    const-string v1, "com.android.contacts"

    .line 132
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const v2, 0xc030002

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 136
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 138
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0xc090440

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05042d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    .line 142
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->setupSearchView()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoSearchViewAnim;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoSearchViewAnim;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoSearchViewAnim;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoSearchViewAnim;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoSearchViewAnim;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/android/internal/app/OppoActionBarImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoSearchViewAnim;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    return v0
.end method

.method private doHide()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    if-eq v1, v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 340
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 343
    :cond_2
    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 345
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 351
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    sub-int v0, v1, v2

    .line 352
    .local v0, startingX:I
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v8, [F

    aput v9, v4, v6

    int-to-float v5, v0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 355
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    const-string v3, "translationX"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 358
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 364
    :cond_3
    const-string v1, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHide() mActionBar.isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/OppoActionBarImpl;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDoActionBarAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 368
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/widget/OppoSearchViewAnim;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 360
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private doShow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    const/16 v1, 0x3e9

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    if-eq v1, v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 301
    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 302
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 307
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    if-nez v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 311
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    sub-int v0, v1, v2

    .line 312
    .local v0, startingX:I
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v8, [F

    int-to-float v5, v0

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 315
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    const-string v3, "translationX"

    new-array v4, v8, [F

    iget v5, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 317
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 324
    :cond_3
    const-string v1, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShow() mActionBar.isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/OppoActionBarImpl;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDoActionBarAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/OppoActionBarImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    if-eqz v1, :cond_0

    .line 328
    iput-boolean v7, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    .line 329
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/OppoActionBarImpl;->hide()V

    goto/16 :goto_0

    .line 320
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private setButtonStyle(Z)V
    .locals 5
    .parameter "isButton"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setTranslationX(F)V

    .line 163
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 164
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 169
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 170
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 171
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    .line 172
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 178
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 179
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 180
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 384
    if-eqz p1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->post(Ljava/lang/Runnable;)Z

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 388
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 391
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setupSearchView()V
    .locals 1

    .prologue
    .line 147
    const v0, 0xc020492

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    .line 148
    const v0, 0xc020493

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    .line 149
    const v0, 0xc020494

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    .line 150
    const v0, 0xc020495

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 155
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 159
    return-void
.end method


# virtual methods
.method public changeButtonStyle()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 247
    :try_start_0
    const-string v0, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeButtonStyle isShowAnimationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->doHide()V

    .line 255
    :goto_0
    monitor-exit v1

    .line 256
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 253
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeSearchStyle()V
    .locals 4

    .prologue
    .line 259
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 261
    :try_start_0
    const-string v0, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSearchStyle isShowAnimationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->doShow()V

    .line 269
    :goto_0
    monitor-exit v1

    .line 270
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 267
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;->onClickHomeback()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0xc020493
        :pswitch_0
    .end packed-switch
.end method

.method public setActionBar(Landroid/app/ActionBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    check-cast p1, Lcom/android/internal/app/OppoActionBarImpl;

    .end local p1
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    .line 239
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setDoActionBarAnim(Z)V
    .locals 0
    .parameter "isAnim"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    .line 285
    return-void
.end method

.method public setForeground(Landroid/view/View;)V
    .locals 3
    .parameter "foreground"

    .prologue
    const/4 v2, 0x0

    .line 277
    if-eqz p1, :cond_0

    .line 278
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const/16 v1, 0xa8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public setOnAnimationListener(Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    .line 227
    return-void
.end method

.method public setOnClickBtnSearchListener(Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickBtnSearchListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;

    .line 216
    return-void
.end method

.method public setOnClickHomebackListener(Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    .line 207
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .parameter "paddingfelt"

    .prologue
    .line 288
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    .line 289
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .parameter "paddingright"

    .prologue
    .line 292
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    .line 293
    return-void
.end method

.method public setShowAnimationEnabled(Z)V
    .locals 0
    .parameter "isAnime"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    .line 274
    return-void
.end method

.method public showForeground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 410
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 417
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 418
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 420
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 421
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mContext:Landroid/content/Context;

    const v3, 0x10c0003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 424
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 426
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 428
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #b:Landroid/animation/AnimatorSet$Builder;
    :cond_1
    return-void

    .line 420
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
