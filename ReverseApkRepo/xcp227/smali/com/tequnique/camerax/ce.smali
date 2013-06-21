.class final Lcom/tequnique/camerax/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cc;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ce;->a:Lcom/tequnique/camerax/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
