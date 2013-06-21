.class final Lname/kunes/android/launcher/activity/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/EightScreenActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/EightScreenActivity;I)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/cc;->a:Lname/kunes/android/launcher/activity/EightScreenActivity;

    iput p2, p0, Lname/kunes/android/launcher/activity/cc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/cc;->a:Lname/kunes/android/launcher/activity/EightScreenActivity;

    iget v1, p0, Lname/kunes/android/launcher/activity/cc;->b:I

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/activity/EightScreenActivity;->a(I)V

    return-void
.end method
