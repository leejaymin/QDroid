.class final Lcom/tequnique/camerax/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cc;

.field private final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cc;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cd;->a:Lcom/tequnique/camerax/cc;

    iput-object p2, p0, Lcom/tequnique/camerax/cd;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cd;->a:Lcom/tequnique/camerax/cc;

    invoke-static {v0}, Lcom/tequnique/camerax/cc;->a(Lcom/tequnique/camerax/cc;)Lcom/tequnique/camerax/SettingsViewSaveActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d(Lcom/tequnique/camerax/SettingsViewSaveActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cd;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
