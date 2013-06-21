.class final Lname/kunes/android/launcher/activity/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/z;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/z;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/z;->b:Landroid/app/Activity;

    const-class v1, Lname/kunes/android/launcher/activity/IconPickerActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->b(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method
