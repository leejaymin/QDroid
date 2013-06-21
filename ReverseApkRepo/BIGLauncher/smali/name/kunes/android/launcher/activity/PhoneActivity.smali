.class public Lname/kunes/android/launcher/activity/PhoneActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/PhoneActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v6

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030006

    invoke-static {p0}, Lname/kunes/android/c/a;->b(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v7

    new-array v5, v8, [I

    const v1, 0x7f090029

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Lname/kunes/android/launcher/activity/ah;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/ah;-><init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    const v2, 0x7f060004

    const/16 v3, 0x18

    new-instance v4, Lname/kunes/android/launcher/activity/ac;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/ac;-><init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f060007

    const/16 v3, 0x1b

    new-instance v4, Lname/kunes/android/launcher/activity/ad;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/ad;-><init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    const v3, 0x7f060005

    const/16 v4, 0x19

    new-instance v5, Lname/kunes/android/launcher/activity/ab;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/activity/ab;-><init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V

    invoke-static {p0, v3, v4, v5}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f060006

    const/16 v4, 0x1a

    new-instance v5, Lname/kunes/android/launcher/activity/ae;

    invoke-direct {v5, p0}, Lname/kunes/android/launcher/activity/ae;-><init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V

    invoke-static {p0, v3, v4, v5}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f060008

    invoke-static {p0, v3}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/PhoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/c/a;->a(Landroid/content/ContentResolver;)I

    return-void
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060043

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f06004c

    return v0
.end method
