.class final Lcom/tequnique/camerax/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/SettingsViewSaveActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/SettingsViewSaveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bx;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tequnique/camerax/bx;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tequnique/camerax/bx;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a(Lcom/tequnique/camerax/SettingsViewSaveActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a(Lcom/tequnique/camerax/SettingsViewSaveActivity;ILjava/lang/String;)V

    return-void
.end method
