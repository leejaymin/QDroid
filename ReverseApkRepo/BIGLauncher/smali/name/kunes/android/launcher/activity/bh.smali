.class final Lname/kunes/android/launcher/activity/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/a;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/a;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bh;->a:Lname/kunes/android/launcher/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bh;->a:Lname/kunes/android/launcher/activity/a;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/a;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bh;->a:Lname/kunes/android/launcher/activity/a;

    iget-object v1, v1, Lname/kunes/android/launcher/activity/a;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->a(Lname/kunes/android/launcher/activity/MessageDetailActivity;)Lname/kunes/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lname/kunes/android/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/j;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bh;->a:Lname/kunes/android/launcher/activity/a;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/a;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->finish()V

    return-void
.end method
