.class final Lname/kunes/android/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/a/b;->a:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private static a(Landroid/app/AlertDialog;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-array v3, v2, [Landroid/widget/TextView;

    aput-object v0, v3, v1

    invoke-static {v3}, Lname/kunes/android/a/a;->b([Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setMinLines(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinLines(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method final a()Landroid/app/AlertDialog;
    .locals 4

    iget-object v0, p0, Lname/kunes/android/a/b;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    const v0, 0x1020019

    invoke-static {v1, v0}, Lname/kunes/android/a/b;->a(Landroid/app/AlertDialog;I)V

    const v0, 0x102001a

    invoke-static {v1, v0}, Lname/kunes/android/a/b;->a(Landroid/app/AlertDialog;I)V

    const v0, 0x102001b

    invoke-static {v1, v0}, Lname/kunes/android/a/b;->a(Landroid/app/AlertDialog;I)V

    const v0, 0x102000b

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lname/kunes/android/a/a;->a([Landroid/widget/TextView;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
