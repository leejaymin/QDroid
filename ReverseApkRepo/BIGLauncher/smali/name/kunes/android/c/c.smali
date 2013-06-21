.class public final Lname/kunes/android/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 6

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "starred=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "1"

    aput-object v5, v4, v0

    const-string v5, "display_name ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "has_phone_number=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "1"

    aput-object v5, v4, v0

    const-string v5, "display_name ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {p0, p1, v0}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id=? AND mimetype=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "mimetype"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lname/kunes/android/c/c;->d(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-static {v1, p1, v2}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lname/kunes/android/c/h;

    invoke-direct {v2, p0, p2, v0}, Lname/kunes/android/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lname/kunes/android/e/d;->a(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    aget-object v0, v0, v3

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lname/kunes/android/c/c;->b(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    const-string v5, "display_name ASC"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {p0, p1, v0}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lname/kunes/android/e/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {p0, p1, v0}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lname/kunes/android/c/c;->b(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "vnd.android.cursor.item/im"

    invoke-static {p0, p1, v0}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    move-object v0, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, v0, v6}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public static e(Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "vnd.android.cursor.item/note"

    invoke-static {p0, p1, v0}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "vnd.android.cursor.item/website"

    invoke-static {p0, p1, v0}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lname/kunes/android/c/c;->d(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v1

    const-string v2, "starred"

    invoke-virtual {v1, v2}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 5

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "starred"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "starred"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lname/kunes/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lname/kunes/a/d;->a(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lname/kunes/android/g/a;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
