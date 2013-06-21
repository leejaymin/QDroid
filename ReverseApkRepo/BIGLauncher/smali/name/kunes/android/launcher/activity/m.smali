.class final Lname/kunes/android/launcher/activity/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/m;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/m;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-virtual {v1}, Lname/kunes/android/launcher/activity/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->e(Ljava/lang/String;Landroid/content/ContentResolver;)I

    iget-object v0, p0, Lname/kunes/android/launcher/activity/m;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/ContactActivity;->finish()V

    return-void
.end method
