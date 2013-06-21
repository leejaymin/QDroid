.class final Lname/kunes/android/launcher/activity/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bp;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/bp;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bp;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->b(Ljava/lang/String;)V

    return-void
.end method
