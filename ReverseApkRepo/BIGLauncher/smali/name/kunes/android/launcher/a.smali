.class public final Lname/kunes/android/launcher/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x3

    new-instance v3, Lname/kunes/android/launcher/c/d;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    new-array v4, v6, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v0

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v2

    invoke-virtual {v3}, Lname/kunes/android/launcher/c/d;->r()I

    move-result v5

    invoke-virtual {v3}, Lname/kunes/android/launcher/c/d;->o()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {v3}, Lname/kunes/android/launcher/c/d;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    aget-object v1, v4, v5

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->A()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x8t 0x7ft
        0x15t 0x0t 0x8t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x17t 0x0t 0x8t 0x7ft
        0x18t 0x0t 0x8t 0x7ft
        0x19t 0x0t 0x8t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x1at 0x0t 0x8t 0x7ft
        0x1bt 0x0t 0x8t 0x7ft
        0x1ct 0x0t 0x8t 0x7ft
    .end array-data
.end method
