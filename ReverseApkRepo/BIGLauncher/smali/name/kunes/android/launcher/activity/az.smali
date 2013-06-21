.class final Lname/kunes/android/launcher/activity/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/ContactsActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/az;->a:Lname/kunes/android/launcher/activity/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 5

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v0, "_id"

    invoke-virtual {v1, v0}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "display_name"

    invoke-virtual {v1, v3}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lname/kunes/android/launcher/b/q;->f:Lname/kunes/android/launcher/b/c;

    iget-object v4, p0, Lname/kunes/android/launcher/activity/az;->a:Lname/kunes/android/launcher/activity/ContactsActivity;

    invoke-virtual {v3, v2, v4}, Lname/kunes/android/launcher/b/c;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lname/kunes/android/launcher/activity/ax;

    invoke-direct {v0, p0, v2}, Lname/kunes/android/launcher/activity/ax;-><init>(Lname/kunes/android/launcher/activity/az;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    return v0
.end method
