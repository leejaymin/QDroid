.class public final Lname/kunes/android/launcher/a/i;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lname/kunes/android/launcher/a/o;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lname/kunes/android/launcher/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "functionality-contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lname/kunes/android/launcher/a/m;

    invoke-direct {v0, p0, p1}, Lname/kunes/android/launcher/a/m;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "functionality-screen-goto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lname/kunes/android/launcher/a/c;

    invoke-direct {v0, p0, p1}, Lname/kunes/android/launcher/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lname/kunes/android/launcher/a/b;

    invoke-direct {v0, p0, p1}, Lname/kunes/android/launcher/a/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "functionality-application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lname/kunes/android/launcher/a/n;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/n;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lname/kunes/android/launcher/a/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/e;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lname/kunes/android/launcher/a/l;

    invoke-direct {v0}, Lname/kunes/android/launcher/a/l;-><init>()V

    goto :goto_0
.end method
