.class public final Lname/kunes/android/launcher/c/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/c/c;->a:Landroid/app/Activity;

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/c/e;

    iget-object v2, p0, Lname/kunes/android/launcher/c/c;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1, p2, v0}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v8, 0x8

    new-instance v4, Lname/kunes/android/launcher/c/f;

    iget-object v2, p0, Lname/kunes/android/launcher/c/c;->a:Landroid/app/Activity;

    invoke-direct {v4, v2}, Lname/kunes/android/launcher/c/f;-><init>(Landroid/content/Context;)V

    new-instance v5, Lname/kunes/android/launcher/c/e;

    iget-object v2, p0, Lname/kunes/android/launcher/c/c;->a:Landroid/app/Activity;

    invoke-direct {v5, v2}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    const-string v2, "lastUsedVersion"

    invoke-virtual {v4, v2}, Lname/kunes/android/launcher/c/d;->d(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    sget v6, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    const-string v2, "alarmApplication"

    invoke-virtual {v4, v2}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v0, v2}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const-string v2, "phoneApplication"

    invoke-virtual {v4, v2}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const/4 v2, 0x4

    const-string v7, "messagesApplication"

    invoke-virtual {v4, v7}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v2, v7}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const/4 v2, 0x5

    const-string v7, "cameraApplication"

    invoke-virtual {v4, v7}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v2, v7}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const/4 v2, 0x6

    const-string v7, "galleryApplication"

    invoke-virtual {v4, v7}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v2, v7}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const/4 v2, 0x7

    const-string v7, "sosApplication"

    invoke-virtual {v4, v7}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v2, v7}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const-string v2, "applicationsApplication"

    invoke-virtual {v4, v2}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v8, v2}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    const-string v2, "buttonsShowsApplicationsIcons"

    invoke-virtual {v4, v2, v0}, Lname/kunes/android/launcher/c/f;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    :goto_1
    if-le v1, v8, :cond_3

    :cond_0
    const-string v1, "applicationsTableShow"

    invoke-virtual {v4, v1, v3}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lname/kunes/android/launcher/c/c;->a:Landroid/app/Activity;

    invoke-static {v1}, Lname/kunes/android/launcher/a/g;->a(Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2}, Lname/kunes/android/launcher/a/b/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lname/kunes/android/launcher/c/e;->a(ILjava/lang/String;)V

    invoke-static {v1}, Lname/kunes/android/launcher/a/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v8, v2}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v5, v6, v8, v2}, Lname/kunes/android/launcher/c/e;->a(IILjava/lang/String;)V

    :goto_2
    if-le v0, v8, :cond_4

    const-string v0, "functionality-application"

    invoke-virtual {v5, v1, v8, v0}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    :cond_1
    const-string v0, "lastUsedVersion"

    iget-object v1, v4, Lname/kunes/android/launcher/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lname/kunes/android/launcher/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lname/kunes/android/launcher/a/b/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v1, v2}, Lname/kunes/android/launcher/c/e;->a(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applicationsTableApplication"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lname/kunes/android/launcher/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lname/kunes/android/launcher/c/c;->a(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
