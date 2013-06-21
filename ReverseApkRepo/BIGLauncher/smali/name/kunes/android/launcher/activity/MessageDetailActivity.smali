.class public Lname/kunes/android/launcher/activity/MessageDetailActivity;
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

.method static synthetic a(Lname/kunes/android/launcher/activity/MessageDetailActivity;)Lname/kunes/android/d/b;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->d()Lname/kunes/android/d/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/MessageDetailActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->b:Landroid/database/Cursor;

    return-object v0
.end method

.method private d()Lname/kunes/android/d/b;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->b:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/c/j;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->b:Landroid/database/Cursor;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v6

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030007

    iget-object v3, p0, Lname/kunes/android/launcher/activity/MessageDetailActivity;->b:Landroid/database/Cursor;

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v7

    new-array v5, v8, [I

    const v1, 0x7f09002a

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Lname/kunes/android/launcher/activity/g/d;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lname/kunes/android/launcher/activity/g/d;-><init>(Landroid/app/Activity;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    const/4 v1, 0x6

    new-array v2, v1, [Landroid/view/View;

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->d()Lname/kunes/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lname/kunes/android/d/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lname/kunes/android/b/h;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v7

    const v1, 0x7f060040

    const/16 v3, 0x24

    new-instance v4, Lname/kunes/android/launcher/activity/d;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/d;-><init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V

    invoke-static {p0, v1, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v8

    const/4 v3, 0x2

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->d()Lname/kunes/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lname/kunes/android/d/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06000a

    :goto_0
    const/16 v4, 0x2e

    new-instance v5, Lname/kunes/android/launcher/activity/e;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/activity/e;-><init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V

    invoke-static {p0, v1, v4, v5}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x3

    const v3, 0x7f06010f

    const/16 v4, 0x3b

    new-instance v5, Lname/kunes/android/launcher/activity/c;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/activity/c;-><init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V

    invoke-static {p0, v3, v4, v5}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const v3, 0x7f0600e6

    const/16 v4, 0x3a

    new-instance v5, Lname/kunes/android/launcher/activity/b;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/activity/b;-><init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V

    invoke-static {p0, v3, v4, v5}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x5

    new-instance v1, Lname/kunes/android/launcher/c/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/d;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0600e4

    const/16 v4, 0x39

    new-instance v5, Lname/kunes/android/launcher/activity/a;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/activity/a;-><init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V

    invoke-static {p0, v1, v4, v5}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    :goto_1
    aput-object v1, v2, v3

    invoke-virtual {v6, v0, v2}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    return-void

    :cond_0
    const v1, 0x7f060009

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f0600f2

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f0600f8

    return v0
.end method
