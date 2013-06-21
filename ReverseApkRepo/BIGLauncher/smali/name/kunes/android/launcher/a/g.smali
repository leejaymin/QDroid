.class public final Lname/kunes/android/launcher/a/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 5

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {p0}, Lname/kunes/android/launcher/a/g;->b(Landroid/app/Activity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/e;->a(Ljava/util/LinkedHashSet;)V

    const/16 v1, 0x9

    invoke-static {v1}, Lname/kunes/android/launcher/a/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lname/kunes/android/launcher/c/e;->a(ILjava/lang/String;)V

    return v2
.end method

.method public static a(Landroid/app/Activity;I)Z
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lname/kunes/android/launcher/a/g;->b(Landroid/app/Activity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 4

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v1

    sget v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lname/kunes/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;I)I
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v3, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v2

    if-le v3, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;I)Z
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/a/b/c;

    new-instance v1, Lname/kunes/android/launcher/c/e;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lname/kunes/android/launcher/c/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lname/kunes/android/launcher/a/b/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f060131

    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    if-ne p1, v1, :cond_0

    const v0, 0x7f06012f

    :cond_0
    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    const v0, 0x7f060130

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
