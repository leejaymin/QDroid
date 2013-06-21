.class public final Lname/kunes/android/launcher/activity/g/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/launcher/activity/g/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Lname/kunes/android/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/e/a;->a()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lname/kunes/android/launcher/activity/g/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Lname/kunes/android/e/a;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/ContentResolver;Ljava/lang/String;)Lname/kunes/android/e/a;
    .locals 3

    new-instance v0, Lname/kunes/android/e/a;

    invoke-static {p0, p1}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;Z)V

    return-object v0
.end method
