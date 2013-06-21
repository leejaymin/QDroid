.class final Lname/kunes/android/launcher/activity/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/av;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/av;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/af;->a:Lname/kunes/android/launcher/activity/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/af;->a:Lname/kunes/android/launcher/activity/av;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/av;->a:Lname/kunes/android/launcher/activity/CallLogDetailActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/CallLogDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/af;->a:Lname/kunes/android/launcher/activity/av;

    iget-object v1, v1, Lname/kunes/android/launcher/activity/av;->a:Lname/kunes/android/launcher/activity/CallLogDetailActivity;

    iget-object v1, v1, Lname/kunes/android/launcher/activity/CallLogDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/android/c/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    iget-object v0, p0, Lname/kunes/android/launcher/activity/af;->a:Lname/kunes/android/launcher/activity/av;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/av;->a:Lname/kunes/android/launcher/activity/CallLogDetailActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/CallLogDetailActivity;->finish()V

    return-void
.end method
