.class public Lname/kunes/android/launcher/activity/FavouritesActivity;
.super Lname/kunes/android/launcher/activity/ContactsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {p0}, Lname/kunes/android/c/c;->a(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/FavouritesActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/FavouritesActivity;->a(Landroid/database/Cursor;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    const v4, 0x7f060015

    invoke-static {p0, v4}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    return-void
.end method

.method protected final b_()I
    .locals 1

    const v0, 0x7f030005

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060048

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060051

    return v0
.end method
