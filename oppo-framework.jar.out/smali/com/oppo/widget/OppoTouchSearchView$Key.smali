.class Lcom/oppo/widget/OppoTouchSearchView$Key;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public mKeyDrawable:Landroid/graphics/drawable/Drawable;

.field public mKeyLabel:Ljava/lang/CharSequence;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "keyLabel"

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1233
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "keyLabel"
    .parameter "keydrawable"

    .prologue
    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1237
    iput-object p2, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1238
    return-void
.end method


# virtual methods
.method public getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "height"
    .parameter "compare"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setKeyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "keydrawable"

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1242
    return-void
.end method

.method public updateKeyValue(IIIIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "paddingx"
    .parameter "paddingy"
    .parameter "keywidth"
    .parameter "keyheight"

    .prologue
    .line 1246
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    .line 1247
    iput p2, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    .line 1248
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    add-int v1, p1, p3

    add-int v2, p2, p4

    add-int v3, p1, p3

    add-int/2addr v3, p5

    add-int v4, p2, p4

    add-int/2addr v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1250
    return-void
.end method
