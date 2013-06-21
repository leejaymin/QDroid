.class public final Lname/kunes/android/launcher/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/a/b/b;->b:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/a/b/b;->c:Ljava/lang/String;

    iput p3, p0, Lname/kunes/android/launcher/a/b/b;->a:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/a/b/b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/b/b;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lname/kunes/android/launcher/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/b/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/a/b/b;->b:Landroid/app/Activity;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lname/kunes/android/g/a;->a(Landroid/net/Uri;Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)Z
    .locals 3

    sget-object v0, Lname/kunes/android/launcher/b/q;->g:Lname/kunes/android/launcher/b/n;

    iget-object v1, p0, Lname/kunes/android/launcher/a/b/b;->b:Landroid/app/Activity;

    iget v2, p0, Lname/kunes/android/launcher/a/b/b;->a:I

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/b/n;->a(Landroid/app/Activity;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
