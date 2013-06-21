.class public final Lname/kunes/android/e/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lname/kunes/android/e/a;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lname/kunes/android/e/a;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lname/kunes/android/e/c;

    invoke-direct {p0}, Lname/kunes/android/e/c;-><init>()V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private i(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->j(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/e/a;->b()I

    move-result v0

    invoke-direct {p0}, Lname/kunes/android/e/a;->c()V

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lname/kunes/android/e/a;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->j(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v2, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lname/kunes/android/e/a;->c()V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->j(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lname/kunes/android/e/a;->c()V

    return v0
.end method

.method public final f(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->j(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/e/a;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->j(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/e/b;->a([B)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lname/kunes/android/e/a;->j(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
