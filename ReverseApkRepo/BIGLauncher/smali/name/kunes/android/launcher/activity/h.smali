.class final Lname/kunes/android/launcher/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ScreensPickerActivity;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreensPickerActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/h;->a:Lname/kunes/android/launcher/activity/ScreensPickerActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/h;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/h;->b:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/launcher/b;->a(Landroid/app/Activity;)Z

    iget-object v0, p0, Lname/kunes/android/launcher/activity/h;->a:Lname/kunes/android/launcher/activity/ScreensPickerActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/h;->b:Landroid/app/Activity;

    invoke-static {v1}, Lname/kunes/android/launcher/a/g;->a(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/activity/ScreensPickerActivity;->a(I)V

    return-void
.end method
