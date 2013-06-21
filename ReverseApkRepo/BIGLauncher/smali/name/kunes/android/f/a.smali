.class public final Lname/kunes/android/f/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/f/a;->a:Ljava/lang/String;

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/f/a;->a:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/f/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0600b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lname/kunes/android/f/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0600b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lname/kunes/android/f/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/f/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lname/kunes/android/f/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lname/kunes/android/f/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/f/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->b(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
