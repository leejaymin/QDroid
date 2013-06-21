.class final Lcom/tequnique/camerax/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/i;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/k;->a:Lcom/tequnique/camerax/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
