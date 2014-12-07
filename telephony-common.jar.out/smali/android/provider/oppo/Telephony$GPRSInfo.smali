.class public final Landroid/provider/oppo/Telephony$GPRSInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oppo/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GPRSInfo"
.end annotation


# instance fields
.field public mGprsIn:J

.field public mGprsOut:J

.field public mSimId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 4122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4119
    iput-wide v0, p0, Landroid/provider/oppo/Telephony$GPRSInfo;->mSimId:J

    .line 4120
    iput-wide v0, p0, Landroid/provider/oppo/Telephony$GPRSInfo;->mGprsIn:J

    .line 4121
    iput-wide v0, p0, Landroid/provider/oppo/Telephony$GPRSInfo;->mGprsOut:J

    .line 4124
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/provider/oppo/Telephony$GPRSInfo;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 4126
    new-instance v0, Landroid/provider/oppo/Telephony$GPRSInfo;

    invoke-direct {v0}, Landroid/provider/oppo/Telephony$GPRSInfo;-><init>()V

    .line 4127
    .local v0, info:Landroid/provider/oppo/Telephony$GPRSInfo;
    const-string v1, "sim_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/oppo/Telephony$GPRSInfo;->mSimId:J

    .line 4128
    const-string v1, "gprs_in"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/oppo/Telephony$GPRSInfo;->mGprsIn:J

    .line 4129
    const-string v1, "gprs_out"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/oppo/Telephony$GPRSInfo;->mGprsOut:J

    .line 4130
    return-object v0
.end method

.method public static getGprsInBySim(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    .line 4134
    cmp-long v0, p1, v7

    if-gtz v0, :cond_1

    move-wide v0, v7

    .line 4146
    :cond_0
    :goto_0
    return-wide v0

    .line 4135
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "gprs_in"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4138
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4139
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4142
    if-eqz v6, :cond_0

    .line 4143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4142
    :cond_2
    if-eqz v6, :cond_3

    .line 4143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v7

    .line 4146
    goto :goto_0

    .line 4142
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 4143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getGprsInfoBySim(Landroid/content/Context;J)Landroid/provider/oppo/Telephony$GPRSInfo;
    .locals 8
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 4166
    new-instance v7, Landroid/provider/oppo/Telephony$GPRSInfo;

    invoke-direct {v7}, Landroid/provider/oppo/Telephony$GPRSInfo;-><init>()V

    .line 4167
    .local v7, info:Landroid/provider/oppo/Telephony$GPRSInfo;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 4179
    .end local v7           #info:Landroid/provider/oppo/Telephony$GPRSInfo;
    :cond_0
    :goto_0
    return-object v7

    .line 4168
    .restart local v7       #info:Landroid/provider/oppo/Telephony$GPRSInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4171
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4172
    invoke-static {v6}, Landroid/provider/oppo/Telephony$GPRSInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/oppo/Telephony$GPRSInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 4175
    .end local v7           #info:Landroid/provider/oppo/Telephony$GPRSInfo;
    if-eqz v6, :cond_0

    .line 4176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4175
    .restart local v7       #info:Landroid/provider/oppo/Telephony$GPRSInfo;
    :cond_2
    if-eqz v6, :cond_0

    .line 4176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4175
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getGprsOutBySim(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    .line 4150
    cmp-long v0, p1, v7

    if-gtz v0, :cond_1

    move-wide v0, v7

    .line 4162
    :cond_0
    :goto_0
    return-wide v0

    .line 4151
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/oppo/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "gprs_out"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4154
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4155
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4158
    if-eqz v6, :cond_0

    .line 4159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4158
    :cond_2
    if-eqz v6, :cond_3

    .line 4159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v7

    .line 4162
    goto :goto_0

    .line 4158
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 4159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static resetGprsBySim(Landroid/content/Context;J)I
    .locals 5
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 4183
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 4187
    :goto_0
    return v1

    .line 4184
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4185
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "gprs_in"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4186
    const-string v2, "gprs_out"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/oppo/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
