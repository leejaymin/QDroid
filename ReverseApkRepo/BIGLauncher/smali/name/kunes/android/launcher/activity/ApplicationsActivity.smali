.class public Lname/kunes/android/launcher/activity/ApplicationsActivity;
.super Lname/kunes/android/activity/SearchScrollListActivity;


# instance fields
.field a:Landroid/database/Cursor;

.field private b:[Landroid/view/View;

.field private c:Landroid/support/v4/widget/SimpleCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/activity/SearchScrollListActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->b:[Landroid/view/View;

    new-instance v0, Lname/kunes/android/e/c;

    invoke-direct {v0}, Lname/kunes/android/e/c;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/database/Cursor;Landroid/view/View;)V
    .locals 5

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p1}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lname/kunes/android/launcher/b/q;->c:Lname/kunes/android/launcher/b/f;

    invoke-virtual {v3, v1, v0}, Lname/kunes/android/launcher/b/f;->a(Ljava/lang/String;Lname/kunes/android/e/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lname/kunes/android/launcher/activity/bp;

    invoke-direct {v4, p0, v1}, Lname/kunes/android/launcher/activity/bp;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Ljava/lang/String;)V

    invoke-static {p2, v2, v3, v4}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2, v2, v0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a(Landroid/view/View;Ljava/lang/String;Lname/kunes/android/e/a;)V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/ApplicationsActivity;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->b:[Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/c/e;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 4

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->onSearchRequested()Z

    :cond_0
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->d()[Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->b:[Landroid/view/View;

    :goto_0
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a_(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->h()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->h()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method a(Landroid/view/View;Ljava/lang/String;Lname/kunes/android/e/a;)V
    .locals 0

    invoke-static {p1, p2}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method protected final a_(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v2

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->i()V

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    new-instance v1, Lname/kunes/android/launcher/activity/bq;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lname/kunes/android/launcher/activity/bq;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    new-instance v3, Lname/kunes/android/launcher/activity/bo;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/bo;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->c:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lname/kunes/android/launcher/activity/bn;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "label"

    aput-object v4, v3, v6

    new-array v4, v5, [I

    const v5, 0x7f090029

    aput v5, v4, v6

    invoke-direct {v1, p0, p0, v3, v4}, Lname/kunes/android/launcher/activity/bn;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/content/Context;[Ljava/lang/String;[I)V

    iput-object v1, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->c:Landroid/support/v4/widget/SimpleCursorAdapter;

    :cond_0
    iget-object v1, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->c:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->c:Landroid/support/v4/widget/SimpleCursorAdapter;

    new-instance v1, Lname/kunes/android/launcher/activity/bl;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/bl;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    invoke-virtual {v2, v0}, Lname/kunes/android/widget/AccessibleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    new-instance v1, Lname/kunes/android/launcher/activity/br;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v3, v4, v6

    aput-object v0, v4, v5

    invoke-direct {v1, p0, v4}, Lname/kunes/android/launcher/activity/br;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;[Landroid/database/Cursor;)V

    move-object v0, v1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lname/kunes/android/c/e;->b(Landroid/content/ContentResolver;Ljava/lang/String;)I

    return-void
.end method

.method d()[Landroid/view/View;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0}, Lname/kunes/android/c/e;->a(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lname/kunes/android/launcher/c/d;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->c()I

    move-result v3

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->y()Z

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v2, :cond_0

    if-lez v3, :cond_0

    if-gtz v4, :cond_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    const v1, 0x7f060012

    invoke-static {p0, v1}, Lname/kunes/android/b/d;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    return-object v0

    :cond_1
    const v2, 0x7f060013

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v2, Lname/kunes/android/launcher/activity/bm;

    invoke-direct {v2, p0, v0, v3}, Lname/kunes/android/launcher/activity/bm;-><init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Ljava/util/Vector;I)V

    invoke-static {v1, v2}, Lname/kunes/android/e/d;->a(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    goto :goto_0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060046

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f06004f

    return v0
.end method

.method protected final h_()Ljava/lang/String;
    .locals 1

    const v0, 0x7f060122

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->i()V

    invoke-super {p0}, Lname/kunes/android/activity/SearchScrollListActivity;->onDestroy()V

    return-void
.end method
