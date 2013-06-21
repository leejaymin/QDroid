.class final Lcom/rubycell/pianisthd/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SettingActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/am;->a:Lcom/rubycell/pianisthd/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "Earn more ruby"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    invoke-static {}, Lcom/tapjoy/av;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/am;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SettingActivity;->c:Landroid/content/Context;

    const-string v1, "This feature is coming soon"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
