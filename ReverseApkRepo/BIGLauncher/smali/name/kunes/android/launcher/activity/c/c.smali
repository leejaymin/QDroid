.class final Lname/kunes/android/launcher/activity/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private synthetic b:Lname/kunes/android/launcher/activity/c/a;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/c/a;)V
    .locals 2

    iput-object p1, p0, Lname/kunes/android/launcher/activity/c/c;->b:Lname/kunes/android/launcher/activity/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lname/kunes/android/launcher/activity/c/a;->a(Lname/kunes/android/launcher/activity/c/a;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/c/c;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/c;->b:Lname/kunes/android/launcher/activity/c/a;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/c/a;->b(Lname/kunes/android/launcher/activity/c/a;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/c/c;->b:Lname/kunes/android/launcher/activity/c/a;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/c/a;->a(Lname/kunes/android/launcher/activity/c/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/c/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1, v2}, Lname/kunes/android/launcher/activity/c/b;->a(Landroid/app/Activity;Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
