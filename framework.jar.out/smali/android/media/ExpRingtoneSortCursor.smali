.class public Landroid/media/ExpRingtoneSortCursor;
.super Landroid/database/CursorWrapper;
.source "ExpRingtoneSortCursor.java"


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mPos:I

.field mTelcelRingtonePosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 26
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    .line 27
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/ExpRingtoneSortCursor;->mTelcelRingtonePosition:I

    .line 30
    iput-object p1, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    .line 31
    const-string/jumbo v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, column:I
    iget-object v3, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, i:I
    const/4 v2, 0x0

    .line 35
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v3, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "Telcel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    iput v1, p0, Landroid/media/ExpRingtoneSortCursor;->mTelcelRingtonePosition:I

    .line 43
    .end local v1           #i:I
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 35
    .restart local v1       #i:I
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 77
    iget v0, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/media/ExpRingtoneSortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/ExpRingtoneSortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/media/ExpRingtoneSortCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/media/ExpRingtoneSortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/ExpRingtoneSortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 46
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/media/ExpRingtoneSortCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/media/ExpRingtoneSortCursor;->mTelcelRingtonePosition:I

    if-eq v1, v0, :cond_1

    .line 47
    iput p1, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    .line 48
    if-nez p1, :cond_0

    .line 49
    iget-object v0, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/media/ExpRingtoneSortCursor;->mTelcelRingtonePosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 50
    :cond_0
    iget v0, p0, Landroid/media/ExpRingtoneSortCursor;->mTelcelRingtonePosition:I

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2

    .line 51
    iget-object v0, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0

    .line 54
    :cond_1
    iput p1, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    .line 56
    :cond_2
    if-gez p1, :cond_3

    .line 57
    iput v1, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/media/ExpRingtoneSortCursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 60
    invoke-virtual {p0}, Landroid/media/ExpRingtoneSortCursor;->getCount()I

    move-result v0

    iput v0, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    .line 62
    :cond_4
    iget-object v0, p0, Landroid/media/ExpRingtoneSortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/media/ExpRingtoneSortCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/media/ExpRingtoneSortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
