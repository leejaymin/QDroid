.class public Lname/kunes/android/launcher/activity/CallLogActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/CallLogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/CallLogActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extras_call_log_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/CallLogActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/CallLogActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/CallLogActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v6

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030001

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->d()Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    const v1, 0x7f090009

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->a_()Lname/kunes/android/launcher/activity/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->b()[Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    return-void
.end method

.method a_()Lname/kunes/android/launcher/activity/f/b;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lname/kunes/android/launcher/activity/f/b;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/f/b;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lname/kunes/android/launcher/activity/bj;

    invoke-direct {v0, p0, p0}, Lname/kunes/android/launcher/activity/bj;-><init>(Lname/kunes/android/launcher/activity/CallLogActivity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method b()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->c()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f060040

    const/16 v3, 0x24

    new-instance v4, Lname/kunes/android/launcher/activity/bk;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/bk;-><init>(Lname/kunes/android/launcher/activity/CallLogActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060041

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/CallLogActivity;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lname/kunes/android/b/h;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/CallLogActivity;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/c/a;->b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060047

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060050

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/ScrollListActivity;->onResume()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->d()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;->finish()V

    :cond_0
    return-void
.end method
