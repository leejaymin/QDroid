.class final Lname/kunes/android/d/g;
.super Lname/kunes/android/d/b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lname/kunes/android/e/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lname/kunes/android/d/b;-><init>(Landroid/app/Activity;Lname/kunes/android/e/a;)V

    return-void
.end method

.method private l()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lname/kunes/android/d/g;->a:Lname/kunes/android/e/a;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    const-string v1, "content://mms/%s/addr"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "type=151"

    invoke-virtual {p0}, Lname/kunes/android/d/g;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "type=137"

    :cond_0
    invoke-virtual {p0}, Lname/kunes/android/d/g;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "type=151"

    :goto_0
    iget-object v0, p0, Lname/kunes/android/d/g;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "_id"

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/g;->b:Landroid/app/Activity;

    const v1, 0x7f0600b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 4

    invoke-super {p0}, Lname/kunes/android/d/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/d/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/g;->a:Lname/kunes/android/e/a;

    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/d/g;->l()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/d/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lname/kunes/android/d/g;->l()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, v0}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v0, "address"

    invoke-virtual {v1, v0}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lname/kunes/android/d/g;->b:Landroid/app/Activity;

    const v1, 0x7f0600b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
