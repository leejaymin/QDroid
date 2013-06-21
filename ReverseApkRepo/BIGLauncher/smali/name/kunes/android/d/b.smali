.class public abstract Lname/kunes/android/d/b;
.super Ljava/lang/Object;


# instance fields
.field final a:Lname/kunes/android/e/a;

.field final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lname/kunes/android/e/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/d/b;->b:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    return-void
.end method

.method private l()I
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private m()I
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lname/kunes/android/d/b;->l()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/d/b;->l()I

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

.method public g()Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/d/b;->a:Lname/kunes/android/e/a;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/d/b;->m()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/d/b;->m()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/d/b;->m()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
