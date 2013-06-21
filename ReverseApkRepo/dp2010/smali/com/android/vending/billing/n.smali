.class final Lcom/android/vending/billing/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/vending/billing/l;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/n;->a:Lcom/android/vending/billing/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
