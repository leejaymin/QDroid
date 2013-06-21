.class public final Lname/kunes/android/launcher/c/f;
.super Lname/kunes/android/launcher/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final aa()Ljava/lang/String;
    .locals 1

    const-string v0, "contactsApplication"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    const-string v0, "dialerApplication"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "contactsApplication"

    invoke-virtual {p0, v0, p1}, Lname/kunes/android/launcher/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dialerApplication"

    invoke-virtual {p0, v0, p1}, Lname/kunes/android/launcher/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
