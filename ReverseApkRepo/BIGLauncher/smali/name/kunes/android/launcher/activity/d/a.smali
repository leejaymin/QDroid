.class public final Lname/kunes/android/launcher/activity/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/view/MenuItem;

.field private static b:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/view/MenuItem;
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/activity/d/a;->a:Landroid/view/MenuItem;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4

    invoke-static {p0}, Lname/kunes/android/launcher/a;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lname/kunes/android/launcher/c/d;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    const v0, 0x1020003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v3, Lname/kunes/android/launcher/activity/d/b;

    invoke-direct {v3, v0, v2, p1, p0}, Lname/kunes/android/launcher/activity/d/b;-><init>(Landroid/widget/EditText;Lname/kunes/android/launcher/c/d;Ljava/lang/Runnable;Landroid/app/Activity;)V

    invoke-static {p0, v1, v3}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const v2, 0x7f060016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v2, Lname/kunes/android/launcher/c/d;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->F()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Lname/kunes/android/launcher/activity/d/g;

    invoke-direct {v2, p0, v0, p0}, Lname/kunes/android/launcher/activity/d/g;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/Activity;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lname/kunes/android/launcher/activity/d/d;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/d/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lname/kunes/android/launcher/activity/d/c;

    invoke-direct {v2}, Lname/kunes/android/launcher/activity/d/c;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-static {p0}, Lname/kunes/android/launcher/a;->a(Landroid/app/Activity;)V

    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lname/kunes/android/launcher/activity/d/a;->a:Landroid/view/MenuItem;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lname/kunes/android/launcher/activity/d/a;->b:Landroid/view/MenuItem;

    const/16 v1, 0x9

    invoke-static {p0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 2

    sget-object v0, Lname/kunes/android/launcher/activity/d/a;->a:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    new-instance v0, Lname/kunes/android/launcher/activity/d/f;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/d/f;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lname/kunes/android/launcher/c/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/d;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lname/kunes/android/launcher/activity/d/a;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    sget-object v0, Lname/kunes/android/launcher/activity/d/a;->b:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_1

    new-instance v0, Lname/kunes/android/launcher/activity/d/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/d/e;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lname/kunes/android/launcher/c/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/d;->H()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, v0}, Lname/kunes/android/launcher/activity/d/a;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method static synthetic b()Landroid/view/MenuItem;
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/activity/d/a;->b:Landroid/view/MenuItem;

    return-object v0
.end method
