.class public final Lname/kunes/android/launcher/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/h;
.implements Lname/kunes/android/launcher/a/o;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "functionality-contact"

    invoke-direct {p0, p1, v0}, Lname/kunes/android/launcher/a/m;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/a/m;->b:Ljava/lang/String;

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/m;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "functionality-contact"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lname/kunes/android/launcher/a/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lname/kunes/android/launcher/b/q;->e:Lname/kunes/android/launcher/b/c;

    invoke-direct {p0}, Lname/kunes/android/launcher/a/m;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/b/c;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    const v1, 0x7f060146

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lname/kunes/android/launcher/a/m;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lname/kunes/android/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/m;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    const/16 v1, 0x4e

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    const v1, 0x7f060145

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lname/kunes/android/launcher/a/m;->a:Landroid/app/Activity;

    const-class v2, Lname/kunes/android/launcher/activity/ContactsPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
