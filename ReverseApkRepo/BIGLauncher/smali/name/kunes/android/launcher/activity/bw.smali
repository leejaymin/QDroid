.class final Lname/kunes/android/launcher/activity/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageWriteActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bw;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bw;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    const-class v1, Lname/kunes/android/launcher/activity/ContactsPickerActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->b(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method
