.class public Landroid/text/OppoDialerLayout;
.super Landroid/text/Layout;
.source "OppoDialerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/OppoDialerLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/DialerStaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mInts:Landroid/text/PackedIntVector;

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/OppoDialerLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Landroid/text/DialerStaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/OppoDialerLayout;->sStaticLayout:Landroid/text/DialerStaticLayout;

    .line 477
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/OppoDialerLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/OppoDialerLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 54
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/OppoDialerLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 65
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/OppoDialerLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 77
    if-nez p10, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoDialerLayout;->mBase:Ljava/lang/CharSequence;

    .line 82
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoDialerLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 84
    if-eqz p10, :cond_4

    .line 85
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    .line 86
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/OppoDialerLayout;->mEllipsizedWidth:I

    .line 87
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoDialerLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 94
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/OppoDialerLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 96
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/OppoDialerLayout;->mIncludePad:Z

    .line 106
    if-eqz p10, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 109
    .local v13, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 110
    move/from16 v0, p11

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 111
    move-object/from16 v0, p10

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 112
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/OppoDialerLayout;->mEllipsize:Z

    .line 121
    .end local v13           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p10, :cond_5

    .line 122
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 123
    .local v18, start:[I
    const/4 v2, 0x3

    const/high16 v3, -0x8000

    aput v3, v18, v2

    .line 128
    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/OppoDialerLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 130
    .local v12, dirs:[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 131
    .local v14, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 132
    .local v10, asc:I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 134
    .local v11, desc:I
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    aput v3, v18, v2

    .line 135
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 136
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 139
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoDialerLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 146
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/OppoDialerLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 148
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoDialerLayout;->mWatcher:Landroid/text/OppoDialerLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 150
    new-instance v2, Landroid/text/OppoDialerLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/OppoDialerLayout$ChangeWatcher;-><init>(Landroid/text/OppoDialerLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/OppoDialerLayout;->mWatcher:Landroid/text/OppoDialerLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    .line 154
    check-cast v16, Landroid/text/Spannable;

    .line 155
    .local v16, sp:Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/OppoDialerLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/OppoDialerLayout$ChangeWatcher;

    .line 156
    .local v17, spans:[Landroid/text/OppoDialerLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 157
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 77
    .end local v10           #asc:I
    .end local v11           #desc:I
    .end local v12           #dirs:[Landroid/text/Layout$Directions;
    .end local v14           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/OppoDialerLayout$ChangeWatcher;
    .end local v18           #start:[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 89
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    .line 90
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/OppoDialerLayout;->mEllipsizedWidth:I

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/OppoDialerLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 125
    :cond_5
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18       #start:[I
    goto/16 :goto_2

    .line 160
    .restart local v10       #asc:I
    .restart local v11       #desc:I
    .restart local v12       #dirs:[Landroid/text/Layout$Directions;
    .restart local v14       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15       #i:I
    .restart local v16       #sp:Landroid/text/Spannable;
    .restart local v17       #spans:[Landroid/text/OppoDialerLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoDialerLayout;->mWatcher:Landroid/text/OppoDialerLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 163
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/OppoDialerLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method static synthetic access$000(Landroid/text/OppoDialerLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/OppoDialerLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 39
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 346
    :goto_0
    return-void

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/OppoDialerLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 171
    .local v3, text:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v29

    .line 175
    .local v29, len:I
    const/16 v4, 0xa

    add-int/lit8 v5, p2, -0x1

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v23

    .line 176
    .local v23, find:I
    if-gez v23, :cond_4

    .line 177
    const/16 v23, 0x0

    .line 183
    :goto_1
    sub-int v19, p2, v23

    .line 184
    .local v19, diff:I
    add-int p3, p3, v19

    .line 185
    add-int p4, p4, v19

    .line 186
    sub-int p2, p2, v19

    .line 191
    const/16 v4, 0xa

    add-int v5, p2, p4

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v30

    .line 192
    .local v30, look:I
    if-gez v30, :cond_5

    .line 193
    move/from16 v30, v29

    .line 198
    :goto_2
    add-int v4, p2, p4

    sub-int v17, v30, v4

    .line 199
    .local v17, change:I
    add-int p3, p3, v17

    .line 200
    add-int p4, p4, v17

    .line 204
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_7

    move-object/from16 v33, v3

    .line 205
    check-cast v33, Landroid/text/Spanned;

    .line 209
    .local v33, sp:Landroid/text/Spanned;
    :cond_1
    const/4 v15, 0x0

    .line 211
    .local v15, again:Z
    add-int v4, p2, p4

    const-class v5, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v33

    move/from16 v1, p2

    invoke-interface {v0, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    .line 213
    .local v24, force:[Ljava/lang/Object;
    const/16 v26, 0x0

    .local v26, i:I
    :goto_3
    move-object/from16 v0, v24

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_6

    .line 214
    aget-object v4, v24, v26

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v34

    .line 215
    .local v34, st:I
    aget-object v4, v24, v26

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    .line 217
    .local v20, en:I
    move/from16 v0, v34

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 218
    const/4 v15, 0x1

    .line 220
    sub-int v19, p2, v34

    .line 221
    add-int p3, p3, v19

    .line 222
    add-int p4, p4, v19

    .line 223
    sub-int p2, p2, v19

    .line 226
    :cond_2
    add-int v4, p2, p4

    move/from16 v0, v20

    if-le v0, v4, :cond_3

    .line 227
    const/4 v15, 0x1

    .line 229
    add-int v4, p2, p4

    sub-int v19, v20, v4

    .line 230
    add-int p3, p3, v19

    .line 231
    add-int p4, p4, v19

    .line 213
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 179
    .end local v15           #again:Z
    .end local v17           #change:I
    .end local v19           #diff:I
    .end local v20           #en:I
    .end local v24           #force:[Ljava/lang/Object;
    .end local v26           #i:I
    .end local v30           #look:I
    .end local v33           #sp:Landroid/text/Spanned;
    .end local v34           #st:I
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 195
    .restart local v19       #diff:I
    .restart local v30       #look:I
    :cond_5
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 234
    .restart local v15       #again:Z
    .restart local v17       #change:I
    .restart local v24       #force:[Ljava/lang/Object;
    .restart local v26       #i:I
    .restart local v33       #sp:Landroid/text/Spanned;
    :cond_6
    if-nez v15, :cond_1

    .line 239
    .end local v15           #again:Z
    .end local v24           #force:[Ljava/lang/Object;
    .end local v26           #i:I
    .end local v33           #sp:Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/OppoDialerLayout;->getLineForOffset(I)I

    move-result v35

    .line 240
    .local v35, startline:I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/OppoDialerLayout;->getLineTop(I)I

    move-result v36

    .line 242
    .local v36, startv:I
    add-int v4, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/OppoDialerLayout;->getLineForOffset(I)I

    move-result v21

    .line 243
    .local v21, endline:I
    add-int v4, p2, p4

    move/from16 v0, v29

    if-ne v4, v0, :cond_8

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getLineCount()I

    move-result v21

    .line 246
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/OppoDialerLayout;->getLineTop(I)I

    move-result v22

    .line 247
    .local v22, endv:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getLineCount()I

    move-result v4

    move/from16 v0, v21

    if-ne v0, v4, :cond_f

    const/16 v28, 0x1

    .line 253
    .local v28, islast:Z
    :goto_4
    sget-object v5, Landroid/text/OppoDialerLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 254
    :try_start_0
    sget-object v2, Landroid/text/OppoDialerLayout;->sStaticLayout:Landroid/text/DialerStaticLayout;

    .line 255
    .local v2, reflowed:Landroid/text/DialerStaticLayout;
    const/4 v4, 0x0

    sput-object v4, Landroid/text/OppoDialerLayout;->sStaticLayout:Landroid/text/DialerStaticLayout;

    .line 256
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    if-nez v2, :cond_10

    .line 259
    new-instance v2, Landroid/text/DialerStaticLayout;

    .end local v2           #reflowed:Landroid/text/DialerStaticLayout;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    .restart local v2       #reflowed:Landroid/text/DialerStaticLayout;
    :goto_5
    add-int v5, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getSpacingMultiplier()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/OppoDialerLayout;->getSpacingAdd()F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/OppoDialerLayout;->mEllipsizedWidth:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/OppoDialerLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v14}, Landroid/text/DialerStaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 267
    invoke-virtual {v2}, Landroid/text/DialerStaticLayout;->getLineCount()I

    move-result v31

    .line 273
    .local v31, n:I
    add-int v4, p2, p4

    move/from16 v0, v29

    if-eq v4, v0, :cond_9

    add-int/lit8 v4, v31, -0x1

    invoke-virtual {v2, v4}, Landroid/text/DialerStaticLayout;->getLineStart(I)I

    move-result v4

    add-int v5, p2, p4

    if-ne v4, v5, :cond_9

    .line 274
    add-int/lit8 v31, v31, -0x1

    .line 279
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v5, v21, v35

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v5, v21, v35

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 284
    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getLineTop(I)I

    move-result v25

    .line 285
    .local v25, ht:I
    const/16 v38, 0x0

    .local v38, toppad:I
    const/16 v16, 0x0

    .line 287
    .local v16, botpad:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/OppoDialerLayout;->mIncludePad:Z

    if-eqz v4, :cond_a

    if-nez v35, :cond_a

    .line 288
    invoke-virtual {v2}, Landroid/text/DialerStaticLayout;->getTopPadding()I

    move-result v38

    .line 289
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/OppoDialerLayout;->mTopPadding:I

    .line 290
    sub-int v25, v25, v38

    .line 292
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/OppoDialerLayout;->mIncludePad:Z

    if-eqz v4, :cond_b

    if-eqz v28, :cond_b

    .line 293
    invoke-virtual {v2}, Landroid/text/DialerStaticLayout;->getBottomPadding()I

    move-result v16

    .line 294
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/OppoDialerLayout;->mBottomPadding:I

    .line 295
    add-int v25, v25, v16

    .line 298
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v5, 0x0

    sub-int v6, p4, p3

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v5, 0x1

    sub-int v6, v36, v22

    add-int v6, v6, v25

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/OppoDialerLayout;->mEllipsize:Z

    if-eqz v4, :cond_11

    .line 306
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 307
    .local v27, ints:[I
    const/4 v4, 0x3

    const/high16 v5, -0x8000

    aput v5, v27, v4

    .line 312
    :goto_6
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/text/Layout$Directions;

    move-object/from16 v32, v0

    .line 314
    .local v32, objects:[Landroid/text/Layout$Directions;
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 315
    const/4 v5, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getLineStart(I)I

    move-result v4

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getParagraphDirection(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v4

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/high16 v4, 0x2000

    :goto_8
    or-int/2addr v4, v6

    aput v4, v27, v5

    .line 319
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getLineTop(I)I

    move-result v4

    add-int v37, v4, v36

    .line 320
    .local v37, top:I
    if-lez v26, :cond_c

    .line 321
    sub-int v37, v37, v38

    .line 323
    :cond_c
    const/4 v4, 0x1

    aput v37, v27, v4

    .line 325
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getLineDescent(I)I

    move-result v18

    .line 326
    .local v18, desc:I
    add-int/lit8 v4, v31, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_d

    .line 327
    add-int v18, v18, v16

    .line 330
    :cond_d
    const/4 v4, 0x2

    aput v18, v27, v4

    .line 331
    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v5

    aput-object v5, v32, v4

    .line 333
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/OppoDialerLayout;->mEllipsize:Z

    if-eqz v4, :cond_e

    .line 334
    const/4 v4, 0x3

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getEllipsisStart(I)I

    move-result v5

    aput v5, v27, v4

    .line 335
    const/4 v4, 0x4

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/DialerStaticLayout;->getEllipsisCount(I)I

    move-result v5

    aput v5, v27, v4

    .line 338
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v5, v35, v26

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/OppoDialerLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v5, v35, v26

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 314
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 247
    .end local v2           #reflowed:Landroid/text/DialerStaticLayout;
    .end local v16           #botpad:I
    .end local v18           #desc:I
    .end local v25           #ht:I
    .end local v26           #i:I
    .end local v27           #ints:[I
    .end local v28           #islast:Z
    .end local v31           #n:I
    .end local v32           #objects:[Landroid/text/Layout$Directions;
    .end local v37           #top:I
    .end local v38           #toppad:I
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 256
    .restart local v28       #islast:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 261
    .restart local v2       #reflowed:Landroid/text/DialerStaticLayout;
    :cond_10
    invoke-virtual {v2}, Landroid/text/DialerStaticLayout;->prepare()V

    goto/16 :goto_5

    .line 309
    .restart local v16       #botpad:I
    .restart local v25       #ht:I
    .restart local v31       #n:I
    .restart local v38       #toppad:I
    :cond_11
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .restart local v27       #ints:[I
    goto/16 :goto_6

    .line 315
    .restart local v26       #i:I
    .restart local v32       #objects:[Landroid/text/Layout$Directions;
    :cond_12
    const/4 v4, 0x0

    goto :goto_8

    .line 342
    :cond_13
    sget-object v5, Landroid/text/OppoDialerLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 343
    :try_start_2
    sput-object v2, Landroid/text/OppoDialerLayout;->sStaticLayout:Landroid/text/DialerStaticLayout;

    .line 344
    invoke-virtual {v2}, Landroid/text/DialerStaticLayout;->finish()V

    .line 345
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Landroid/text/OppoDialerLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 446
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/text/OppoDialerLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 360
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .parameter "line"

    .prologue
    .line 380
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 365
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 355
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 375
    iget-object v0, p0, Landroid/text/OppoDialerLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/text/OppoDialerLayout;->mTopPadding:I

    return v0
.end method
