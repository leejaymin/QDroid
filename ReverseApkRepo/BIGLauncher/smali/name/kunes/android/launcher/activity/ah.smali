.class final Lname/kunes/android/launcher/activity/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PhoneActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ah;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 11

    const/4 v10, 0x1

    new-instance v1, Lname/kunes/android/e/a;

    invoke-direct {v1, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    new-instance v2, Lname/kunes/android/c/b;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ah;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-direct {v2, v0, p2}, Lname/kunes/android/c/b;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    invoke-virtual {v2}, Lname/kunes/android/c/b;->d()Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ah;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/PhoneActivity;->getResources()Landroid/content/res/Resources;

    invoke-virtual {v2}, Lname/kunes/android/c/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v0, 0x7f06005d

    invoke-virtual {v2}, Lname/kunes/android/c/b;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    const v0, 0x7f06005e

    :cond_0
    invoke-virtual {v2}, Lname/kunes/android/c/b;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f06005f

    :cond_1
    iget-object v2, p0, Lname/kunes/android/launcher/activity/ah;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-virtual {v2, v0}, Lname/kunes/android/launcher/activity/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    new-instance v6, Lname/kunes/android/launcher/c;

    iget-object v7, p0, Lname/kunes/android/launcher/activity/ah;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    const-string v8, "date"

    invoke-virtual {v1, v8}, Lname/kunes/android/e/a;->d(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lname/kunes/android/launcher/c;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    invoke-virtual {v6}, Lname/kunes/android/launcher/c;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ah;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    const-string v6, "_id"

    invoke-virtual {v1, v6}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lname/kunes/android/launcher/activity/ag;

    invoke-direct {v6, v2, v1}, Lname/kunes/android/launcher/activity/ag;-><init>(Lname/kunes/android/launcher/activity/PhoneActivity;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v10
.end method
