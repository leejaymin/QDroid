.class final Lcom/rubycell/pianisthd/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SettingActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/an;->a:Lcom/rubycell/pianisthd/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x1f4

    const-string v0, "Buy more item"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    new-instance v0, Lcom/rubycell/pianisthd/b/b;

    iget-object v1, p0, Lcom/rubycell/pianisthd/an;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v1, v1, Lcom/rubycell/pianisthd/SettingActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/rubycell/pianisthd/an;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v2, v2, Lcom/rubycell/pianisthd/SettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/b/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/tapjoy/av;->a(Lcom/tapjoy/ap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/an;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SettingActivity;->c:Landroid/content/Context;

    const-string v1, "Your SD card is unmounted or read-only"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/an;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SettingActivity;->c:Landroid/content/Context;

    const-string v1, "This feature is coming soon"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
