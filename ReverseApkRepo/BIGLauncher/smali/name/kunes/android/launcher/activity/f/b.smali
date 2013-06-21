.class public Lname/kunes/android/launcher/activity/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/f/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(I)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/f/b;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/activity/f/a;

    invoke-direct {v0, p0, p1}, Lname/kunes/android/launcher/activity/f/a;-><init>(Lname/kunes/android/launcher/activity/f/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 10

    iput-object p1, p0, Lname/kunes/android/launcher/activity/f/b;->b:Landroid/view/View;

    new-instance v4, Lname/kunes/android/c/b;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    invoke-direct {v4, v0, p2}, Lname/kunes/android/c/b;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    invoke-virtual {v4}, Lname/kunes/android/c/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/f/b;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    invoke-virtual {v4}, Lname/kunes/android/c/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4}, Lname/kunes/android/c/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lname/kunes/android/c/b;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Lname/kunes/android/c/b;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lname/kunes/a/d;->a(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4}, Lname/kunes/android/c/b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    new-instance v7, Lname/kunes/android/launcher/c/d;

    invoke-direct {v7, v3}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lname/kunes/android/launcher/c/d;->n()I

    move-result v3

    const/16 v7, 0x1e

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lname/kunes/android/launcher/activity/f/b;->b:Landroid/view/View;

    const v7, 0x7f09000a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v7, 0x7f09000e

    invoke-direct {p0, v7}, Lname/kunes/android/launcher/activity/f/b;->a(I)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f09000c

    invoke-direct {p0, v8}, Lname/kunes/android/launcher/activity/f/b;->a(I)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x7f09000d

    invoke-direct {p0, v9}, Lname/kunes/android/launcher/activity/f/b;->a(I)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f060058

    invoke-virtual {v4}, Lname/kunes/android/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f06005a

    :cond_0
    invoke-virtual {v4}, Lname/kunes/android/c/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f060059

    :cond_1
    iget-object v1, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/c;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/f/b;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Lname/kunes/android/c/b;->i()Ljava/sql/Date;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lname/kunes/android/launcher/c;-><init>(Landroid/content/Context;Ljava/sql/Date;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lname/kunes/android/launcher/c;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {v4}, Lname/kunes/android/c/b;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2
.end method
