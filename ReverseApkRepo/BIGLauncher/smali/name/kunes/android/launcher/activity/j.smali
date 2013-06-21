.class final Lname/kunes/android/launcher/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactActivity;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/launcher/activity/j;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/j;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/activity/b/h;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/j;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-direct {v0, v1, p1}, Lname/kunes/android/launcher/activity/b/h;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    iget-boolean v1, p0, Lname/kunes/android/launcher/activity/j;->b:Z

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/activity/b/h;->a(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/j;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-virtual {v0, v1, p1}, Lname/kunes/android/launcher/activity/ContactActivity;->a(Landroid/view/View;Landroid/database/Cursor;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/j;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ContactActivity;->a(Lname/kunes/android/launcher/activity/ContactActivity;)Lname/kunes/android/widget/AccessibleListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lname/kunes/android/widget/AccessibleListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
