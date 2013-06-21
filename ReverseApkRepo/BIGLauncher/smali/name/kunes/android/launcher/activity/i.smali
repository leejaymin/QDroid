.class final Lname/kunes/android/launcher/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/i;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/i;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ContactActivity;->b(Lname/kunes/android/launcher/activity/ContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/i;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-virtual {v1}, Lname/kunes/android/launcher/activity/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->h(Ljava/lang/String;Landroid/content/ContentResolver;)I

    :goto_0
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/i;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ContactActivity;->c(Lname/kunes/android/launcher/activity/ContactActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    sget-object v0, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/i;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-virtual {v1}, Lname/kunes/android/launcher/activity/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/c/c;->g(Ljava/lang/String;Landroid/content/ContentResolver;)I

    goto :goto_0
.end method
