.class public Lname/kunes/android/launcher/activity/ContactActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/ContactActivity;)Lname/kunes/android/widget/AccessibleListView;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/ContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lname/kunes/android/launcher/activity/ContactActivity;)I
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->d()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0600bb

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0600ba

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    sget-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->f(Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->d(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/e/a;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    sget-object v1, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lname/kunes/android/b/h;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v1}, Lname/kunes/android/widget/AccessibleListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->b()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->c()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f090029

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lname/kunes/android/widget/AccessibleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method final varargs a([Landroid/database/Cursor;)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    new-instance v3, Lname/kunes/android/launcher/activity/j;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/j;-><init>(Lname/kunes/android/launcher/activity/ContactActivity;)V

    invoke-static {v2, v3}, Lname/kunes/android/e/d;->b(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 4

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    sget-object v3, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->f(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->e(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lname/kunes/android/launcher/activity/ContactActivity;->a([Landroid/database/Cursor;)V

    return-void
.end method

.method c()V
    .locals 5

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactActivity;->d()I

    move-result v2

    const/16 v3, 0x1b

    new-instance v4, Lname/kunes/android/launcher/activity/i;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/i;-><init>(Lname/kunes/android/launcher/activity/ContactActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lname/kunes/android/widget/AccessibleListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060084

    const/16 v3, 0x2b

    new-instance v4, Lname/kunes/android/launcher/activity/l;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/l;-><init>(Lname/kunes/android/launcher/activity/ContactActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lname/kunes/android/widget/AccessibleListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    const v2, 0x7f060085

    const/16 v3, 0x2a

    new-instance v4, Lname/kunes/android/launcher/activity/k;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/k;-><init>(Lname/kunes/android/launcher/activity/ContactActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lname/kunes/android/widget/AccessibleListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f060086

    const/16 v2, 0x2d

    new-instance v3, Lname/kunes/android/launcher/activity/o;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/o;-><init>(Lname/kunes/android/launcher/activity/ContactActivity;)V

    invoke-static {p0, v0, v2, v3}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lname/kunes/android/widget/AccessibleListView;->addFooterView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060075

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060074

    return v0
.end method
