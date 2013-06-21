.class public final Lname/kunes/android/launcher/activity/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lname/kunes/android/e/a;

.field private final c:Landroid/content/res/Resources;

.field private d:Landroid/view/View;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lname/kunes/android/launcher/activity/b/h;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/b/h;->e:Z

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->c:Landroid/content/res/Resources;

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p2, p3}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/b/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/activity/b/c;

    invoke-direct {v0, p0, p1}, Lname/kunes/android/launcher/activity/b/c;-><init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V
    .locals 5

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "\n"

    const-string v1, "<br />"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->d:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->d:Landroid/view/View;

    const-string v2, "<b>%s</b> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    invoke-virtual {v0, p1}, Lname/kunes/android/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    invoke-virtual {v0, p1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/b/h;->e:Z

    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/b/d;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->d:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->c:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const/16 v4, 0x13

    if-ne v0, v4, :cond_8

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_1
    check-cast v2, Ljava/lang/String;

    const-string v1, "data1"

    new-instance v4, Lname/kunes/android/launcher/activity/b/e;

    invoke-direct {v4, p0, v3}, Lname/kunes/android/launcher/activity/b/e;-><init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    :cond_1
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->c:Landroid/content/res/Resources;

    if-nez v0, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_2
    check-cast v2, Ljava/lang/String;

    const-string v1, "data1"

    new-instance v4, Lname/kunes/android/launcher/activity/b/d;

    invoke-direct {v4, p0, v3}, Lname/kunes/android/launcher/activity/b/d;-><init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    :cond_2
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v2, "data3"

    invoke-virtual {v0, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/b/h;->c:Landroid/content/res/Resources;

    if-nez v1, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_3
    check-cast v0, Ljava/lang/String;

    const-string v1, "%s %s\n%s\n%s %s %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v4, "data4"

    invoke-virtual {v3, v4}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v4, "data5"

    invoke-virtual {v3, v4}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v5, "data6"

    invoke-virtual {v4, v5}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v5, "data7"

    invoke-virtual {v4, v5}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v5, "data10"

    invoke-virtual {v4, v5}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v5, "data9"

    invoke-virtual {v4, v5}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " *\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\n ]*$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lname/kunes/android/launcher/activity/b/b;

    invoke-direct {v3, p0, v2}, Lname/kunes/android/launcher/activity/b/b;-><init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v3, v7}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    :cond_3
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v4, "data6"

    invoke-virtual {v1, v4}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lname/kunes/android/launcher/activity/b/h;->c:Landroid/content/res/Resources;

    if-nez v2, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_4
    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/b/h;->c:Landroid/content/res/Resources;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    :goto_5
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v3, "data1"

    invoke-virtual {v1, v3}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    :cond_4
    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    const-string v2, ""

    new-instance v4, Lname/kunes/android/launcher/activity/b/a;

    invoke-direct {v4, p0, v3}, Lname/kunes/android/launcher/activity/b/a;-><init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V

    move-object v0, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    :cond_5
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->b:Lname/kunes/android/e/a;

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-direct {p0, v3}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lname/kunes/android/launcher/activity/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    :cond_6
    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->d:Landroid/view/View;

    return-object v0

    :cond_7
    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/b/h;->d:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    packed-switch v0, :pswitch_data_0

    const v0, 0x7f06008f

    :goto_6
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_0
    const v0, 0x7f060090

    goto :goto_6

    :pswitch_1
    const v0, 0x7f060091

    goto :goto_6

    :pswitch_2
    const v0, 0x7f060092

    goto :goto_6

    :pswitch_3
    const v0, 0x7f060093

    goto :goto_6

    :pswitch_4
    const v0, 0x7f060094

    goto :goto_6

    :pswitch_5
    const v0, 0x7f060095

    goto :goto_6

    :pswitch_6
    const v0, 0x7f060096

    goto :goto_6

    :pswitch_7
    const v0, 0x7f060097

    goto :goto_6

    :pswitch_8
    const v0, 0x7f060098

    goto :goto_6

    :pswitch_9
    const v0, 0x7f060099

    goto :goto_6

    :pswitch_a
    const v0, 0x7f06009a

    goto :goto_6

    :pswitch_b
    const v0, 0x7f06009b

    goto :goto_6

    :pswitch_c
    const v0, 0x7f06009c

    goto :goto_6

    :pswitch_d
    const v0, 0x7f06009d

    goto :goto_6

    :pswitch_e
    const v0, 0x7f06009e

    goto :goto_6

    :pswitch_f
    const v0, 0x7f06009f

    goto :goto_6

    :pswitch_10
    const v0, 0x7f0600a0

    goto :goto_6

    :pswitch_11
    const v0, 0x7f0600a1

    goto :goto_6

    :pswitch_12
    const v0, 0x7f0600a2

    goto :goto_6

    :pswitch_13
    const v0, 0x7f0600a3

    goto :goto_6

    :cond_9
    packed-switch v0, :pswitch_data_1

    const v0, 0x7f06008a

    :goto_7
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_14
    const v0, 0x7f06008b

    goto :goto_7

    :pswitch_15
    const v0, 0x7f06008c

    goto :goto_7

    :pswitch_16
    const v0, 0x7f06008d

    goto :goto_7

    :pswitch_17
    const v0, 0x7f06008e

    goto :goto_7

    :cond_a
    packed-switch v1, :pswitch_data_2

    const v0, 0x7f0600a4

    :goto_8
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_18
    const v0, 0x7f0600a5

    goto :goto_8

    :pswitch_19
    const v0, 0x7f0600a6

    goto :goto_8

    :pswitch_1a
    const v0, 0x7f0600a7

    goto :goto_8

    :cond_b
    packed-switch v2, :pswitch_data_3

    const v0, 0x7f0600a8

    :goto_9
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_1b
    const v0, 0x7f0600a9

    goto :goto_9

    :pswitch_1c
    const v0, 0x7f0600aa

    goto :goto_9

    :pswitch_1d
    const v0, 0x7f0600ab

    goto :goto_9

    :cond_c
    packed-switch v3, :pswitch_data_4

    const v1, 0x7f0600b5

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_1e
    const v1, 0x7f0600ac

    goto :goto_a

    :pswitch_1f
    const v1, 0x7f0600ad

    goto :goto_a

    :pswitch_20
    const v1, 0x7f0600ae

    goto :goto_a

    :pswitch_21
    const v1, 0x7f0600af

    goto :goto_a

    :pswitch_22
    const v1, 0x7f0600b0

    goto :goto_a

    :pswitch_23
    const v1, 0x7f0600b1

    goto :goto_a

    :pswitch_24
    const v1, 0x7f0600b2

    goto :goto_a

    :pswitch_25
    const v1, 0x7f0600b3

    goto :goto_a

    :pswitch_26
    const v1, 0x7f0600b4

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lname/kunes/android/launcher/activity/b/h;->e:Z

    return v0
.end method
