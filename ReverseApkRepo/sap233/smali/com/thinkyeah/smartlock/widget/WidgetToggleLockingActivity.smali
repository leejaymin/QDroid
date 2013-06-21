.class public Lcom/thinkyeah/smartlock/widget/WidgetToggleLockingActivity;
.super Lcom/thinkyeah/smartlock/bn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/bn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/widget/WidgetToggleLockingActivity;->o:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/widget/WidgetToggleLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method protected final g()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/widget/WidgetToggleLockingActivity;->finish()V

    return-void
.end method

.method protected final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/widget/WidgetToggleLockingActivity;->finish()V

    return-void
.end method

.method protected final i()V
    .locals 0

    return-void
.end method
