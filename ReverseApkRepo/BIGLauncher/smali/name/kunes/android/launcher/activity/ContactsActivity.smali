.class public Lname/kunes/android/launcher/activity/ContactsActivity;
.super Lname/kunes/android/activity/SearchScrollListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/SearchScrollListActivity;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lname/kunes/android/c/c;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactsActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/widget/AccessibleListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleCursorAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lname/kunes/android/launcher/activity/ContactsActivity;->a(Landroid/database/Cursor;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactsActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lname/kunes/android/widget/AccessibleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lname/kunes/android/c/c;->b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/database/Cursor;)Landroid/widget/SimpleCursorAdapter;
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lname/kunes/android/launcher/activity/ay;

    new-array v4, v3, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v4, v2

    new-array v5, v3, [I

    const v1, 0x7f090029

    aput v1, v5, v2

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lname/kunes/android/launcher/activity/ay;-><init>(Lname/kunes/android/launcher/activity/ContactsActivity;Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Lname/kunes/android/launcher/activity/az;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/az;-><init>(Lname/kunes/android/launcher/activity/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    return-object v0
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/SearchScrollListActivity;->a()V

    const-string v0, ""

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/ContactsActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final a_(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/ContactsActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lname/kunes/android/h/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f06006c

    return v0
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f06006d

    return v0
.end method

.method protected final h_()Ljava/lang/String;
    .locals 1

    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/ContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
