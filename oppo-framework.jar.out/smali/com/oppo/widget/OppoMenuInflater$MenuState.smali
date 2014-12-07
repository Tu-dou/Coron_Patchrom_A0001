.class Lcom/oppo/widget/OppoMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "OppoMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true

.field private static final defaultItemWeight:F = 1.0f


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemScrollDownType:I

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private itemWeight:F

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/oppo/widget/OppoMenuInflater;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter "menu"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 315
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->resetGroup()V

    .line 316
    return-void
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "className"
    .parameter
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, constructorSignature:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 433
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 434
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 438
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "OppoMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/oppo/widget/OppoMenuItem;
    .locals 7

    .prologue
    .line 372
    new-instance v3, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 374
    .local v3, item:Lcom/oppo/widget/OppoMenuItem;
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemId:I

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 377
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemWeight:F

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setWeight(F)Lcom/oppo/widget/OppoMenuItem;

    .line 378
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemScrollDownType:I

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setScrollDownType(I)Lcom/oppo/widget/OppoMenuItem;

    .line 380
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v4, :cond_0

    .line 381
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setShowAsAction(I)V

    .line 384
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_1
    new-instance v4, Lcom/oppo/widget/OppoMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/oppo/widget/OppoMenuInflater$InflatedOnMenuItemClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 393
    :cond_2
    instance-of v4, v3, Lcom/oppo/widget/OppoMenuItemImpl;

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 394
    check-cast v2, Lcom/oppo/widget/OppoMenuItemImpl;

    .line 395
    .local v2, impl:Lcom/oppo/widget/OppoMenuItemImpl;
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 405
    .end local v2           #impl:Lcom/oppo/widget/OppoMenuItemImpl;
    :cond_3
    const/4 v1, 0x0

    .line 406
    .local v1, actionViewSpecified:Z
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 407
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    invoke-static {}, Lcom/oppo/widget/OppoMenuInflater;->access$300()[Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/oppo/widget/OppoMenuInflater;->access$400(Lcom/oppo/widget/OppoMenuInflater;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 409
    .local v0, actionView:Landroid/view/View;
    invoke-interface {v3, v0}, Lcom/oppo/widget/OppoMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 410
    const/4 v1, 0x1

    .line 412
    .end local v0           #actionView:Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v4, :cond_5

    .line 413
    if-nez v1, :cond_7

    .line 414
    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 415
    const/4 v1, 0x1

    .line 421
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v4, :cond_6

    .line 422
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoMenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 425
    :cond_6
    return-object v3

    .line 417
    :cond_7
    const-string v4, "OppoMenuInflater"

    const-string v5, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 331
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 333
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 336
    .local v1, b:Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/widget/OppoMenuInflater;->access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Loppo/R$styleable;->OppoOptionMenuBar:[I

    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 338
    .local v2, c:Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemId:I

    .line 339
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 340
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemIconResId:I

    .line 341
    const/4 v4, 0x4

    iget-boolean v6, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemVisible:Z

    .line 342
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemEnabled:Z

    .line 344
    const/4 v4, 0x3

    const/high16 v6, 0x3f80

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemWeight:F

    .line 346
    const/4 v4, 0x6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemScrollDownType:I

    .line 349
    const/16 v4, 0xd

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemShowAsAction:I

    .line 351
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 352
    .local v3, hasActionProvider:Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    invoke-static {}, Lcom/oppo/widget/OppoMenuInflater;->access$100()[Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->this$0:Lcom/oppo/widget/OppoMenuInflater;

    #getter for: Lcom/oppo/widget/OppoMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
    invoke-static {v7}, Lcom/oppo/widget/OppoMenuInflater;->access$200(Lcom/oppo/widget/OppoMenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ActionProvider;

    iput-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 363
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemAdded:Z

    .line 368
    return-void

    .end local v3           #hasActionProvider:Z
    :cond_0
    move v3, v5

    .line 351
    goto :goto_0

    .line 356
    .restart local v3       #hasActionProvider:Z
    :cond_1
    if-eqz v3, :cond_2

    .line 357
    const-string v4, "OppoMenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_1
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupId:I

    .line 320
    iput v0, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupCategory:I

    .line 321
    iput v0, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupOrder:I

    .line 322
    iput v0, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupCheckable:I

    .line 323
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupVisible:Z

    .line 324
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMenuInflater$MenuState;->groupEnabled:Z

    .line 325
    return-void
.end method
