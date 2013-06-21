.class final Lname/kunes/android/launcher/b/u;
.super Landroid/database/ContentObserver;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lname/kunes/android/launcher/b/e;->a()V

    sget-object v0, Lname/kunes/android/launcher/b/q;->f:Lname/kunes/android/launcher/b/c;

    iget-object v0, v0, Lname/kunes/android/launcher/b/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lname/kunes/android/launcher/b/q;->e:Lname/kunes/android/launcher/b/c;

    iget-object v0, v0, Lname/kunes/android/launcher/b/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
