.class final Lname/kunes/android/launcher/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;I)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/g;->a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    iput p2, p0, Lname/kunes/android/launcher/activity/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/g;->a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;)[Lname/kunes/android/launcher/a/h;

    move-result-object v0

    aget-object v0, v0, p2

    iget v1, p0, Lname/kunes/android/launcher/activity/g;->b:I

    invoke-interface {v0, v1}, Lname/kunes/android/launcher/a/h;->a(I)V

    invoke-interface {v0}, Lname/kunes/android/launcher/a/h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/g;->a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    invoke-interface {v0}, Lname/kunes/android/launcher/a/h;->h()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "setting_button"

    iget v3, p0, Lname/kunes/android/launcher/activity/g;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lname/kunes/android/launcher/activity/g;->a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    iget v2, p0, Lname/kunes/android/launcher/activity/g;->b:I

    invoke-interface {v0}, Lname/kunes/android/launcher/a/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;ILjava/lang/String;)V

    goto :goto_0
.end method
