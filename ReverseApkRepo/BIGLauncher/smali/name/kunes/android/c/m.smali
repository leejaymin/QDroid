.class final Lname/kunes/android/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private synthetic a:Lname/kunes/android/c/f;


# direct methods
.method constructor <init>(Lname/kunes/android/c/f;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 5

    iget-object v0, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->c(Lname/kunes/android/c/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lname/kunes/a/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lname/kunes/android/d/b;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lname/kunes/android/d/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lname/kunes/android/d/b;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lname/kunes/android/d/b;->d()Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->b(Lname/kunes/android/c/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->b(Lname/kunes/android/c/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->b(Lname/kunes/android/c/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-static {v3}, Lname/kunes/android/c/f;->a(Lname/kunes/android/c/f;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/c/m;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->b(Lname/kunes/android/c/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
