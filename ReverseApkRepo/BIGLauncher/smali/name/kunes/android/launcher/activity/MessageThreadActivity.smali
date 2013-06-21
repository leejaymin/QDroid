.class public Lname/kunes/android/launcher/activity/MessageThreadActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/MessageThreadActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/c/i;->b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->b:Landroid/database/Cursor;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageThreadActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v6

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030007

    iget-object v3, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->b:Landroid/database/Cursor;

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v7

    new-array v5, v8, [I

    const v1, 0x7f09002a

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Lname/kunes/android/launcher/activity/g/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/g/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v2, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->b:Landroid/database/Cursor;

    invoke-static {p0, v2}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lname/kunes/android/d/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lname/kunes/android/b/h;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f06000a

    const/16 v3, 0x2e

    new-instance v4, Lname/kunes/android/launcher/activity/bs;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/bs;-><init>(Lname/kunes/android/launcher/activity/MessageThreadActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v6, v0, v1}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/c/i;->a(Landroid/app/Activity;Ljava/lang/String;)I

    return-void
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060049

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060052

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/ScrollListActivity;->onResume()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageThreadActivity;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageThreadActivity;->finish()V

    :cond_0
    return-void
.end method
