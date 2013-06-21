.class public Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I
    .locals 1

    iget v0, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    return v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)Lname/kunes/android/launcher/c/e;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->h()Lname/kunes/android/launcher/c/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->h()Lname/kunes/android/launcher/c/e;

    move-result-object v0

    iget v1, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    invoke-static {p0, v1}, Lname/kunes/android/launcher/a/g;->d(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lname/kunes/android/launcher/a/b/a;

    iget v3, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    invoke-virtual {v0, v3}, Lname/kunes/android/launcher/c/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lname/kunes/android/launcher/a/b/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/a/b/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c:Landroid/view/View;

    invoke-static {v2, v1, v0}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic d(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->i()V

    return-void
.end method

.method private h()Lname/kunes/android/launcher/c/e;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private i()V
    .locals 4

    new-instance v2, Lname/kunes/android/launcher/activity/y;

    invoke-direct {v2, p0, p0}, Lname/kunes/android/launcher/activity/y;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V

    new-instance v1, Lname/kunes/android/launcher/activity/x;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/x;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->h()Lname/kunes/android/launcher/c/e;

    move-result-object v0

    iget v3, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    invoke-virtual {v0, v3}, Lname/kunes/android/launcher/c/e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f060180

    :goto_2
    invoke-virtual {p0, v1}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v0, 0x48

    :goto_3
    invoke-static {p0, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    const v1, 0x7f06013c

    goto :goto_2

    :cond_3
    const/16 v0, 0x47

    goto :goto_3
.end method


# virtual methods
.method protected final a()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    new-instance v2, Lname/kunes/android/launcher/activity/aj;

    iget v3, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    invoke-static {v3}, Lname/kunes/android/launcher/a/c;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lname/kunes/android/launcher/activity/aj;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->a(Landroid/content/Context;Lname/kunes/android/launcher/a/o;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c:Landroid/view/View;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c:Landroid/view/View;

    iput-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c:Landroid/view/View;

    iget v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    sget v3, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a:I

    if-eq v2, v3, :cond_3

    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const v2, 0x7f060138

    const/16 v3, 0x44

    new-instance v4, Lname/kunes/android/launcher/activity/al;

    invoke-direct {v4, p0, p0}, Lname/kunes/android/launcher/activity/al;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const v2, 0x7f060139

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const v2, 0x7f06013a

    const/16 v3, 0x45

    new-instance v4, Lname/kunes/android/launcher/activity/aa;

    invoke-direct {v4, p0, p0}, Lname/kunes/android/launcher/activity/aa;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const v2, 0x7f06013b

    const/16 v3, 0x46

    new-instance v4, Lname/kunes/android/launcher/activity/z;

    invoke-direct {v4, p0, p0}, Lname/kunes/android/launcher/activity/z;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d:Landroid/view/View;

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->i()V

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f06013d

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f06013e

    const/16 v2, 0x49

    new-instance v3, Lname/kunes/android/launcher/activity/w;

    invoke-direct {v3, p0, p0}, Lname/kunes/android/launcher/activity/w;-><init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V

    invoke-static {p0, v0, v2, v3}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lname/kunes/android/widget/AccessibleListView;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d()V

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060136

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060137

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-ne p1, v6, :cond_0

    const-string v0, "icon_id"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->h()Lname/kunes/android/launcher/c/e;

    move-result-object v1

    iget v2, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    invoke-static {v0}, Lname/kunes/android/launcher/a/b/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lname/kunes/android/launcher/c/e;->a(ILjava/lang/String;)V

    :cond_0
    if-ne p1, v7, :cond_1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->h()Lname/kunes/android/launcher/c/e;

    move-result-object v0

    iget v1, p0, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "data-background"

    aput-object v4, v3, v5

    const-string v4, "uri"

    aput-object v4, v3, v6

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v3}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/c/e;->c(ILjava/lang/String;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->i()V

    :cond_1
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d()V

    return-void
.end method
