.class public final Lname/kunes/android/launcher/activity/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/c/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/c/b;->b:Landroid/view/View;

    iput-object p3, p0, Lname/kunes/android/launcher/activity/c/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lname/kunes/android/launcher/activity/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/c/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lname/kunes/android/launcher/activity/c/b;->a(Landroid/app/Activity;Landroid/view/View;Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;Z)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    invoke-static {p0, p2}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/d/b;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lname/kunes/android/launcher/activity/c/b;

    invoke-direct {v2, p0, p1, v0, v1}, Lname/kunes/android/launcher/activity/c/b;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lname/kunes/android/launcher/activity/c/b;->b:Landroid/view/View;

    new-instance v1, Lname/kunes/android/launcher/activity/c/e;

    invoke-direct {v1, v2}, Lname/kunes/android/launcher/activity/c/e;-><init>(Lname/kunes/android/launcher/activity/c/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_0

    sget-object v0, Lname/kunes/android/launcher/b/q;->a:Lname/kunes/android/launcher/b/r;

    iget-object v1, v2, Lname/kunes/android/launcher/activity/c/b;->c:Ljava/lang/String;

    iget-object v3, v2, Lname/kunes/android/launcher/activity/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Lname/kunes/android/launcher/b/r;->a(Ljava/lang/String;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lname/kunes/android/launcher/b/q;->a:Lname/kunes/android/launcher/b/r;

    iget-object v1, v2, Lname/kunes/android/launcher/activity/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/b/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lname/kunes/android/launcher/b/q;->a:Lname/kunes/android/launcher/b/r;

    iget-object v1, v2, Lname/kunes/android/launcher/activity/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/b/r;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_1
    iget-object v0, v2, Lname/kunes/android/launcher/activity/c/b;->b:Landroid/view/View;

    sget-object v1, Lname/kunes/android/launcher/b/q;->b:Lname/kunes/android/launcher/b/b;

    iget-object v3, v2, Lname/kunes/android/launcher/activity/c/b;->c:Ljava/lang/String;

    iget-object v2, v2, Lname/kunes/android/launcher/activity/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lname/kunes/android/launcher/b/b;->a(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/c/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/b;->d:Ljava/lang/String;

    return-object v0
.end method
