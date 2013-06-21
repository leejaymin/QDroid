.class final Lname/kunes/android/c/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://mms-sms/conversations/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lname/kunes/android/c/g;->a:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 6

    sget-object v1, Lname/kunes/android/c/g;->a:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "*"

    aput-object v3, v2, v0

    const-string v3, "read=0"

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://mms-sms/conversations/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v0, 0x16

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "address"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "normalized_date"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "ct_t"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "thread_id"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "status"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "body"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "type"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "read"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "person"

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-string v4, "subject"

    aput-object v4, v2, v0

    const/16 v0, 0xb

    const-string v4, "date"

    aput-object v4, v2, v0

    const/16 v0, 0xc

    const-string v4, "tr_id"

    aput-object v4, v2, v0

    const/16 v0, 0xd

    const-string v4, "msg_box"

    aput-object v4, v2, v0

    const/16 v0, 0xe

    const-string v4, "m_cls"

    aput-object v4, v2, v0

    const/16 v0, 0xf

    const-string v4, "d_rpt"

    aput-object v4, v2, v0

    const/16 v0, 0x10

    const-string v4, "m_type"

    aput-object v4, v2, v0

    const/16 v0, 0x11

    const-string v4, "v"

    aput-object v4, v2, v0

    const/16 v0, 0x12

    const-string v4, "exp"

    aput-object v4, v2, v0

    const/16 v0, 0x13

    const-string v4, "pri"

    aput-object v4, v2, v0

    const/16 v0, 0x14

    const-string v4, "rr"

    aput-object v4, v2, v0

    const/16 v0, 0x15

    const-string v4, "m_size"

    aput-object v4, v2, v0

    const-string v5, "normalized_date DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    sget-object v1, Lname/kunes/android/c/g;->a:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "*"

    aput-object v4, v2, v0

    const-string v5, "normalized_date DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
