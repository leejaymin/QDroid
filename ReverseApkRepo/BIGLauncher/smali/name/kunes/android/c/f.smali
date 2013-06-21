.class final Lname/kunes/android/c/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/Comparator;

.field private final e:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lname/kunes/android/c/f;->c:Ljava/util/HashMap;

    new-instance v0, Lname/kunes/android/c/o;

    invoke-direct {v0, p0}, Lname/kunes/android/c/o;-><init>(Lname/kunes/android/c/f;)V

    iput-object v0, p0, Lname/kunes/android/c/f;->d:Ljava/util/Comparator;

    new-instance v0, Lname/kunes/android/c/n;

    invoke-direct {v0, p0}, Lname/kunes/android/c/n;-><init>(Lname/kunes/android/c/f;)V

    iput-object v0, p0, Lname/kunes/android/c/f;->e:Ljava/util/Comparator;

    iput-object p1, p0, Lname/kunes/android/c/f;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/c/f;->a:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 4

    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "address"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "date"

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lname/kunes/android/c/f;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lname/kunes/android/c/f;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/c/f;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lname/kunes/android/c/f;->a:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lname/kunes/android/e/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lname/kunes/android/c/m;

    invoke-direct {v1, p0}, Lname/kunes/android/c/m;-><init>(Lname/kunes/android/c/f;)V

    invoke-static {v0, v1}, Lname/kunes/android/e/d;->a(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    return-void
.end method

.method static synthetic b(Lname/kunes/android/c/f;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/c/f;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lname/kunes/android/c/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/c/f;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lname/kunes/android/c/d;->a:Landroid/net/Uri;

    const-string v1, "thread_id IS NOT NULL AND (address IS NOT NULL OR person IS NOT NULL) AND (type <>3)"

    invoke-direct {p0, v0, v1}, Lname/kunes/android/c/f;->a(Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v0, Lname/kunes/android/c/k;->a:Landroid/net/Uri;

    const-string v1, "thread_id IS NOT NULL AND msg_box <> 3"

    invoke-direct {p0, v0, v1}, Lname/kunes/android/c/f;->a(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/c/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lname/kunes/android/c/f;->d:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lname/kunes/android/c/f;->a(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
