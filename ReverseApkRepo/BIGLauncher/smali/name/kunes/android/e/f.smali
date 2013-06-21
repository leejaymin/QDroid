.class public final Lname/kunes/android/e/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lname/kunes/android/e/c;

    invoke-direct {v0}, Lname/kunes/android/e/c;-><init>()V

    sput-object v0, Lname/kunes/android/e/f;->a:Landroid/database/Cursor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    :try_start_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/e/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lname/kunes/android/e/c;

    invoke-direct {v0}, Lname/kunes/android/e/c;-><init>()V

    goto :goto_0
.end method

.method public static final a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/e/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lname/kunes/android/e/c;

    invoke-direct {v0}, Lname/kunes/android/e/c;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lname/kunes/android/e/c;

    invoke-direct {p0}, Lname/kunes/android/e/c;-><init>()V

    :cond_0
    return-object p0
.end method
