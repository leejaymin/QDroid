.class final Landroid/support/v4/app/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/aa;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/z;)Landroid/app/Notification;
    .locals 5

    iget-object v0, p1, Landroid/support/v4/app/z;->j:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/z;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/z;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/z;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/z;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method
