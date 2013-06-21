.class final Lname/kunes/android/launcher/activity/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

.field private final synthetic b:Ljava/util/Vector;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Ljava/util/Vector;I)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bm;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/bm;->b:Ljava/util/Vector;

    iput p3, p0, Lname/kunes/android/launcher/activity/bm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bm;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lname/kunes/android/launcher/activity/bm;->c:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/bm;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v0}, Lname/kunes/android/b/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bm;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v1, p1, v0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/database/Cursor;Landroid/view/View;)V

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bm;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
