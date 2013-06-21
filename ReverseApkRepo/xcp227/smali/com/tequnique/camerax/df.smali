.class final Lcom/tequnique/camerax/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/de;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/de;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/df;->a:Lcom/tequnique/camerax/de;

    iput-object p2, p0, Lcom/tequnique/camerax/df;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tequnique/camerax/df;->a:Lcom/tequnique/camerax/de;

    invoke-static {v0}, Lcom/tequnique/camerax/de;->a(Lcom/tequnique/camerax/de;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->g(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/df;->a:Lcom/tequnique/camerax/de;

    invoke-static {v0}, Lcom/tequnique/camerax/de;->a(Lcom/tequnique/camerax/de;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->h(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/df;->a:Lcom/tequnique/camerax/de;

    invoke-static {v0}, Lcom/tequnique/camerax/de;->a(Lcom/tequnique/camerax/de;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->i(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/df;->a:Lcom/tequnique/camerax/de;

    invoke-static {v0}, Lcom/tequnique/camerax/de;->a(Lcom/tequnique/camerax/de;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->g(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/df;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
