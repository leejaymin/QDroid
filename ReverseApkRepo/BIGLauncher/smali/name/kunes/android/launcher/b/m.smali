.class final Lname/kunes/android/launcher/b/m;
.super Landroid/os/AsyncTask;


# static fields
.field private static c:Lname/kunes/android/launcher/b/m;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lname/kunes/android/launcher/b/m;->c:Lname/kunes/android/launcher/b/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lname/kunes/android/launcher/b/m;->c:Lname/kunes/android/launcher/b/m;

    if-eqz v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/b/m;->c:Lname/kunes/android/launcher/b/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/b/m;->cancel(Z)Z

    :cond_0
    new-instance v0, Lname/kunes/android/launcher/b/m;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/b/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lname/kunes/android/launcher/b/m;->c:Lname/kunes/android/launcher/b/m;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/b/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    invoke-static {v0}, Lname/kunes/android/c/e;->b(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v3, Lname/kunes/android/launcher/b/t;

    invoke-direct {v3, p0, v2}, Lname/kunes/android/launcher/b/t;-><init>(Lname/kunes/android/launcher/b/m;Ljava/util/List;)V

    invoke-static {v0, v3}, Lname/kunes/android/e/d;->a(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Lname/kunes/android/c/e;->c(Landroid/content/ContentResolver;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private b(Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lname/kunes/android/launcher/b/m;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lname/kunes/android/c/e;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Lname/kunes/android/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lname/kunes/android/e/a;->a()I

    move-result v4

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "icon"

    iget-object v7, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lname/kunes/android/e/b;->a(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "label"

    iget-object v7, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "order_locale"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "available"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4, v3, v5}, Lname/kunes/android/c/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "icon"

    iget-object v6, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lname/kunes/android/e/b;->a(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "label"

    iget-object v6, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "order_locale"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "available"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3, v4}, Lname/kunes/android/c/e;->a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    invoke-static {v1}, Lname/kunes/android/c/e;->b(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lname/kunes/android/c/l;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/b/m;->a(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/b/m;->b(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lname/kunes/android/launcher/b/m;->b:Landroid/content/ContentResolver;

    invoke-static {v0}, Lname/kunes/android/c/e;->b(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v5

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lname/kunes/android/launcher/b/s;

    invoke-direct {v6, p0, v0}, Lname/kunes/android/launcher/b/s;-><init>(Lname/kunes/android/launcher/b/m;Ljava/lang/StringBuilder;)V

    invoke-static {v5, v6}, Lname/kunes/android/e/d;->a(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/a/a;->a(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    move v0, v3

    :goto_3
    if-nez v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lname/kunes/android/launcher/b/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lname/kunes/a/a;->a(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v1, v7

    invoke-static {v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/a/a;->a(Ljava/lang/String;)J

    move-result-wide v7

    add-long v0, v1, v7

    move-wide v1, v0

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_1
.end method
