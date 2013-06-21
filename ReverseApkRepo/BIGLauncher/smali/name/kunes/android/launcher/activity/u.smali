.class final Lname/kunes/android/launcher/activity/u;
.super Lname/kunes/android/widget/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/SosActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/SosActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/u;->a:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-direct {p0}, Lname/kunes/android/widget/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/u;->a:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->c(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/activity/e/e;

    move-result-object v0

    iget-object v1, v0, Lname/kunes/android/launcher/activity/e/e;->a:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v1}, Lname/kunes/android/launcher/activity/e/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/u;->a:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/SosActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/u;->a:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->c(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/activity/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/e;->b()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
