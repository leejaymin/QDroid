.class final Lname/kunes/android/launcher/activity/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/b/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b/c;->a:Lname/kunes/android/launcher/activity/b/h;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/b/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/c;->a:Lname/kunes/android/launcher/activity/b/h;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/b/h;->a(Lname/kunes/android/launcher/activity/b/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/android/g/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
