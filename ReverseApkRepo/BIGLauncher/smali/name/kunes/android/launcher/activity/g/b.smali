.class final Lname/kunes/android/launcher/activity/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/g/d;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/g/d;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/g/b;->a:Lname/kunes/android/launcher/activity/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g/b;->a:Lname/kunes/android/launcher/activity/g/d;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/g/d;->a(Lname/kunes/android/launcher/activity/g/d;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/g/b;->a:Lname/kunes/android/launcher/activity/g/d;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/g/d;->b(Lname/kunes/android/launcher/activity/g/d;)Lname/kunes/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lname/kunes/android/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
