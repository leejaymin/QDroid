.class public Lname/kunes/android/launcher/activity/ScreensSetupActivity;
.super Lname/kunes/android/activity/ScrollListActivity;


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/ScrollListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->b:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->e()Lname/kunes/android/widget/AccessibleListView;

    move-result-object v6

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030006

    new-instance v1, Lname/kunes/android/launcher/activity/ca;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/ca;-><init>(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)V

    iput-object v1, p0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->b:Landroid/database/Cursor;

    iget-object v3, p0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->b:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    const v1, 0x7f090029

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Lname/kunes/android/launcher/activity/by;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/by;-><init>(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->d()[Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lname/kunes/android/widget/AccessibleListView;->a(Landroid/widget/Adapter;[Landroid/view/View;)V

    return-void
.end method

.method protected a(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected d()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f060129

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06012a

    const/16 v3, 0x42

    new-instance v4, Lname/kunes/android/launcher/activity/bv;

    invoke-direct {v4, p0, p0}, Lname/kunes/android/launcher/activity/bv;-><init>(Lname/kunes/android/launcher/activity/ScreensSetupActivity;Landroid/app/Activity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f06012e

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f060127

    return v0
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f060128

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/ScrollListActivity;->onResume()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void
.end method
