.class public Lcom/superdroid/sqd/util/SqdUtil;
.super Ljava/lang/Object;
.source "SqdUtil.java"


# static fields
.field private static final THREADS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "conversations"

    .line 8
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/superdroid/sqd/util/SqdUtil;->THREADS_CONTENT_URI:Landroid/net/Uri;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteOneSmsOrMms(JZLcom/superdroid/sqd/util/BackgroundQueryHandler;)V
    .locals 7
    .parameter "id"
    .parameter "isSms"
    .parameter "queryHandle"

    .prologue
    const/4 v2, 0x0

    .line 26
    if-eqz p2, :cond_0

    const-string v0, "content://sms"

    move-object v6, v0

    .line 27
    .local v6, uriString:Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 29
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    move-object v0, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/superdroid/sqd/util/BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    return-void

    .line 26
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #uriString:Ljava/lang/String;
    :cond_0
    const-string v0, "content://mms"

    move-object v6, v0

    goto :goto_0
.end method

.method public static deleteOneThread(JLcom/superdroid/sqd/util/BackgroundQueryHandler;)V
    .locals 6
    .parameter "id"
    .parameter "queryHandle"

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-object v0, Lcom/superdroid/sqd/util/SqdUtil;->THREADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 34
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/superdroid/sqd/util/BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static markAsRead(JLcom/superdroid/sqd/util/BackgroundQueryHandler;)V
    .locals 7
    .parameter "threadId"
    .parameter "queryHandle"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 12
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/superdroid/sqd/util/SqdUtil;->THREADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 18
    .local v3, threadUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 19
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    const-string v5, "read = 0"

    .line 22
    .local v5, where:Ljava/lang/String;
    const/4 v1, 0x3

    move-object v0, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/superdroid/sqd/util/BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
