.class public final Lname/kunes/android/launcher/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static c(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lname/kunes/android/c/c;->a(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Lname/kunes/android/launcher/b/b;->c(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Lname/kunes/android/launcher/b/b;->c(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
