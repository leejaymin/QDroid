.class public final Lname/kunes/android/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "new"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lname/kunes/android/c/a;->b:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "new"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "messageid"

    aput-object v2, v0, v1

    sput-object v0, Lname/kunes/android/c/a;->c:[Ljava/lang/String;

    sput v3, Lname/kunes/android/c/a;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)I
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    const-string v2, "new=1"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "%s=? AND %s=?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "new"

    aput-object v2, v1, v5

    const-string v2, "type"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v4, v5

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    sget-object v1, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/c/a;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lname/kunes/android/c/a;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lname/kunes/android/e/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;Z)V

    const-string v0, "number"

    invoke-virtual {v1, v0}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    sget-object v1, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/c/a;->c:[Ljava/lang/String;

    const-string v3, "messageid IS NULL"

    const-string v5, "_id DESC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    sget-object v3, Lname/kunes/android/c/a;->b:[Ljava/lang/String;

    const-string v6, "_id DESC"

    move-object v1, p0

    move-object v5, v4

    invoke-static/range {v1 .. v6}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v1, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/c/a;->c:[Ljava/lang/String;

    const-string v3, "number=? AND messageid IS NULL"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v5, "_id DESC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/c/a;->b:[Ljava/lang/String;

    const-string v3, "number=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v5, "_id DESC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    sget-object v1, Lname/kunes/android/c/a;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/c/a;->b:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
