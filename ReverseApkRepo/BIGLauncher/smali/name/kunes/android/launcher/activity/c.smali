.class final Lname/kunes/android/launcher/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageDetailActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/c;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/c;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->b(Lname/kunes/android/launcher/activity/MessageDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lname/kunes/android/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
