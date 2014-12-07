.class public Loppo/content/res/OppoExtraConfiguration;
.super Ljava/lang/Object;
.source "OppoExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_FLIPFONT:I = 0x20000000

.field public static final THEME_NEW_SKIN_CHANGED:I = 0x9000000

.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field public mFlipFont:I

.field public mThemeChanged:I

.field public mThemeChangedFlags:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "OppoExtraConfiguration"

    iput-object v0, p0, Loppo/content/res/OppoExtraConfiguration;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoExtraConfiguration;->DEBUG:Z

    .line 39
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .parameter "i"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, flag:Z
    const/high16 v1, 0x800

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 42
    check-cast p1, Loppo/content/res/OppoExtraConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Loppo/content/res/OppoExtraConfiguration;->compareTo(Loppo/content/res/OppoExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .parameter "extraconfiguration"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, i:I
    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v3, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    sub-int v0, v2, v3

    .line 49
    if-nez v0, :cond_0

    move v1, v0

    .line 57
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    return v1

    .line 55
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v3, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    sub-int v0, v2, v3

    move v1, v0

    .line 57
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public diff(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 3
    .parameter "extraconfiguration"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, i:I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 107
    const/high16 v1, 0x800

    or-int/2addr v0, v1

    .line 111
    :cond_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 112
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 114
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, i:I
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    add-int v0, v1, v2

    .line 145
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 138
    return-void
.end method

.method public setTo(Loppo/content/res/OppoExtraConfiguration;)V
    .locals 2
    .parameter "extraconfiguration"

    .prologue
    .line 61
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 62
    iget-wide v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 63
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 64
    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iput v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 82
    iput v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, stringbuilder:Ljava/lang/StringBuilder;
    const-string v1, "mThemeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "mThemeChangedFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "mFlipFont = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 3
    .parameter "extraconfiguration"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, i:I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 89
    const/high16 v1, 0x800

    or-int/2addr v0, v1

    .line 91
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 92
    iget-wide v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 95
    :cond_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 96
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 97
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 99
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 128
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
