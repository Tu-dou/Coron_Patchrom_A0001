.class final Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OppoResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;
    }
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private final mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemAppResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAppResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/OppoResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/OppoResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"
    .parameter
    .parameter "launchedFromUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 489
    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    iput-object p4, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 491
    iput-object p5, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 492
    iput p6, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 493
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 494
    invoke-direct {p0}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 495
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;)V
    .locals 5
    .parameter "view"
    .parameter "info"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "Xiaokang.Feng@Plf.SDK,2013-04-12,Modify for ConvertIcon"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 810
    const v3, 0xc0204a9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 811
    .local v1, text:Landroid/widget/TextView;
    const v3, 0xc0204aa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 812
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0xc020434

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 813
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mShowExtended:Z
    invoke-static {v3}, Lcom/android/internal/app/OppoResolverActivity;->access$400(Lcom/android/internal/app/OppoResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 815
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 816
    iget-object v3, p2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :goto_0
    iget-object v3, p2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 827
    iget-object v3, p2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/app/OppoResolverActivity$Injector;->oppoLoadIconForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 830
    :cond_0
    iget-object v3, p2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    return-void

    .line 818
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 708
    .local v12, num:I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 710
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/OppoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_0
    return-void

    .line 712
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/app/OppoResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/OppoResolverActivity;->access$402(Lcom/android/internal/app/OppoResolverActivity;Z)Z

    .line 713
    const/4 v14, 0x0

    .line 714
    .local v14, usePkg:Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 715
    .local v13, startApp:Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 716
    const/4 v14, 0x1

    .line 718
    :cond_2
    if-nez v14, :cond_5

    .line 720
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 722
    .local v7, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v8, p2, 0x1

    .local v8, j:I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 724
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 725
    .local v10, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 726
    .local v9, jApp:Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 727
    :cond_3
    const/4 v14, 0x1

    .line 734
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 736
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    :cond_5
    move/from16 v11, p2

    .local v11, k:I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 737
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 738
    .local v3, add:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/OppoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 730
    .end local v3           #add:Landroid/content/pm/ResolveInfo;
    .end local v11           #k:I
    .restart local v7       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8       #j:I
    .restart local v9       #jApp:Ljava/lang/CharSequence;
    .restart local v10       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 744
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v3       #add:Landroid/content/pm/ResolveInfo;
    .restart local v11       #k:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/OppoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private reSortList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mSystemAppResolveList:Ljava/util/List;

    .line 516
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mUserAppResolveList:Ljava/util/List;

    .line 518
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 519
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 520
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 522
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    :goto_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mUserAppResolveList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mSystemAppResolveList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 532
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mSystemAppResolveList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mUserAppResolveList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mSystemAppResolveList:Ljava/util/List;

    iput-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 534
    return-void

    .line 523
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private rebuildList()V
    .locals 24
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "JiFeng.Tan@PEXP.Midware.Midware, Add for Mexico requirement"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 588
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .local v14, N:I
    if-lez v14, :cond_13

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 592
    .local v12, r0:Landroid/content/pm/ResolveInfo;
    const/16 v19, 0x1

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 600
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget v2, v12, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v12, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_5

    .line 602
    :cond_1
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 604
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 566
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    .end local v12           #r0:Landroid/content/pm/ResolveInfo;
    .end local v14           #N:I
    .end local v19           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$300(Lcom/android/internal/app/OppoResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x40

    :goto_2
    or-int/2addr v2, v6

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .restart local v19       #i:I
    :goto_3
    if-ltz v19, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 577
    .local v15, ai:Landroid/content/pm/ActivityInfo;
    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v15, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v2, v3, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v18

    .line 580
    .local v18, granted:I
    if-eqz v18, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 575
    :cond_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 566
    .end local v15           #ai:Landroid/content/pm/ActivityInfo;
    .end local v18           #granted:I
    .end local v19           #i:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 592
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v12       #r0:Landroid/content/pm/ResolveInfo;
    .restart local v14       #N:I
    .restart local v19       #i:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 608
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v2, 0x1

    if-le v14, v2, :cond_7

    .line 609
    new-instance v21, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;-><init>(Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;Landroid/content/pm/PackageManager;)V

    .line 611
    .local v21, rComparator:Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->reSortList(Ljava/util/List;)V

    .line 619
    .end local v21           #rComparator:Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_b

    .line 623
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_b

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v7, v2, v19

    .line 625
    .local v7, ii:Landroid/content/Intent;
    if-nez v7, :cond_8

    .line 623
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 628
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/OppoResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 630
    .restart local v15       #ai:Landroid/content/pm/ActivityInfo;
    if-nez v15, :cond_9

    .line 631
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 635
    :cond_9
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 636
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 637
    instance-of v2, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_a

    move-object/from16 v20, v7

    .line 638
    check-cast v20, Landroid/content/pm/LabeledIntent;

    .line 639
    .local v20, li:Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 640
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 641
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 642
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 644
    .end local v20           #li:Landroid/content/pm/LabeledIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/OppoResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/OppoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 651
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    .end local v7           #ii:Landroid/content/Intent;
    .end local v15           #ai:Landroid/content/pm/ActivityInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 652
    .restart local v12       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 653
    .local v10, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 654
    .local v13, r0Label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/app/OppoResolverActivity;->mShowExtended:Z
    invoke-static {v2, v3}, Lcom/android/internal/app/OppoResolverActivity;->access$402(Lcom/android/internal/app/OppoResolverActivity;Z)Z

    .line 655
    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    if-ge v0, v14, :cond_f

    .line 656
    if-nez v13, :cond_c

    .line 657
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 659
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 660
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/OppoResolverActivity;->access$200(Lcom/android/internal/app/OppoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 661
    .local v23, riLabel:Ljava/lang/CharSequence;
    if-nez v23, :cond_d

    .line 662
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 664
    :cond_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 655
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 667
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v11, v19, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 668
    move-object v12, v4

    .line 669
    move-object/from16 v13, v23

    .line 670
    move/from16 v10, v19

    goto :goto_7

    .line 673
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    .end local v23           #riLabel:Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v11, v14, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 676
    const-string v2, "persist.sys.oppo.region"

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 677
    .local v22, region:Ljava/lang/String;
    if-eqz v22, :cond_13

    const-string v2, "MX"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_13

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 678
    const/16 v19, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_13

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    .line 680
    .local v16, appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_10

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_10

    .line 681
    const-string v2, "com.oppo.plugger"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    check-cast v16, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    .line 683
    .restart local v16       #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 678
    :cond_10
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 684
    :cond_11
    const-string v2, "com.android.mms"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    .line 687
    .local v17, appInfo0:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    const-string v2, "com.oppo.plugger"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    check-cast v16, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    .line 689
    .restart local v16       #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 691
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    check-cast v16, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    .line 692
    .restart local v16       #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 702
    .end local v10           #start:I
    .end local v12           #r0:Landroid/content/pm/ResolveInfo;
    .end local v13           #r0Label:Ljava/lang/CharSequence;
    .end local v14           #N:I
    .end local v16           #appInfo:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    .end local v17           #appInfo0:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    .end local v19           #i:I
    .end local v22           #region:Ljava/lang/String;
    :cond_13
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 785
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 790
    if-nez p2, :cond_0

    .line 791
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0xc09044f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 795
    .local v2, view:Landroid/view/View;
    const v3, 0xc020434

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 796
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 797
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    #getter for: Lcom/android/internal/app/OppoResolverActivity;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/OppoResolverActivity;->access$500(Lcom/android/internal/app/OppoResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 801
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;)V

    .line 802
    return-object v2

    .line 799
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v1

    .line 499
    .local v1, oldItemCount:I
    invoke-direct {p0}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 501
    iget-object v2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/OppoResolverActivity;->finish()V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 507
    .local v0, newItemCount:I
    if-eq v0, v1, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/OppoResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/OppoResolverActivity;->resizeGrid()V

    .line 510
    :cond_1
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .parameter "position"

    .prologue
    .line 760
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 761
    const/4 v2, 0x0

    .line 773
    :goto_0
    return-object v2

    .line 764
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    .line 766
    .local v1, dri:Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 768
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 770
    iget-object v3, v1, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 771
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 766
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 753
    const/4 v0, 0x0

    .line 756
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/internal/app/OppoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
