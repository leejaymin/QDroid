.class public final Lname/kunes/android/launcher/activity/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/database/Cursor;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    iput-object p1, p0, Lname/kunes/android/launcher/activity/c/a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lname/kunes/android/c/i;->a(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->b:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/c/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/c/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public final a()[Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/c/a;->a:Landroid/app/Activity;

    const v2, 0x7f06000c

    const/16 v3, 0x1f

    new-instance v4, Lname/kunes/android/launcher/activity/c/d;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/c/d;-><init>(Lname/kunes/android/launcher/activity/c/a;)V

    invoke-static {v1, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    const-string v1, "%s %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lname/kunes/android/launcher/activity/c/a;->a:Landroid/app/Activity;

    const v5, 0x7f06000d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lname/kunes/android/launcher/activity/c/a;->b:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/c/a;->a:Landroid/app/Activity;

    invoke-static {v2, v1}, Lname/kunes/android/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->b:Landroid/database/Cursor;

    new-instance v1, Lname/kunes/android/launcher/activity/c/c;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/c/c;-><init>(Lname/kunes/android/launcher/activity/c/a;)V

    invoke-static {v0, v1}, Lname/kunes/android/e/d;->b(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/c/a;->a:Landroid/app/Activity;

    const v2, 0x7f06000e

    invoke-static {v1, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/c/a;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    return-object v0
.end method
