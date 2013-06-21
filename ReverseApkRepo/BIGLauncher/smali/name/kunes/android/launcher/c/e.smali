.class public final Lname/kunes/android/launcher/c/e;
.super Lname/kunes/android/launcher/c/b;


# instance fields
.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/c/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lname/kunes/android/launcher/c/e;->b:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;
    .locals 3

    sget v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    const-string v1, "action"

    invoke-static {v0, p2, v1}, Lname/kunes/android/launcher/c/e;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lname/kunes/android/launcher/a/i;->a(Landroid/app/Activity;Ljava/lang/String;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    instance-of v1, v0, Lname/kunes/android/launcher/a/e;

    instance-of v2, v0, Lname/kunes/android/launcher/a/l;

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method private static c(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screen_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screen_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/a/b/a;

    iget-object v1, p0, Lname/kunes/android/launcher/c/e;->b:Landroid/app/Activity;

    const-string v2, "icon"

    invoke-static {p1, p2, v2}, Lname/kunes/android/launcher/c/e;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lname/kunes/android/launcher/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lname/kunes/android/launcher/a/b/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/b/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lname/kunes/android/launcher/c/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/LinkedHashSet;
    .locals 2

    const-string v0, "screens"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lname/kunes/android/launcher/a/a/i;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/a/i;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/String;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, p2, v0}, Lname/kunes/android/launcher/c/e;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lname/kunes/android/launcher/c/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/LinkedHashSet;)V
    .locals 2

    const-string v0, "screens"

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lname/kunes/android/launcher/c/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)Lname/kunes/android/launcher/a/o;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/c/e;->b:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lname/kunes/android/launcher/c/e;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/i;->a(Landroid/app/Activity;Ljava/lang/String;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x3

    new-instance v1, Lname/kunes/android/launcher/a/a/l;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/a/l;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(IILjava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, p2, v0}, Lname/kunes/android/launcher/c/e;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lname/kunes/android/launcher/c/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    const-string v0, "background"

    invoke-static {p1, v0}, Lname/kunes/android/launcher/c/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(II)Ljava/lang/String;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, p2, v0}, Lname/kunes/android/launcher/c/e;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x4

    new-instance v1, Lname/kunes/android/launcher/a/a/k;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/a/k;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final c(ILjava/lang/String;)V
    .locals 1

    const-string v0, "background"

    invoke-static {p1, v0}, Lname/kunes/android/launcher/c/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lname/kunes/android/launcher/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x5

    new-instance v1, Lname/kunes/android/launcher/a/a/h;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/a/h;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x6

    new-instance v1, Lname/kunes/android/launcher/a/a/r;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/a/r;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x7

    new-instance v1, Lname/kunes/android/launcher/a/a/g;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/a/g;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/16 v0, 0x8

    new-instance v1, Lname/kunes/android/launcher/a/n;

    invoke-direct {v1, p1}, Lname/kunes/android/launcher/a/n;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lname/kunes/android/launcher/c/e;->a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    return-object v0
.end method
