.class final Lname/kunes/android/launcher/activity/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PhoneActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ad;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ad;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-class v3, Lname/kunes/android/launcher/activity/FavouritesActivity;

    invoke-static {v0, v1, v2, v3}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
