.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$DataComparator;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final SUPPORT_EXTEND_DATA_NO:I = 0x0

.field public static final SUPPORT_EXTEND_DATA_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private comms:[Ljava/lang/String;

.field private containExtendData:I

.field private final elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private pids:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 1235
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2
    .parameter "elapsedRealtime"
    .parameter "initialSize"

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 222
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 223
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 224
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 225
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 226
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 227
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 228
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 229
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 230
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 231
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 232
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 236
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    .line 237
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    .line 239
    iput v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 261
    const/4 v0, 0x1

    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v0, v1, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkStats;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/NetworkStats;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/NetworkStats;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    return-object v0
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 11
    .parameter "recycle"
    .parameter
    .parameter "limitUid"
    .parameter "includeTags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, limitIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    .line 681
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 683
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 684
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 685
    iput v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 686
    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 687
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 688
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 689
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 690
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 691
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 693
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v6, :cond_7

    .line 694
    if-eq p3, v10, :cond_0

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_4

    :cond_0
    move v3, v5

    .line 695
    .local v3, matchesUid:Z
    :goto_2
    if-eqz p2, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v2, v5

    .line 697
    .local v2, matchesIface:Z
    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 699
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_6

    if-nez p4, :cond_6

    .line 693
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 681
    .end local v0           #entry:Landroid/net/NetworkStats$Entry;
    .end local v1           #i:I
    .end local v2           #matchesIface:Z
    .end local v3           #matchesUid:Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .restart local v0       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v1       #i:I
    :cond_4
    move v3, v4

    .line 694
    goto :goto_2

    .restart local v3       #matchesUid:Z
    :cond_5
    move v2, v4

    .line 695
    goto :goto_3

    .line 701
    .restart local v2       #matchesIface:Z
    :cond_6
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 702
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 703
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 704
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 705
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_4

    .line 708
    .end local v2           #matchesIface:Z
    .end local v3           #matchesUid:Z
    :cond_7
    return-object v0
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .parameter "set"

    .prologue
    .line 974
    packed-switch p0, :pswitch_data_0

    .line 982
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 976
    :pswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 978
    :pswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 980
    :pswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 14
    .parameter "left"
    .parameter "right"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 730
    .local p2, observer:Landroid/net/NetworkStats$NonMonotonicObserver;,"Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, cookie:Ljava/lang/Object;,"TC;"
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, p1, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v10, v0, v2

    .line 731
    .local v10, deltaRealtime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gez v0, :cond_1

    .line 732
    if-eqz p2, :cond_0

    .line 733
    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 735
    :cond_0
    const-wide/16 v10, 0x0

    .line 739
    :cond_1
    new-instance v12, Landroid/net/NetworkStats$Entry;

    invoke-direct {v12}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 740
    .local v12, entry:Landroid/net/NetworkStats$Entry;
    new-instance v13, Landroid/net/NetworkStats;

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v13, v10, v11, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 744
    .local v13, result:Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v9

    .line 745
    .local v9, containExtendData:Z
    invoke-virtual {v13, v9}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 746
    invoke-virtual {p1}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v0

    if-eq v0, v9, :cond_2

    .line 747
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subtract, attribute value is not the same. left.containExtendData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    if-ge v5, v0, :cond_a

    .line 751
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 752
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, v5

    iput v0, v12, Landroid/net/NetworkStats$Entry;->uid:I

    .line 753
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, v5

    iput v0, v12, Landroid/net/NetworkStats$Entry;->set:I

    .line 754
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, v5

    iput v0, v12, Landroid/net/NetworkStats$Entry;->tag:I

    .line 758
    iget-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    array-length v0, v0

    if-le v0, v5, :cond_3

    .line 759
    iget-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v0, v0, v5

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->pid:J

    .line 761
    :cond_3
    iget-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v5, :cond_4

    .line 762
    iget-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, v12, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 772
    :cond_4
    if-eqz v9, :cond_6

    iget-object v1, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, v12, Landroid/net/NetworkStats$Entry;->tag:I

    iget-wide v6, v12, Landroid/net/NetworkStats$Entry;->pid:J

    iget-object v8, v12, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/net/NetworkStats;->findIndexHintedWithProcessInfo(Ljava/lang/String;IIIIJLjava/lang/String;)I

    move-result v7

    .line 777
    .local v7, j:I
    :goto_1
    const/4 v0, -0x1

    if-ne v7, v0, :cond_7

    .line 779
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, v5

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 780
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v0, v0, v5

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 781
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v0, v0, v5

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 782
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v0, v0, v5

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 783
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, v0, v5

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 805
    :cond_5
    :goto_2
    invoke-virtual {v13, v12}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 750
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 772
    .end local v7           #j:I
    :cond_6
    iget-object v1, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, v12, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v7

    goto :goto_1

    .line 786
    .restart local v7       #j:I
    :cond_7
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 787
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 788
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 789
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 790
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, v0, v5

    iget-object v2, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 792
    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 794
    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v3, p2

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p3

    .line 795
    invoke-interface/range {v3 .. v8}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 797
    :cond_9
    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 798
    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 799
    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 800
    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 801
    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v12, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_2

    .line 808
    .end local v7           #j:I
    :cond_a
    return-object v13
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"

    .prologue
    .line 312
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v5, 0x1

    .line 328
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 329
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 330
    .local v0, newLength:I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 331
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 332
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 333
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 334
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 335
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 336
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 337
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 338
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 342
    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v5, v1, :cond_0

    .line 343
    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    .line 344
    iget-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    .line 349
    .end local v0           #newLength:I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 350
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 351
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 352
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 353
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v3, v1, v2

    .line 354
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v3, v1, v2

    .line 355
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v3, v1, v2

    .line 356
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v3, v1, v2

    .line 357
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v3, v1, v2

    .line 361
    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v5, v1, :cond_1

    .line 362
    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->pid:J

    aput-wide v3, v1, v2

    .line 363
    iget-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 366
    :cond_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 368
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"

    .prologue
    .line 319
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 295
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v5, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 299
    .local v0, clone:Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 303
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .parameter "another"

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 485
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 486
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 8
    .parameter "entry"

    .prologue
    .line 462
    iget v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v1, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v7

    .line 466
    .local v7, i:I
    :goto_0
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 476
    :goto_1
    return-object p0

    .line 462
    .end local v7           #i:I
    :cond_0
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget-wide v5, p1, Landroid/net/NetworkStats$Entry;->pid:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkStats;->findIndexWithPid(Ljava/lang/String;IIIJ)I

    move-result v7

    goto :goto_0

    .line 470
    .restart local v7       #i:I
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, v7

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v1, v3

    aput-wide v1, v0, v7

    .line 471
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, v7

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v1, v3

    aput-wide v1, v0, v7

    .line 472
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, v7

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    aput-wide v1, v0, v7

    .line 473
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, v7

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v1, v3

    aput-wide v1, v0, v7

    .line 474
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v0, v7

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v1, v3

    aput-wide v1, v0, v7

    goto :goto_1
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"

    .prologue
    .line 429
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJLjava/lang/String;J)Landroid/net/NetworkStats;
    .locals 19
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "pid"
    .parameter "comm"
    .parameter "operations"

    .prologue
    .line 438
    new-instance v1, Landroid/net/NetworkStats$Entry;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    invoke-direct/range {v1 .. v18}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .parameter "iface"
    .parameter "uid"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    return v0
.end method

.method public doGetTopRecords(ILandroid/net/NetworkStats$DataComparator;Landroid/net/NetworkStats;)V
    .locals 16
    .parameter "countToGet"
    .parameter "comparator"
    .parameter "targetRes"

    .prologue
    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats;->size()I

    move-result v13

    .line 1083
    .local v13, totalSize:I
    div-int v1, v13, p1

    .line 1084
    .local v1, batchCount:I
    rem-int v9, v13, p1

    .line 1085
    .local v9, remain:I
    const/4 v10, 0x0

    .line 1086
    .local v10, sortArray:[Ljava/lang/Integer;
    const/4 v14, 0x1

    if-gt v1, v14, :cond_4

    .line 1088
    new-array v10, v13, [Ljava/lang/Integer;

    .line 1089
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    if-ge v7, v13, :cond_0

    .line 1090
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v7

    .line 1089
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1092
    :cond_0
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1122
    :cond_1
    :goto_1
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1123
    .local v3, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 1124
    .local v2, doAdd:Z
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkStats$DataComparator;->isProcessRootUid()Z

    move-result v6

    .line 1125
    .local v6, isProcessRootUid:Z
    const/4 v5, 0x0

    .local v5, index:I
    :goto_2
    move/from16 v0, p1

    if-ge v5, v0, :cond_d

    .line 1127
    aget-object v14, v10, v5

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1128
    .local v11, sortIndex:I
    if-ltz v11, :cond_2

    if-lt v11, v13, :cond_a

    .line 1129
    :cond_2
    const-string v14, "NetworkStats"

    const-string/jumbo v15, "sortIndex out of index."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1095
    .end local v2           #doAdd:Z
    .end local v3           #entry:Landroid/net/NetworkStats$Entry;
    .end local v5           #index:I
    .end local v6           #isProcessRootUid:Z
    .end local v7           #j:I
    .end local v11           #sortIndex:I
    :cond_4
    mul-int/lit8 v14, p1, 0x2

    new-array v10, v14, [Ljava/lang/Integer;

    .line 1096
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_4
    move/from16 v0, p1

    if-ge v7, v0, :cond_5

    .line 1097
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v7

    .line 1096
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1099
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    add-int/lit8 v14, v1, -0x1

    if-ge v4, v14, :cond_7

    .line 1100
    const/4 v8, 0x0

    .local v8, k:I
    :goto_6
    move/from16 v0, p1

    if-ge v8, v0, :cond_6

    .line 1101
    add-int v14, p1, v8

    add-int/lit8 v15, v4, 0x1

    mul-int v15, v15, p1

    add-int/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    .line 1100
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1103
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1099
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1107
    .end local v8           #k:I
    :cond_7
    if-lez v9, :cond_1

    .line 1108
    sub-int v12, v13, v9

    .line 1109
    .local v12, start:I
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_7
    move/from16 v0, p1

    if-ge v8, v0, :cond_9

    .line 1110
    if-ge v8, v9, :cond_8

    .line 1111
    add-int v14, p1, v8

    add-int v15, v12, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    .line 1109
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1114
    :cond_8
    add-int v14, p1, v8

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    goto :goto_8

    .line 1117
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    .line 1132
    .end local v4           #i:I
    .end local v8           #k:I
    .end local v12           #start:I
    .restart local v2       #doAdd:Z
    .restart local v3       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v5       #index:I
    .restart local v6       #isProcessRootUid:Z
    .restart local v11       #sortIndex:I
    :cond_a
    if-eqz v6, :cond_c

    .line 1133
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/NetworkStats;->uid:[I

    aget v14, v14, v11

    if-nez v14, :cond_b

    .line 1134
    const/4 v2, 0x1

    .line 1141
    :cond_b
    :goto_9
    if-eqz v2, :cond_3

    .line 1142
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 1143
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1144
    const/4 v2, 0x0

    goto :goto_3

    .line 1137
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/NetworkStats;->uid:[I

    aget v14, v14, v11

    if-eqz v14, :cond_b

    .line 1138
    const/4 v2, 0x1

    goto :goto_9

    .line 1147
    .end local v11           #sortIndex:I
    :cond_d
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "prefix"
    .parameter "pw"

    .prologue
    const/4 v5, 0x1

    .line 923
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    const-string v3, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 928
    const-string v3, "NetworkStats: size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 929
    const-string v3, "NetworkStats: containExtendData="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/net/NetworkStats;->containExtendData:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 930
    const/4 v2, 0x0

    .line 931
    .local v2, pidsLen:I
    const/4 v0, 0x0

    .line 932
    .local v0, commsLen:I
    iget v3, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v5, v3, :cond_1

    .line 933
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v3, :cond_0

    .line 934
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    array-length v2, v3

    .line 936
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 937
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    array-length v0, v3

    .line 940
    :cond_1
    const-string v3, " pids.len ="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 941
    const-string v3, " comms.len ="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 943
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_4

    .line 944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    const-string v3, "  ["

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    const-string v3, " iface="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    const-string v3, " uid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 948
    const-string v3, " set="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    const-string v3, " tag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string v3, " rxBytes="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 951
    const-string v3, " rxPackets="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 952
    const-string v3, " txBytes="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 953
    const-string v3, " txPackets="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 957
    iget v3, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v5, v3, :cond_3

    .line 958
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v3, :cond_2

    if-le v2, v1, :cond_2

    .line 959
    const-string v3, " pids="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v3, v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 961
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v3, :cond_3

    if-le v0, v1, :cond_3

    .line 962
    const-string v3, " comms="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    :cond_3
    const-string v3, " operations="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 968
    :cond_4
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 494
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 495
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    .end local v0           #i:I
    :goto_1
    return v0

    .line 494
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "hintIndex"

    .prologue
    .line 527
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 528
    div-int/lit8 v0, v2, 0x2

    .line 532
    .local v0, halfOffset:I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 533
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 538
    .local v1, i:I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    .end local v0           #halfOffset:I
    .end local v1           #i:I
    :goto_2
    return v1

    .line 535
    .restart local v0       #halfOffset:I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1       #i:I
    goto :goto_1

    .line 527
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v0           #halfOffset:I
    .end local v1           #i:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public findIndexHintedWithProcessInfo(Ljava/lang/String;IIIIJLjava/lang/String;)I
    .locals 5
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "hintIndex"
    .parameter "pid"
    .parameter "processName"

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 552
    invoke-virtual/range {p0 .. p5}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v1

    .line 573
    :cond_0
    :goto_0
    return v1

    .line 555
    :cond_1
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_4

    .line 556
    div-int/lit8 v0, v2, 0x2

    .line 560
    .local v0, halfOffset:I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    .line 561
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 566
    .local v1, i:I
    :goto_2
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    if-eqz p8, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    .end local v1           #i:I
    :cond_3
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1       #i:I
    goto :goto_2

    .line 573
    .end local v0           #halfOffset:I
    .end local v1           #i:I
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public findIndexWithPid(Ljava/lang/String;IIIJ)I
    .locals 3
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "pid"

    .prologue
    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 511
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v1, v1, v0

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    .end local v0           #i:I
    :goto_1
    return v0

    .line 510
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 400
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .prologue
    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSpecifiedTopRecords(II)Landroid/net/NetworkStats;
    .locals 8
    .parameter "countForRootUid"
    .parameter "countForNonRootUid"

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 1054
    .local v5, totalSize:I
    if-ge p1, v5, :cond_0

    if-lt p2, v5, :cond_1

    .line 1076
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1060
    .restart local p0
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1062
    .local v1, initCount:I
    new-instance v4, Landroid/net/NetworkStats;

    iget-wide v6, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-direct {v4, v6, v7, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1063
    .local v4, targetRes:Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 1066
    new-instance v3, Landroid/net/NetworkStats$DataComparator;

    const/4 v6, 0x1

    invoke-direct {v3, p0, v6, v5}, Landroid/net/NetworkStats$DataComparator;-><init>(Landroid/net/NetworkStats;ZI)V

    .line 1067
    .local v3, rootUidComparator:Landroid/net/NetworkStats$DataComparator;
    invoke-virtual {p0, p1, v3, v4}, Landroid/net/NetworkStats;->doGetTopRecords(ILandroid/net/NetworkStats$DataComparator;Landroid/net/NetworkStats;)V

    .line 1070
    new-instance v2, Landroid/net/NetworkStats$DataComparator;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6, v5}, Landroid/net/NetworkStats$DataComparator;-><init>(Landroid/net/NetworkStats;ZI)V

    .line 1071
    .local v2, nonRootUidComparator:Landroid/net/NetworkStats$DataComparator;
    invoke-virtual {p0, p2, v2, v4}, Landroid/net/NetworkStats;->doGetTopRecords(ILandroid/net/NetworkStats$DataComparator;Landroid/net/NetworkStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v4

    .line 1073
    goto :goto_0

    .line 1074
    .end local v1           #initCount:I
    .end local v2           #nonRootUidComparator:Landroid/net/NetworkStats$DataComparator;
    .end local v3           #rootUidComparator:Landroid/net/NetworkStats$DataComparator;
    .end local v4           #targetRes:Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "NetworkStats"

    const-string v7, "getSpecifiedTopRecords failed, just return all! Error:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .parameter "recycle"

    .prologue
    .line 649
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .parameter "recycle"
    .parameter "limitUid"

    .prologue
    .line 657
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .parameter "recycle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, limitIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 5

    .prologue
    .line 641
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 642
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .parameter "recycle"

    .prologue
    .line 669
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 597
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 598
    .local v3, ifaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUniqueIfaces:iface is null ? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v5, "NetworkStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUniqueIfaces:iface len ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    if-nez v8, :cond_2

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 606
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 607
    .local v2, iface:Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_0

    .line 608
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #iface:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_1
    move v5, v6

    .line 598
    goto :goto_0

    .line 599
    :cond_2
    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v6, v6

    goto :goto_1

    .line 616
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .locals 9

    .prologue
    .line 623
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 624
    .local v7, uids:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 625
    .local v6, uid:I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v6           #uid:I
    :cond_0
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 629
    .local v5, size:I
    new-array v4, v5, [I

    .line 630
    .local v4, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 631
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_1
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .parameter "i"
    .parameter "recycle"

    .prologue
    .line 375
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 376
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 378
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 379
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 380
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 381
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 382
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 383
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 387
    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v1, v2, :cond_1

    .line 388
    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 389
    iget-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 395
    :goto_1
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 396
    return-object v0

    .line 375
    .end local v0           #entry:Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .line 391
    .restart local v0       #entry:Landroid/net/NetworkStats$Entry;
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 392
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    goto :goto_1
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    .line 816
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 820
    .local v2, stats:Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 823
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 824
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 825
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 826
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 827
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 829
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_2

    .line 831
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 829
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 834
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 835
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 836
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 837
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 841
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 843
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 849
    :goto_2
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 845
    :cond_1
    iput-wide v7, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 846
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    goto :goto_2

    .line 852
    :cond_2
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 860
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 864
    .local v2, stats:Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 867
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 868
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 869
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 870
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 872
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_2

    .line 874
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 872
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 877
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 878
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 879
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 880
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 881
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 885
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v3, v3, v1

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 887
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 893
    :goto_2
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 889
    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 890
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    goto :goto_2

    .line 896
    :cond_2
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public isContainExtendData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 443
    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutData(Ljava/lang/String;)V
    .locals 8
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 1006
    const-string p1, "*"

    .line 1008
    :cond_0
    const-string v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------ NetworkStats["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] begin: ------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v4, "NetworkStats: elapsedRealtime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1011
    const-string v4, ", size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1012
    const-string v4, ", containExtendData="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/NetworkStats;->containExtendData:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1013
    const/4 v3, 0x0

    .line 1014
    .local v3, pidsLen:I
    const/4 v1, 0x0

    .line 1015
    .local v1, commsLen:I
    iget v4, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v7, v4, :cond_2

    .line 1016
    iget-object v4, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v4, :cond_1

    .line 1017
    iget-object v4, p0, Landroid/net/NetworkStats;->pids:[J

    array-length v3, v4

    .line 1019
    :cond_1
    iget-object v4, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1020
    iget-object v4, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    array-length v1, v4

    .line 1023
    :cond_2
    const-string v4, ", pids.len ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1024
    const-string v4, ", comms.len ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    const-string v4, "NetworkStats"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v4, :cond_5

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    const-string v4, "\t["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v4, " iface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v4, " uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->uid:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1031
    const-string v4, " set="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->set:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v4, " tag="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v4, " rxBytes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1034
    const-string v4, " rxPackets="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1035
    const-string v4, " txBytes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1036
    const-string v4, " txPackets="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1037
    iget v4, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v7, v4, :cond_4

    .line 1038
    iget-object v4, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v4, :cond_3

    if-le v3, v2, :cond_3

    .line 1039
    const-string v4, " pids="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1041
    :cond_3
    iget-object v4, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v4, :cond_4

    if-le v1, v2, :cond_4

    .line 1042
    const-string v4, " comms="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    :cond_4
    const-string v4, " operations="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1046
    const-string v4, "NetworkStats"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1048
    :cond_5
    const-string v4, "NetworkStats"

    const-string v5, "------------ -----------end----------- ------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void
.end method

.method public setContainExtendDataFlag(Z)V
    .locals 1
    .parameter "contain"

    .prologue
    .line 447
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 448
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 6
    .parameter "stats"

    .prologue
    .line 583
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_1

    .line 584
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 585
    .local v1, j:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 586
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 583
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v0

    goto :goto_1

    .line 591
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "right"

    .prologue
    const/4 v0, 0x0

    .line 717
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 995
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 996
    .local v0, writer:Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 997
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6
    .parameter "uids"

    .prologue
    .line 904
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v3, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 908
    .local v2, stats:Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 911
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 912
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 913
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 914
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 915
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 912
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 270
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 274
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 275
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 276
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 277
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 278
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 279
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 280
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 284
    iget v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v0, 0x1

    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 288
    iget-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method
