.class public final Lname/kunes/android/launcher/b/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/b/r;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lname/kunes/android/launcher/b/r;->b(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/b/r;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lname/kunes/android/launcher/b/r;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lname/kunes/android/launcher/b/r;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method final b(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3

    iget-object v1, p0, Lname/kunes/android/launcher/b/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lname/kunes/android/c/c;->c(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lname/kunes/android/c/c;->i(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/b/r;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
