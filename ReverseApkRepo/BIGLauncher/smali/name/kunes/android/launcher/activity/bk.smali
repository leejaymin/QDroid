.class final Lname/kunes/android/launcher/activity/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/CallLogActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/CallLogActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bk;->a:Lname/kunes/android/launcher/activity/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bk;->a:Lname/kunes/android/launcher/activity/CallLogActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bk;->a:Lname/kunes/android/launcher/activity/CallLogActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/CallLogActivity;->a(Lname/kunes/android/launcher/activity/CallLogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
