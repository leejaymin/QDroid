.class public final Lname/kunes/android/h/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lname/kunes/android/h/a;->a(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7f060010

    invoke-static {p0, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7f060010

    invoke-static {p0, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lname/kunes/android/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7f060010

    invoke-static {p0, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Lname/kunes/android/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x7f060010

    invoke-static {p0, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
