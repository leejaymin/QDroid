.class final Lname/kunes/android/launcher/activity/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bl;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    check-cast p1, Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bl;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a(Lname/kunes/android/launcher/activity/ApplicationsActivity;)[Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lname/kunes/android/b/i;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lname/kunes/android/launcher/activity/bl;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v0, p2, p1}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/database/Cursor;Landroid/view/View;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bl;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v0, v3}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bl;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v1, v2}, Lname/kunes/android/launcher/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
