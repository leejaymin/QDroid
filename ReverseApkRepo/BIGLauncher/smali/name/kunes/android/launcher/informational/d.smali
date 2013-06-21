.class final Lname/kunes/android/launcher/informational/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/informational/DemoInformationActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/informational/DemoInformationActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/informational/d;->a:Lname/kunes/android/launcher/informational/DemoInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/informational/d;->a:Lname/kunes/android/launcher/informational/DemoInformationActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/informational/DemoInformationActivity;->finish()V

    return-void
.end method
