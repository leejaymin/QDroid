.class public final Lname/kunes/android/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lname/kunes/android/e/a;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    iput-object p1, p0, Lname/kunes/android/c/b;->b:Landroid/app/Activity;

    return-void
.end method

.method private k()I
    .locals 2

    iget-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-direct {p0}, Lname/kunes/android/c/b;->k()I

    move-result v1

    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x1c

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/16 v0, 0x1e

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v0, 0x1d

    :cond_2
    iget-object v1, p0, Lname/kunes/android/c/b;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/c/b;->k()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/c/b;->k()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lname/kunes/android/c/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1, v0}, Lname/kunes/android/c/c;->a(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, Lname/kunes/android/f/a;

    invoke-direct {v2, v1}, Lname/kunes/android/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lname/kunes/android/f/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lname/kunes/android/c/b;->b:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lname/kunes/android/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lname/kunes/android/c/b;->i()Ljava/sql/Date;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/c/b;->i()Ljava/sql/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x3c

    invoke-virtual {p0}, Lname/kunes/android/c/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/a/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/sql/Date;
    .locals 4

    iget-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/sql/Date;

    invoke-static {v0}, Lname/kunes/a/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v1
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/c/b;->a:Lname/kunes/android/e/a;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
