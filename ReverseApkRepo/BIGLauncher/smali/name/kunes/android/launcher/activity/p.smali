.class final Lname/kunes/android/launcher/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private synthetic b:Lname/kunes/android/launcher/activity/MessagesActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessagesActivity;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/launcher/activity/p;->b:Lname/kunes/android/launcher/activity/MessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/p;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/p;->b:Lname/kunes/android/launcher/activity/MessagesActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/p;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lname/kunes/android/launcher/activity/c/b;->a(Landroid/app/Activity;Landroid/view/View;Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;Z)V

    const/4 v0, 0x1

    return v0
.end method
