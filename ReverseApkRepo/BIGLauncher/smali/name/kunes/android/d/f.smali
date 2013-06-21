.class public final Lname/kunes/android/d/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;
    .locals 2

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, p1}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    invoke-static {v1}, Lname/kunes/android/d/f;->b(Lname/kunes/android/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lname/kunes/android/d/g;

    invoke-direct {v0, p0, v1}, Lname/kunes/android/d/g;-><init>(Landroid/app/Activity;Lname/kunes/android/e/a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lname/kunes/android/d/f;->a(Lname/kunes/android/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lname/kunes/android/d/a;

    invoke-direct {v0, p0, v1}, Lname/kunes/android/d/a;-><init>(Landroid/app/Activity;Lname/kunes/android/e/a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lname/kunes/android/e/a;)Z
    .locals 1

    invoke-static {p0}, Lname/kunes/android/d/f;->b(Lname/kunes/android/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lname/kunes/android/e/a;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "ct_t"

    invoke-virtual {p0, v2}, Lname/kunes/android/e/a;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "application/vnd.wap.multipart."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
