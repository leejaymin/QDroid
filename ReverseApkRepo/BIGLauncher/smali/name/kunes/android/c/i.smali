.class public final Lname/kunes/android/c/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lname/kunes/android/c/g;->a:Landroid/net/Uri;

    sput-object v0, Lname/kunes/android/c/i;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lname/kunes/android/c/k;->a:Landroid/net/Uri;

    const-string v3, "%s=? AND %s=?"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "read"

    aput-object v5, v4, v8

    const-string v5, "thread_id"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    aput-object p1, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lname/kunes/android/c/d;->a:Landroid/net/Uri;

    const-string v4, "%s=? AND %s=?"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "read"

    aput-object v6, v5, v8

    const-string v6, "thread_id"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0}, Lname/kunes/android/c/g;->a(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lname/kunes/android/c/f;

    invoke-direct {v0, p0}, Lname/kunes/android/c/f;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/c/f;->a()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lname/kunes/android/c/g;->b(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/c/g;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
