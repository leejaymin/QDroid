.class final Lname/kunes/android/launcher/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private synthetic b:Lname/kunes/android/launcher/activity/SosActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/SosActivity;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/s;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lname/kunes/android/launcher/activity/s;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->b(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->b(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->b(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->c(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/activity/e/e;

    move-result-object v0

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->d(Lname/kunes/android/launcher/activity/SosActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/s;->a:Z

    iget-object v0, p0, Lname/kunes/android/launcher/activity/s;->b:Lname/kunes/android/launcher/activity/SosActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/SosActivity;->e(Lname/kunes/android/launcher/activity/SosActivity;)V

    :cond_0
    return-void
.end method
