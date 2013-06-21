.class final Lname/kunes/android/launcher/activity/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/l;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/l;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    sget-object v1, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/android/h/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
