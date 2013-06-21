.class final Lname/kunes/android/launcher/activity/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/az;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/az;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ax;->a:Lname/kunes/android/launcher/activity/az;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/ax;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ax;->a:Lname/kunes/android/launcher/activity/az;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/az;->a:Lname/kunes/android/launcher/activity/ContactsActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/activity/ContactsActivity;->b(Ljava/lang/String;)V

    return-void
.end method
