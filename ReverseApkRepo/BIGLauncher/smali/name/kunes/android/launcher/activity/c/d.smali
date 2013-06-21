.class final Lname/kunes/android/launcher/activity/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/c/a;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/c/a;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/c/d;->a:Lname/kunes/android/launcher/activity/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/d;->a:Lname/kunes/android/launcher/activity/c/a;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/c/a;->a(Lname/kunes/android/launcher/activity/c/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lname/kunes/android/h/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
