.class public Landroid/widget/OppoListViewHooks;
.super Ljava/lang/Object;
.source "OppoListViewHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoListViewHooks$RemoveImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_REMOVE:Z = true

.field public static final LAYOUT_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoListViewHooks"

.field private static final TAG_REMOVE:Ljava/lang/String; = "OppoListViewHooks.RemoveImpl"

.field public static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field public static final TOUCH_MODE_DOWN:I = 0x0

.field public static final TOUCH_MODE_FLING:I = 0x4

.field public static final TOUCH_MODE_OVERFLING:I = 0x6

.field public static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field public static final TOUCH_MODE_REST:I = -0x1

.field public static final TOUCH_MODE_SCROLL:I = 0x3

.field public static final TOUCH_MODE_TAP:I = 0x1


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mListView:Landroid/widget/ListView;

.field public mRemoveImpl:Landroid/widget/OppoListViewHooks$RemoveImpl;

.field private mViewHooks:Landroid/view/OppoViewHooks;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/widget/OppoListViewHooks;->mViewHooks:Landroid/view/OppoViewHooks;

    .line 47
    iput-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    .line 48
    iput-object v0, p0, Landroid/widget/OppoListViewHooks;->mListView:Landroid/widget/ListView;

    .line 53
    new-instance v0, Landroid/widget/OppoListViewHooks$RemoveImpl;

    invoke-direct {v0, p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;-><init>(Landroid/widget/OppoListViewHooks;)V

    iput-object v0, p0, Landroid/widget/OppoListViewHooks;->mRemoveImpl:Landroid/widget/OppoListViewHooks$RemoveImpl;

    .line 684
    iput-object p1, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    .line 685
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 686
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/widget/OppoListViewHooks;->mListView:Landroid/widget/ListView;

    .line 688
    :cond_0
    new-instance v0, Landroid/view/OppoViewHooks;

    invoke-direct {v0, p1}, Landroid/view/OppoViewHooks;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/OppoListViewHooks;->mViewHooks:Landroid/view/OppoViewHooks;

    .line 689
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListPaddingTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListPaddingBottom()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/OppoListViewHooks;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/OppoListViewHooks;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getBottom()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListPaddingLeft()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/OppoListViewHooks;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getIsScrap()[Z

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/OppoListViewHooks;Landroid/view/View;IIZIZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p7}, Landroid/widget/OppoListViewHooks;->setupChild(Landroid/view/View;IIZIZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OppoListViewHooks;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/OppoListViewHooks;->setFirstVisiblePosition(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/OppoListViewHooks;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->isStackFromBottom()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getDividerHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getChildCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/OppoListViewHooks;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListBottom()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/OppoListViewHooks;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoListViewHooks;->setVisibleRangeHint(II)V

    return-void
.end method

.method private detachAllViewsFromParent()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mViewHooks:Landroid/view/OppoViewHooks;

    invoke-virtual {v0}, Landroid/view/OppoViewHooks;->detachAllViewsFromParent()V

    .line 696
    return-void
.end method

.method private getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private getBottom()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    return v0
.end method

.method private getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 929
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildCount()I
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    return v0
.end method

.method private getDividerHeight()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method private getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method private getHeight()I
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    return v0
.end method

.method private getIsScrap()[Z
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    return-object v0
.end method

.method private getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method private getListBottom()I
    .locals 3

    .prologue
    .line 707
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getBottom()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 708
    .local v0, end:I
    iget-object v1, p0, Landroid/widget/OppoListViewHooks;->mViewHooks:Landroid/view/OppoViewHooks;

    invoke-virtual {v1}, Landroid/view/OppoViewHooks;->isClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 711
    :cond_0
    return v0
.end method

.method private getListPaddingBottom()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v0

    return v0
.end method

.method private getListPaddingLeft()I
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getListPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getListPaddingTop()I
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v0

    return v0
.end method

.method private getListTop()I
    .locals 2

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, end:I
    iget-object v1, p0, Landroid/widget/OppoListViewHooks;->mViewHooks:Landroid/view/OppoViewHooks;

    invoke-virtual {v1}, Landroid/view/OppoViewHooks;->isClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks;->getListPaddingTop()I

    move-result v0

    .line 703
    :cond_0
    return v0
.end method

.method private getSelectedPosition()I
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    return v0
.end method

.method private getTop()I
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    return v0
.end method

.method private isStackFromBottom()Z
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v0

    return v0
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 909
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private offsetChildrenTopAndBottom(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 913
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 914
    return-void
.end method

.method private setCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 893
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 894
    return-void
.end method

.method private setFirstVisiblePosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 897
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 898
    return-void
.end method

.method private setVisibleRangeHint(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 917
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 918
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 1
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 722
    :cond_0
    return-void
.end method


# virtual methods
.method public getCachingActive()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingActive:Z

    return v0
.end method

.method public getCachingStarted()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    return v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    return v0
.end method

.method public getLayoutMode()I
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    return v0
.end method

.method public getListPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMotionCorrection()I
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    return v0
.end method

.method public getMotionPosition()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    return v0
.end method

.method public getMotionViewNewTop()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    return v0
.end method

.method public getMotionViewOriginalTop()I
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    return v0
.end method

.method public getMotionX()I
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    return v0
.end method

.method public getMotionY()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    return v0
.end method

.method public getResurrectToPosition()I
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    return v0
.end method

.method public getScrollingCacheEnabled()Z
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectorPosition()I
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    return v0
.end method

.method public getSelectorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    return v0
.end method

.method public hideSelector()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 778
    return-void
.end method

.method public invokeOnItemScrollListener()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 770
    return-void
.end method

.method public setCachingActive(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 805
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput-boolean p1, v0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 806
    return-void
.end method

.method public setCachingStarted(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 797
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput-boolean p1, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 798
    return-void
.end method

.method public setLastY(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 861
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 862
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 757
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 758
    return-void
.end method

.method public setMotionCorrection(I)V
    .locals 1
    .parameter "correction"

    .prologue
    .line 869
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 870
    return-void
.end method

.method public setMotionPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 813
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 814
    return-void
.end method

.method public setMotionViewNewTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 829
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 830
    return-void
.end method

.method public setMotionViewOriginalTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 821
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 822
    return-void
.end method

.method public setMotionX(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 837
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mMotionX:I

    .line 838
    return-void
.end method

.method public setMotionY(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 845
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 846
    return-void
.end method

.method public setResurrectToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 881
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 882
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawble"

    .prologue
    .line 765
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput-object p1, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 766
    return-void
.end method

.method public setTouchMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 853
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 854
    return-void
.end method

.method public updateSelectorState()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Landroid/widget/OppoListViewHooks;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 774
    return-void
.end method
