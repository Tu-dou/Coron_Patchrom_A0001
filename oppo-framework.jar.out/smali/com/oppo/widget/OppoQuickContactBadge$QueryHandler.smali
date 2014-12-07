.class Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoQuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoQuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    .line 204
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, lookupUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 211
    .local v3, createUri:Landroid/net/Uri;
    const-wide/16 v1, -0x1

    .line 212
    .local v1, contactId:J
    const/4 v6, 0x0

    .line 215
    .local v6, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 244
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 250
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V
    invoke-static {v7, v1, v2, p2}, Lcom/oppo/widget/OppoQuickContactBadge;->access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V

    .line 255
    :cond_2
    :goto_1
    return-void

    .line 217
    .restart local p2
    :pswitch_0
    const/4 v6, 0x1

    .line 218
    :try_start_0
    const-string v8, "tel"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 221
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 222
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_ID_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 223
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 225
    goto :goto_0

    .line 230
    .end local v4           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v6, 0x1

    .line 231
    const-string v8, "mailto"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 234
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_ID_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 236
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 243
    .end local v4           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_3

    .line 244
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 251
    :cond_4
    if-eqz v3, :cond_2

    .line 253
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    const-wide/16 v8, -0x1

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V
    invoke-static {v7, v8, v9, p2}, Lcom/oppo/widget/OppoQuickContactBadge;->access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
