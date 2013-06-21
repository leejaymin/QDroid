.class public final Lname/kunes/android/launcher/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/graphics/drawable/Drawable;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/b/f;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lname/kunes/android/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lname/kunes/android/launcher/b/f;->a:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0, p1, v0}, Lname/kunes/android/launcher/b/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-direct {p0, p1}, Lname/kunes/android/launcher/b/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lname/kunes/android/e/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p2, v0}, Lname/kunes/android/e/a;->g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lname/kunes/android/launcher/b/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-direct {p0, p1}, Lname/kunes/android/launcher/b/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
