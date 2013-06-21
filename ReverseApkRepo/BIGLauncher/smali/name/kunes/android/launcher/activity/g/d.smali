.class public final Lname/kunes/android/launcher/activity/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Z

.field private c:Landroid/view/View;

.field private d:Lname/kunes/android/d/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/g/d;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/g/d;->b:Z

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/g/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/g/d;)Lname/kunes/android/d/b;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    return-object v0
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/g/d;->c:Landroid/view/View;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    iget-boolean v0, p0, Lname/kunes/android/launcher/activity/g/d;->b:Z

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->c:Landroid/view/View;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lname/kunes/android/launcher/activity/g/d;->b:Z

    if-nez v1, :cond_1

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_1
    iget-object v1, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v1}, Lname/kunes/android/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    invoke-static {v1}, Lname/kunes/android/d/f;->b(Lname/kunes/android/e/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<i>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v3}, Lname/kunes/android/d/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v1, 0x31

    const/16 v0, 0x2f

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v3}, Lname/kunes/android/d/b;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x30

    const/16 v1, 0x32

    :cond_3
    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v3, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lname/kunes/android/launcher/n;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->c:Landroid/view/View;

    invoke-static {v3, v0, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->c:Landroid/view/View;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v1}, Lname/kunes/android/launcher/g;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v1}, Lname/kunes/android/d/b;->d()Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v3}, Lname/kunes/android/launcher/g;->a(Landroid/content/Context;)V

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v3}, Lname/kunes/android/d/b;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    const v5, 0x7f06000b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v3}, Lname/kunes/android/d/b;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x34

    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v4}, Lname/kunes/android/d/b;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v3, 0x37

    :cond_5
    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v4}, Lname/kunes/android/d/b;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v3, 0x35

    :cond_6
    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v4}, Lname/kunes/android/d/b;->i()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v3, 0x36

    :cond_7
    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-static {v4, v3}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v4}, Lname/kunes/android/d/b;->f()Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x7f06005c

    :goto_2
    iget-object v5, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lname/kunes/android/launcher/c;

    iget-object v6, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    iget-object v7, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v7}, Lname/kunes/android/d/b;->d()Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lname/kunes/android/launcher/c;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v8}, Lname/kunes/android/d/b;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5}, Lname/kunes/android/launcher/c;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;)V

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return v9

    :cond_9
    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    invoke-static {v0}, Lname/kunes/android/d/f;->a(Lname/kunes/android/e/a;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v0}, Lname/kunes/android/d/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lname/kunes/android/launcher/activity/g/c;

    invoke-direct {v0, p0, v1}, Lname/kunes/android/launcher/activity/g/c;-><init>(Lname/kunes/android/launcher/activity/g/d;Ljava/lang/String;)V

    :goto_3
    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    invoke-static {v1}, Lname/kunes/android/d/f;->b(Lname/kunes/android/e/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lname/kunes/android/launcher/activity/g/b;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/g/b;-><init>(Lname/kunes/android/launcher/activity/g/d;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->d:Lname/kunes/android/d/b;

    invoke-virtual {v3}, Lname/kunes/android/d/b;->e()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lname/kunes/android/launcher/activity/g/d;->a:Landroid/app/Activity;

    const/16 v4, 0x38

    invoke-static {v3, v4}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_b
    move-object v3, v2

    goto :goto_1

    :cond_c
    const v4, 0x7f06005b

    goto :goto_2

    :cond_d
    move-object v0, v2

    goto :goto_3
.end method
