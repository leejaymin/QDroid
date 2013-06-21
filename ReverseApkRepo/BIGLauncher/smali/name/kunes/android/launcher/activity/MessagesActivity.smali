.class public Lname/kunes/android/launcher/activity/MessagesActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# instance fields
.field private a:Landroid/support/v4/widget/SimpleCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lname/kunes/android/c/i;->b(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessagesActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v7

    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    const v2, 0x7f030006

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x7f090029

    aput v1, v5, v6

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessagesActivity;->a:Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessagesActivity;->a:Landroid/support/v4/widget/SimpleCursorAdapter;

    new-instance v1, Lname/kunes/android/launcher/activity/p;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/p;-><init>(Lname/kunes/android/launcher/activity/MessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessagesActivity;->a:Landroid/support/v4/widget/SimpleCursorAdapter;

    new-instance v1, Lname/kunes/android/launcher/activity/c/a;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/c/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/activity/c/a;->a()[Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    invoke-static {p0, v3}, Lname/kunes/android/launcher/b/e;->a(Landroid/app/Activity;Landroid/database/Cursor;)V

    return-void
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060044

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f06004d

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lname/kunes/android/activity/ScrollListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lname/kunes/android/activity/ScrollListActivity;->onResume()V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lname/kunes/android/c/i;->b(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/MessagesActivity;->a:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    sput-object v0, Lname/kunes/android/launcher/b/e;->a:Landroid/database/Cursor;

    :cond_0
    return-void
.end method
