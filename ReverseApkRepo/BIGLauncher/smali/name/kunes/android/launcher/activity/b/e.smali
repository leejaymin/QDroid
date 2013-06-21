.class final Lname/kunes/android/launcher/activity/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/b/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b/e;->a:Lname/kunes/android/launcher/activity/b/h;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/b/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/activity/b/i;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/e;->a:Lname/kunes/android/launcher/activity/b/h;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/b/h;->a(Lname/kunes/android/launcher/activity/b/h;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/b/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lname/kunes/android/launcher/activity/b/i;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/b/i;->a()V

    return-void
.end method
